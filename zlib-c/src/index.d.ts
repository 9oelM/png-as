declare module 'zlib-c' {
  export interface ZlibC {
    inflate(buffer: Uint8Array): Uint8Array;
    deflate(buffer: Uint8Array): Uint8Array;
  }

  export function initialize(): Promise<ZlibC>;
}