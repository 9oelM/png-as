// @ts-ignore
@external('__png_as_external', 'exit')
declare function _exit(num: i8): void;

export function exit(num: i8): void {
  _exit(num);
}
