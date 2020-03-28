import { log } from './util/log';
import { exit } from './util/exit';

const HEADER = [137,  80,  78,  71,  13,  10,  26,  10] as StaticArray<u8>;
const HEADER_BITS = 8;

export function validateHeader<T>(buffer: T, position: u32): u32 {
  for (let i = 0; i < HEADER_BITS; i++) {
    // @ts-ignore: safe definition checked
    let value = isDefined(unchecked(buffer[0]))
      // @ts-ignore: unchecked is defined
      ? unchecked(buffer[i])
      // @ts-ignore: use regular array access
      : buffer[i];
    if (value!= unchecked(HEADER[i])) {
      log('Invalid header bit at ' + i.toString() + 'th bit. Aborting...');

      exit(-1);
      return -1;
    }
  }

  return 7;
}