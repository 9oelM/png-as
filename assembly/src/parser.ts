import { validateHeader } from './header';
import { IEND, IHDR, IDAT, PLTE, gAMA, sRGB } from './chunkTypes';
import { readNext32BitsNum as __readNext32BitsNum } from './read';
import { log } from './util/log';

// @ts-ignore
@external('__png_as_external', 'addNums')
declare function addNums(num: u8, num1: u8): u8;
// @ts-ignore
@external('__png_as_external', 'zlibDeflate')
declare function deflate(bytes: Uint8Array): Uint8Array;

export class Parser<T> {
  position: u32 = 0;
  chunkTypes: Array<string> = [];
  IHDR: IHDR;
  PLTE: PLTE;
  sRGB: sRGB;
  gAMA: gAMA;

  constructor(
    private buffer: T,
  ){
    // free compile time checks
    if (!isArrayLike(buffer)) ERROR("buffer parameter must be ArrayLike");
    // @ts-ignore: T is arraylike
    if (!isInteger<valueof<T>>()) ERROR("buffer must be an array of u8 values.");
    // @ts-ignore: T is arraylike
    if (alignof<valueof<T>>() !== 0) ERROR("buffer must be an array of u8 values.");
  }

  private readNext8bits(): u8 {
    // @ts-ignore: opt into unchecked if it's defined
    return isDefined(unchecked(this.buffer[0]))
      // @ts-ignore: unchecked array access is defined
      ? unchecked(this.buffer[++this.position])
      // @ts-ignore: type safe array access
      : this.buffer[++this.position];
  }

  private readNext32BitsNum(): u32 {
    return __readNext32BitsNum(
      this.readNext8bits(),
      this.readNext8bits(),
      this.readNext8bits(),
      this.readNext8bits(),
    );
  }

  main(): i8 {
    let num = addNums(1, 2);
    log(num);
    this.position = validateHeader<T>(this.buffer, this.position);

    let chunkType = <u32>0;
    let count = 0;

    while (count != 50) {
      const chunkDataLen = this.readNext32BitsNum();
      chunkType = this.readNext32BitsNum();
      if (chunkType == IHDR.TYPE) {
        this.IHDR = new IHDR(
          this.readNext32BitsNum(),
          this.readNext32BitsNum(),
          this.readNext8bits(),
          this.readNext8bits(),
          this.readNext8bits(),
          this.readNext8bits(),
          this.readNext8bits(),
        );
      }
      else if (chunkType == PLTE.TYPE) {
        this.PLTE = new PLTE(
          this.readNext8bits(),
          this.readNext8bits(),
          this.readNext8bits(),
        );
      }
      else if (chunkType == gAMA.TYPE) {
        this.gAMA = new gAMA(this.readNext32BitsNum());
      }
      else if (chunkType == sRGB.TYPE) {
        this.sRGB = new sRGB(this.readNext8bits());
      }
      /**
       * @todo implement IDAT
       */
      // else if (chunkType == IDAT.TYPE) {

      // }
      /**
       * This chunk is not important
       */
      else {
        this.position += chunkDataLen;
      }

      log('chunkType ' + chunkType)
      log('chunkdatalen: ' + chunkDataLen.toString());
      /**
       * Skip CRC
       */
      this.position += 4;
      ++count;
    }
    return 1;
  }
}