import { validateHeader } from './header';
import { IEND, IHDR, IDAT, PLTE, gAMA, sRGB } from './chunkTypes';
import { readNext32BitsNum as __readNext32BitsNum, readNext32BitsStr as __readNext32BitsStr } from './read';
import { log } from './util/log';

// @ts-ignore
@external('__png_as_external', 'zlibDeflate')
declare function deflate(bytes: Uint8Array): Uint8Array;
// @ts-ignore
@external('__png_as_external', 'test')
declare function test(bytes: Uint8Array): Uint8Array;

export class Parser {
  position: u32 = 0;
  chunkTypes: Array<string> = [];
  IHDR: IHDR;
  PLTE: PLTE;
  sRGB: sRGB;
  gAMA: gAMA;

  constructor(
    private buffer: Uint8Array,
  ){}

  private readNext8bits(): u8 {
    return this.buffer[++this.position];
  }

  private readNext32BitsNum(): u32 {
    return __readNext32BitsNum(
      this.readNext8bits(),
      this.readNext8bits(),
      this.readNext8bits(),
      this.readNext8bits(),
    );
  }

  private readNext32BitsStr(): string {
    return __readNext32BitsStr(
      this.readNext8bits(),
      this.readNext8bits(),
      this.readNext8bits(),
      this.readNext8bits(),
    )
  }

  public main(): i8 {
    this.position = validateHeader(this.buffer, this.position);

    let chunkType = ''

    while (chunkType != IEND.TYPE) {
      const chunkDataLen: u32 = this.readNext32BitsNum();
      chunkType = this.readNext32BitsStr();
      log('chunktype: ' + chunkType)
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
      else if (chunkType == IDAT.TYPE) {
        // const IDAT = new IDAT()
        const h0 = this.readNext8bits()
        const h1 = this.readNext8bits()
        log(h0)
        log(h1)
      }
      /**
       * This chunk is not important
       */
      else {
        this.position += chunkDataLen;
      }
      /**
       * Skip CRC
       */
      this.position += 4;
    }
    return 1;
  }
}