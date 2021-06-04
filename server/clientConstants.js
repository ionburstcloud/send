const config = require('./config');

module.exports = {
  LIMITS: {
    MAX_FILE_SIZE: config.max_file_size,
    MAX_DOWNLOADS: config.max_downloads,
    MAX_EXPIRE_SECONDS: config.max_expire_seconds,
    MAX_FILES_PER_ARCHIVE: config.max_files_per_archive,
    MAX_ARCHIVES_PER_USER: config.max_archives_per_user
  },
  WEB_UI: {
    FOOTER_DONATE_URL: config.footer_donate_url,
    FOOTER_CLI_URL: config.footer_cli_url,
    FOOTER_DMCA_URL: config.footer_dmca_url,
    FOOTER_SOURCE_URL: config.footer_source_url
  },
  DEFAULTS: {
    DOWNLOADS: config.default_downloads,
    DOWNLOAD_COUNTS: config.download_counts,
    EXPIRE_TIMES_SECONDS: config.expire_times_seconds,
    EXPIRE_SECONDS: config.default_expire_seconds
  }
};
