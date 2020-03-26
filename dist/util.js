"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var fs_1 = require("fs");
function readFileAsync(filename, encoding) {
    return new Promise(function (resolve, reject) {
        fs_1.readFile(filename, { encoding: encoding }, function (err, data) {
            if (err)
                reject(err);
            else
                resolve(typeof data === 'string' ? new Buffer(data) : data);
        });
    });
}
exports.readFileAsync = readFileAsync;
;
