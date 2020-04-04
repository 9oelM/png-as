// @ts-ignore
@external('__png_as_external', 'logString')
declare function logString(str: string): void;
// @ts-ignore
@external('__png_as_external', 'logNumber')
declare function logNumber(str: i32): void;
// @ts-ignore
@external('__png_as_external', 'logArray')
declare function logArray(array: Uint8Array): void;

export function log<T>(value: T): void {
  if (isString<T>()){
    // @ts-ignore
    logString(value);
  } else if (isInteger<T>()) {
    // @ts-ignore
    logNumber(value);
  } else if (isArray<T>()) {
    // @ts-ignore
    logArray(value);
  } else {
    // @ts-ignore
    logArray(value);
    logString('You are trying to log an invalid type');
  }
}
