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
  private static COMPRESSION_METHOD: u8 = 0;
  private static FILTER_METHOD: u8 = 0;
  public bitDepths: StaticArray<u8> = [];

  constructor(
    public width: u32,
    public height: u32,
    public bitDepth: u8,
    public colorType: u8,
    public compressionMethod: u8,
    public filterMethod: u8,
    public interlaceMethod: u8,
  ) {
    const bitDepths = IHDR.GET_COLOR_TYPES_TO_BITS_DEPTH(colorType);
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

export namespace IHDR {
  export const TYPE = <u32>0x52444849; // : string = 'IHDR';
  export const BYTE_LENGTH = <u8>13;

  // @ts-ignore
  @inline
  export function GET_COLOR_TYPES_TO_BITS_DEPTH(input: u8): StaticArray<u8> {
    switch (input) {
      case 0: return [1, 2, 4, 8, 16];
      case 3: return [1, 2, 4, 8];
      case 2:
      case 4:
      case 6: return [8, 16];
      default: assert(false);
    }
  }
}

export namespace IDAT {
  export const TYPE = <u32>0x54414449; // : string = 'IDAT';
  export const BYTE_LENGTH = <u8>13;
}

export namespace IEND {
  export const TYPE = <u32>0x444E4549; // : string = 'IEND';
}

/*
  This chunk must appear for color type 3, and can appear for color types 2 and 6; it must not appear for color types 0 and 4. If this chunk does appear, it must precede the first IDAT chunk. There must not be more than one PLTE chunk.

  For color type 3 (indexed color), the PLTE chunk is required. The first entry in PLTE is referenced by pixel value 0, the second by pixel value 1, etc. The number of palette entries must not exceed the range that can be represented in the image bit depth (for example, 24 = 16 for a bit depth of 4). It is permissible to have fewer entries than the bit depth would allow. In that case, any out-of-range pixel value found in the image data is an error.

  For color types 2 and 6 (truecolor and truecolor with alpha), the PLTE chunk is optional. If present, it provides a suggested set of from 1 to 256 colors to which the truecolor image can be quantized if the viewer cannot display truecolor directly. If neither PLTE nor sPLT is present, such a viewer will need to select colors on its own, but it is often preferable for this to be done once by the encoder. (See Recommendations for Encoders: Suggested palettes.) 
*/
export class PLTE {
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

export namespace PLTE {
  export const TYPE = <u8>0x45544C50;
  export const BYTE_LENGTH = <u8>3;
}

export class sRGB {
  constructor(
    public renderingIntent: u8,
  ) {
    // valid values are 0, 1, 2, and 3
    if (renderingIntent & 0xFC) {
      log(renderingIntent.toString() + ' is not a valid rendering intent for sRGB');
    }
  }
}

export namespace sRGB {
  export const TYPE = <u32>0x42475273;
  export const BYTE_LENGTH = <u8>1;
}

export class gAMA {
  constructor(
    public gamma: u32,
  ) {}

  getGamma(): u32 {
    return this.gamma * 100000;
  }
}

export namespace gAMA {
  export const TYPE = <u32>0x414d4167;
  export const BYTE_LENGTH = <u8>4;
}
