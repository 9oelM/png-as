import { log } from './util/log';
import { exit } from './util/exit';

const HEADER = [137,  80,  78,  71,  13,  10,  26,  10] as StaticArray<u8>;
const HEADER_BITS = 8;

export function validateHeader<T>(buffer: T, position: u32): u32 {
  if (ASC_FEATURE_SIMD) {
    let header = i16x8(137,  80,  78,  71,  13,  10,  26,  10);
    // todo: Refactor this out into getSIMDfrom<T>(buffer: T)
    let value = isDefined(unchecked(buffer[0]))
      ? i16x8(
          unchecked(buffer[0]),
          unchecked(buffer[1]),
          unchecked(buffer[2]),
          unchecked(buffer[3]),
          unchecked(buffer[4]),
          unchecked(buffer[5]),
          unchecked(buffer[6]),
          unchecked(buffer[7]),
        )
      : i16x8(
          buffer[0],
          buffer[1],
          buffer[2],
          buffer[3],
          buffer[4],
          buffer[5],
          buffer[6],
          buffer[7],
        );
    if (value != header) {
      log('Invalid header. Aborting...');
      exit(-1);
      return -1;
    }
  } else {
    for (let i = 0; i < HEADER_BITS; i++) {
      // @ts-ignore: safe definition checked, will become inlined by the compiler
      let value = isDefined(unchecked(buffer[0]))
        // @ts-ignore: unchecked is defined
        ? unchecked(buffer[i])
        // @ts-ignore: use regular array access
        : buffer[i];
      if (value != unchecked(HEADER[i])) {
        log('Invalid header bit at ' + i.toString() + 'th byte. Aborting...');
        exit(-1);
        return -1;
      }
    }
  }
  return 7;
}