"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __generator = (this && this.__generator) || function (thisArg, body) {
    var _ = { label: 0, sent: function() { if (t[0] & 1) throw t[1]; return t[1]; }, trys: [], ops: [] }, f, y, t, g;
    return g = { next: verb(0), "throw": verb(1), "return": verb(2) }, typeof Symbol === "function" && (g[Symbol.iterator] = function() { return this; }), g;
    function verb(n) { return function (v) { return step([n, v]); }; }
    function step(op) {
        if (f) throw new TypeError("Generator is already executing.");
        while (_) try {
            if (f = 1, y && (t = op[0] & 2 ? y["return"] : op[0] ? y["throw"] || ((t = y["return"]) && t.call(y), 0) : y.next) && !(t = t.call(y, op[1])).done) return t;
            if (y = 0, t) op = [op[0] & 2, t.value];
            switch (op[0]) {
                case 0: case 1: t = op; break;
                case 4: _.label++; return { value: op[1], done: false };
                case 5: _.label++; y = op[1]; op = [0]; continue;
                case 7: op = _.ops.pop(); _.trys.pop(); continue;
                default:
                    if (!(t = _.trys, t = t.length > 0 && t[t.length - 1]) && (op[0] === 6 || op[0] === 2)) { _ = 0; continue; }
                    if (op[0] === 3 && (!t || (op[1] > t[0] && op[1] < t[3]))) { _.label = op[1]; break; }
                    if (op[0] === 6 && _.label < t[1]) { _.label = t[1]; t = op; break; }
                    if (t && _.label < t[2]) { _.label = t[2]; _.ops.push(op); break; }
                    if (t[2]) _.ops.pop();
                    _.trys.pop(); continue;
            }
            op = body.call(thisArg, _);
        } catch (e) { op = [6, e]; y = 0; } finally { f = t = 0; }
        if (op[0] & 5) throw op[1]; return { value: op[0] ? op[1] : void 0, done: true };
    }
};
var __read = (this && this.__read) || function (o, n) {
    var m = typeof Symbol === "function" && o[Symbol.iterator];
    if (!m) return o;
    var i = m.call(o), r, ar = [], e;
    try {
        while ((n === void 0 || n-- > 0) && !(r = i.next()).done) ar.push(r.value);
    }
    catch (error) { e = { error: error }; }
    finally {
        try {
            if (r && !r.done && (m = i["return"])) m.call(i);
        }
        finally { if (e) throw e.error; }
    }
    return ar;
};
var __spread = (this && this.__spread) || function () {
    for (var ar = [], i = 0; i < arguments.length; i++) ar = ar.concat(__read(arguments[i]));
    return ar;
};
var __importStar = (this && this.__importStar) || function (mod) {
    if (mod && mod.__esModule) return mod;
    var result = {};
    if (mod != null) for (var k in mod) if (Object.hasOwnProperty.call(mod, k)) result[k] = mod[k];
    result["default"] = mod;
    return result;
};
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
var loader_1 = require("assemblyscript/lib/loader");
var path = __importStar(require("path"));
var util_1 = require("./util");
var zlib_c_1 = __importDefault(require("zlib-c"));
var wasmRefOutside;
var zlibCRefOutside;
var wasmImportPromise = util_1.readFileAsync(path.join(__dirname, "..", "/out/main.wasm"));
var img = util_1.readFileAsync(path.join(__dirname, "..", "/img/img1.png"));
wasmImportPromise.then(function (wasm) {
    WebAssembly.validate(wasm);
    loader_1.instantiate(wasm, {
        __png_as_external: {
            logString: function (ptr) {
                console.log(wasmRefOutside === null || wasmRefOutside === void 0 ? void 0 : wasmRefOutside.__getString(ptr));
            },
            logArray: function (ptr) {
                console.log(wasmRefOutside === null || wasmRefOutside === void 0 ? void 0 : wasmRefOutside.__getUint8Array(ptr));
            },
            logNumber: console.log,
            exit: function (num) {
                process.exit(num);
            },
            zlibDeflate: function (buffer) {
                var __retain = wasmRefOutside.__retain, __allocArray = wasmRefOutside.__allocArray;
                var deflated = zlibCRefOutside.deflate(wasmRefOutside.__getUint8Array(buffer));
                var ptr = __retain(__allocArray(wasmRefOutside.UInt8ArrayID, deflated));
                return ptr;
            },
            test: function (a) {
                var _a = wasmRefOutside, __release = _a.__release, __retain = _a.__retain, __allocArray = _a.__allocArray;
                var mul = a.map(function (a) { return a * 2; });
                var ptr = __retain(__allocArray(wasmRefOutside.UInt8ArrayID, mul));
                console.log(ptr);
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
            abort: function (msg, file, line, column) {
                console.error("abort called at" + file + " " + line + ":" + column);
            }
            // seed?: () => number,
            // trace?(msg: number, numArgs?: number, ...args: number[]): void
        },
    }).then(function (_a) {
        var wasm = _a.exports;
        return __awaiter(void 0, void 0, void 0, function () {
            var Parser, __release, __retain, __allocArray, pngImage, decimalValuesArray, ptr, parser, result;
            return __generator(this, function (_b) {
                switch (_b.label) {
                    case 0: return [4 /*yield*/, zlib_c_1.default.initialize()];
                    case 1:
                        zlibCRefOutside = _b.sent();
                        wasmRefOutside = wasm;
                        Parser = wasm.Parser, __release = wasm.__release, __retain = wasm.__retain, __allocArray = wasm.__allocArray;
                        return [4 /*yield*/, img];
                    case 2:
                        pngImage = _b.sent();
                        decimalValuesArray = new Uint8Array(__spread(pngImage));
                        ptr = __retain(__allocArray(wasm.UInt8ArrayID, decimalValuesArray));
                        parser = new Parser(ptr);
                        result = parser.main();
                        __release(ptr);
                        // @ts-ignore
                        __release(parser);
                        process.exit(result);
                        return [2 /*return*/];
                }
            });
        });
    }).catch(console.log);
});
