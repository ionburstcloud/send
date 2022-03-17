const Ionburst = require('ionburst-sdk-javascript');
const ionburst = new Ionburst();
const fs = require('fs');
const path = require('path');
const mkdirp = require('mkdirp');

class IonburstStorage {
  constructor(config, log) {
    this.log = log;
    this.dir = config.file_dir;
    mkdirp.sync(this.dir);
  }

  async getStream(id) {
    console.log('GET ID: ' + id);
    let data = await ionburst.getAsync(id);
    var getPath = path.join(this.dir, id);
    console.log('getPath: ' + getPath);

    fs.writeFileSync(getPath, data);
    var returnData = fs.createReadStream(getPath);
    returnData.on('end', function() {
      fs.unlink(getPath, function(error) {
        if (error) {
          throw error;
        }
      });
    });
    return returnData;
  }

  set(id, file) {
    return new Promise((resolve, reject) => {
      const putPath = path.join(this.dir, id);
      console.log('getPath: ' + putPath);
      const fstream = fs.createWriteStream(putPath);
      file.pipe(fstream);
      file.on('error', err => {
        fstream.destroy(err);
      });
      fstream.on('error', err => {
        fs.unlinkSync(putPath);
        reject(err);
      });
      fstream.on('finish', async function() {
        var upload_data = fs.readFileSync(putPath);
        let put = await ionburst.putAsync({
          id: id,
          data: upload_data
        });
        console.log(put);
        fs.unlink(putPath, function(error) {
          if (error) {
            throw error;
          }
        });
        resolve();
      });
    });
  }

  del(id) {
    return ionburst.delete(id, function(err, data) {
      if (err) {
        throw err;
      }
      console.log(data);
    });
  }

  //ping() {
  //    return s3.headBucket({ Bucket: this.bucket }).promise();
  //}
}

module.exports = IonburstStorage;
