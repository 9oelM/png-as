import { readFileSync, readFile } from 'fs';
import { instantiate, ASUtil, ResultObject } from 'assemblyscript/lib/loader';
import * as path from 'path';
import { readFileAsync } from './util';
import zlibC, { ZlibC } from 'zlib-c';

type PngAsWasm = ResultObject & { exports: ASUtil & { Parser: Parser; UInt8ArrayID: number; } }; 

let wasmRefOutside: ASUtil & {
  Parser: any;
  UInt8ArrayID: number;
};
let zlibCRefOutside: ZlibC;

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
      logArray(ptr: number): void {
        console.log(wasmRefOutside?.__getUint8Array(ptr));
      },
      logNumber: console.log,
      exit(num: number): void {
        process.exit(num);
      },
      zlibDeflate(buffer: number): number {  
        const { __retain, __allocArray } = wasmRefOutside;
        const deflated = zlibCRefOutside.deflate(wasmRefOutside.__getUint8Array(buffer));
        const ptr = __retain(__allocArray(wasmRefOutside.UInt8ArrayID, deflated));

        return ptr;
      },
      test(a: Uint8Array): number {
        const { __release, __retain, __allocArray } = wasmRefOutside!;
        const mul = a.map((a) => a * 2);
        const ptr = __retain(__allocArray(wasmRefOutside!.UInt8ArrayID, mul));

        console.log(ptr)
        return ptr;
      }
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
  }).then(async ({ exports: wasm }: PngAsWasm) => {
    zlibCRefOutside = await zlibC.initialize();
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
