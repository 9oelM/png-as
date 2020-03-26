// @ts-ignore
@external('__png_as_external', 'logString')
declare function logString(str: string): void;
// @ts-ignore
@external('__png_as_external', 'logNumber')
declare function logNumber(str: i32): void;

export function log<T>(value: T): void {
  if (isString<T>()){
    // @ts-ignore
    logString(value);
  } else if (isInteger<T>()) {
    // @ts-ignore
    logNumber(value);
  } else {
    logString('You are trying to log an invalid type');
  }
}
