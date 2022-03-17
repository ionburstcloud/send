const storage = require('../storage');
const mozlog = require('../log');
const log = mozlog('send.download');

module.exports = async function(req, res) {
  const id = req.params.id;
  try {
    const meta = req.meta;
    //const contentLength = await storage.length(id);
    //console.log("Length is:" + contentLength);
    const fileStream = await storage.get(id);
    let cancelled = false;

    req.on('aborted', () => {
      cancelled = true;
      fileStream.destroy();
    });

    res.writeHead(200, {
      'Content-Type': 'application/octet-stream'
    });
    fileStream.pipe(res).on('finish', async () => {
      if (cancelled) {
        return;
      }

      const dl = meta.dl + 1;
      const dlimit = meta.dlimit;
      try {
        if (dl >= dlimit) {
          await storage.del(id);
        } else {
          await storage.incrementField(id, 'dl');
        }
      } catch (e) {
        log.info('StorageError:', id);
      }
    });
  } catch (e) {
    res.sendStatus(404);
  }
};
