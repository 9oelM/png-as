import { readFileSync, readFile } from 'fs';
import { instantiate, ASUtil } from 'assemblyscript/lib/loader';
import * as path from 'path';
import { readFileAsync } from './util';
import * as myZlib from 'zlib-c';

let wasmRefOutside: ASUtil & {
  Parser: any;
  UInt8ArrayID: number;
} | undefined;

const wasmImportPromise = readFileAsync(path.join(__dirname, "..", "/out/main.wasm"))
const img = readFileAsync(path.join(__dirname, "..", "/img/img1.png"));

interface Parser {
  main(): number;
  new(arrPtr: number): Parser;
}

wasmImportPromise.then((wasm) => {
  WebAssembly.validate(wasm);
  instantiate<{
    Parser: Parser;
    UInt8ArrayID: number;
  }>(wasm, {
    __png_as_external: {
      logString(ptr: number): void {
        console.log(wasmRefOutside?.__getString(ptr));
      },
      logNumber: console.log,
      exit(num: number): void {
        process.exit(num);
      },
      addNums(num: number, num1: number): number {
        return num + num1;
      },
      // zlibDeflate(base_compressed: Uint8Array): Uint8Array {
      //   return deflate_decode_raw(base_compressed);
      // }
    },
    env: {
      memory: new WebAssembly.Memory({
        initial: 256,
        maximum: 1024,
      }),
      table: new WebAssembly.Table({
        initial: 33,
        maximum: 33,
        element: 'anyfunc'
      }),
      abort: (msg: number, file: number, line: number, column: number) => {
        console.error("abort called at" + file + " " + line + ":" + column);
      }
      // seed?: () => number,
      // trace?(msg: number, numArgs?: number, ...args: number[]): void
    },
  }).then(async ({ exports: wasm }: any) => {
    console.log(myZlib)
    // const buffer = Buffer.from('Hello World');
    // const deflated = myZlib.deflate(buffer);
    // console.log(myZlib.inflate(deflated).equals(buffer));

    wasmRefOutside = wasm;
    const { Parser, __release, __retain, __allocArray } = wasm;
    const pngImage: Buffer = await img;
    const decimalValuesArray: Uint8Array = new Uint8Array([...pngImage]);
    const ptr = __retain(__allocArray(wasm.UInt8ArrayID, decimalValuesArray));
    const parser: Parser = new Parser(ptr);
    const result: number = parser.main();
    __release(ptr);
    // @ts-ignore
    __release(parser);
    process.exit(result)
  }).catch(console.log);  
})
