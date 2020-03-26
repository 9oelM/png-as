const { watch, series, dest } = require('gulp');
const { exec } = require('child_process');
const ts = require('gulp-typescript');
const tsProject = ts.createProject('tsconfig.json');
/*
  Runtime variants:

  "--runtime", "full" (default)
    A proper memory manager and reference-counting based garbage collector, with runtime interfaces
    being exported to the host for being able to create managed objects externally.

  "--runtime", "half"
    The same as full but without any exports, i.e. where creating objects externally is not required.
    This allows the optimizer to eliminate parts of the runtime that are not needed.

  "--runtime", "stub"
    A minimalist arena memory manager without any means of freeing up memory again, but the same external
    interface as full. Useful for very short-lived programs or programs with hardly any memory footprint,
    while keeping the option to switch to full without any further changes. No garbage collection.

  "--runtime", "none"
    The same as stub but without any exports, for the same reasons as explained in half. Essentially
    evaporates entirely after optimizations.

    For more information see: https://docs.assemblyscript.org/details/runtime
*/
const ascFiles = ['assembly/**/*.ts'];
const nodeFiles = ['src/**/*.ts'];
const nodeEntryFile = 'dist/main.js';
// Don't know why it's working this way
const tscDestFolder = 'dist/dist';

const build = callback => {
  const asc = require("assemblyscript/bin/asc");
  asc.main([
    "index.ts",
    "--baseDir", "assembly",
    "--binaryFile", "../out/main.wasm",
    "--sourceMap",
    "--measure",
    "--runtime", "full",
    "--optimize",
    "--validate",
    "--textFile", "../out/main.wat",
  ], callback);
};

const tsc = () => tsProject.src().pipe(tsProject()).js.pipe(dest(tscDestFolder));

const node = (cb) => exec(`node ${nodeEntryFile}`, function (err, stdout, stderr) {
  if (stdout) console.log(stdout);
  if (stderr) console.log(stderr);
  if (err) cb(err);
});

const runEntireDevProcess = series(build, tsc, node);

exports.build = build;
exports.tsc = tsc;
exports.node = node;
exports.default = () => {
  runEntireDevProcess();
  watch([...ascFiles, ...nodeFiles], runEntireDevProcess);
}
