import { readFile } from 'fs';

export function readFileAsync(filename: string, encoding?: string): Promise<Buffer> {
  return new Promise<Buffer>((resolve, reject) => {
    readFile(filename, { encoding }, function(err, data){
      if (err) 
        reject(err); 
      else
        resolve(typeof data === 'string' ? new Buffer(data): data);
    });
  });
};
