/**
 * Combine 4 of 8 bits of int to make 32 bits of int
 */
export function readNext32BitsNum(b0: u8, b1: u8, b2: u8, b3: u8): u32 {
  return b0 << 24 | b1 << 16 | b2 << 8 | b3;
}

export function readNext32BitsStr(b0: u8, b1: u8, b2: u8, b3: u8): string {
  return String.fromCharCodes([b0, b1, b2, b3]);
}
