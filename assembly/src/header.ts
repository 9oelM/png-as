import { log } from './util/log';
import { exit } from './util/exit';

export function validateHeader(buffer: Uint8Array, position: u32): u32 {
  const HEADER: StaticArray<u8> = [137,  80,  78,  71,  13,  10,  26,  10] as StaticArray<u8>;
  const HEADER_BITS = 8;
  for (let i = 0; i < HEADER_BITS; i++) {
    if (unchecked(buffer[i]) != unchecked(HEADER[i])) {
      log('Invalid header bit at ' + i.toString() + 'th bit. Aborting...');

      exit(-1);
      return -1;
    }
  }

  return 7;
}