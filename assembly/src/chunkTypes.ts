import { log } from './util/log';

/*
  Width:              4 bytes
  Height:             4 bytes
  Bit depth:          1 byte
  Color type:         1 byte
  Compression method: 1 byte
  Filter method:      1 byte
  Interlace method:   1 byte
*/
export class IHDR {
  static TYPE: string = 'IHDR';
  static BYTE_LENGTH: u8 = 13;
  private static COMPRESSION_METHOD: u8 = 0;
  private static FILTER_METHOD: u8 = 0;
  private static COLOR_TYPES_TO_BIT_DEPTHS: Map<u8, StaticArray<u8>>;

  public bitDepths: StaticArray<u8>;
  constructor(
    public width: u32,
    public height: u32,
    public bitDepth: u8,
    public colorType: u8,
    public compressionMethod: u8, 
    public filterMethod: u8,
    public interlaceMethod: u8,
  ) {
    IHDR.COLOR_TYPES_TO_BIT_DEPTHS.set(0, [1, 2, 4, 8, 16])
    IHDR.COLOR_TYPES_TO_BIT_DEPTHS.set(2, [8, 16])
    IHDR.COLOR_TYPES_TO_BIT_DEPTHS.set(3, [1, 2, 4, 8])
    IHDR.COLOR_TYPES_TO_BIT_DEPTHS.set(4, [8, 16])
    IHDR.COLOR_TYPES_TO_BIT_DEPTHS.set(6, [8, 16])
    
    const bitDepths: StaticArray<u8> = IHDR.COLOR_TYPES_TO_BIT_DEPTHS.get(colorType);
    if (bitDepths != null) {
      this.bitDepths = bitDepths;
    } else {
      log(colorType.toString() + ' is not a supported color type');
    }

    if (IHDR.COMPRESSION_METHOD != compressionMethod) {
      log(compressionMethod.toString() + ' is not a supported color type');
    }

    if (IHDR.FILTER_METHOD != filterMethod) {
      log(filterMethod.toString() + ' is not a supported color type');
    }
  }
}

export class IEND {
  static TYPE: string = 'IEND';
}

export class IDAT {
  static TYPE: string = 'IDAT';
  static calcByteLEngth(IDATChunkLength: u32): u32 {
    /**
     * 1 bit = compression method
     * 1 bit = check bit
     * chunkLength - 6 bits = compressed data blocks
     * 4 bit = check value
     */
    return IDATChunkLength - 6;
  }
  constructor(
    public zlibCompressionMethod: u8,
    public checkBit: u8,
    public BYTE_LENGTH: u32, 
  ) {}


}

/*
  This chunk must appear for color type 3, and can appear for color types 2 and 6; it must not appear for color types 0 and 4. If this chunk does appear, it must precede the first IDAT chunk. There must not be more than one PLTE chunk.

  For color type 3 (indexed color), the PLTE chunk is required. The first entry in PLTE is referenced by pixel value 0, the second by pixel value 1, etc. The number of palette entries must not exceed the range that can be represented in the image bit depth (for example, 24 = 16 for a bit depth of 4). It is permissible to have fewer entries than the bit depth would allow. In that case, any out-of-range pixel value found in the image data is an error.

  For color types 2 and 6 (truecolor and truecolor with alpha), the PLTE chunk is optional. If present, it provides a suggested set of from 1 to 256 colors to which the truecolor image can be quantized if the viewer cannot display truecolor directly. If neither PLTE nor sPLT is present, such a viewer will need to select colors on its own, but it is often preferable for this to be done once by the encoder. (See Recommendations for Encoders: Suggested palettes.) 
*/
export class PLTE {
  static TYPE: string = 'PLTE';
  static BYTE_LENGTH: u8 = 3;

  constructor(
    public R: u8,
    public G: u8,
    public B: u8,
    public colorType: u8 = 3,
  ) {
    if (colorType == 0 || colorType == 4) {
      log(colorType.toString() + ' is not a supported color type for PETE');
    }
  };
}

export class sRGB {
  static TYPE: string = 'sRGB';
  static BYTE_LENGTH: u8 = 1;

  constructor(
    public renderingIntent: u8,
  ) {
    if (![0, 1, 2, 3].includes(renderingIntent)) {
      log(renderingIntent.toString() + ' is not a valid rendering intent for sRGB');
    }
  }
}

export class gAMA {
  static TYPE: string = 'gAMA';
  static BYTE_LENGTH: u8 = 4;

  constructor(
    public gamma: u32,
  ) {}

  getGamma(): u32 {
    return this.gamma * 100000;
  }
}