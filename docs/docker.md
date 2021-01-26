## Setup

Use `registry.gitlab.com/timvisee/send:latest` from [`timvisee/send`'s registry](https://gitlab.com/timvisee/send/container_registry) for the latest Docker image.

```bash
docker pull registry.gitlab.com/timvisee/send:latest
```

Or run `docker build -t send:latest .` to create an image locally or `docker-compose up` to run a full testable stack. *We don't recommend using docker-compose for production.*

## Environment variables:

| Name             | Description
|------------------|-------------|
| `BASE_URL`       | The HTTPS URL where traffic will be served (e.g. `https://send.firefox.com`)
| `PORT`           | Port the server will listen on (defaults to 1443).
| `NODE_ENV`       | `"production"`
| `FILE_DIR`     | Uploads directory for local storage
| `S3_BUCKET`  | The S3 bucket name.
| `S3_ENDPOINT`| Optional custom S3 endpoint host.
| `S3_USE_PATH_STYLE_ENDPOINTS`| `true` or `false`
| `AWS_ACCESS_KEY_ID` | S3 access key ID
| `AWS_SECRET_ACCESS_KEY` | S3 secret access key ID
| `MAX_FILE_SIZE` | Maximum upload file size in bytes (defaults to 2147483648)
| `MAX_EXPIRE_SECONDS` | Maximum upload expiry time in seconds (defaults to 604800)
| `REDIS_HOST` | Host name of the Redis server.
| `SENTRY_CLIENT` | Sentry Client ID
| `SENTRY_DSN` | Sentry DSN

## Example:

```bash
$ docker run --net=host -e 'NODE_ENV=production' \
  -e 'S3_BUCKET=testpilot-p2p-dev' \
  -e 'REDIS_HOST=dyf9s2r4vo3.bolxr4.0001.usw2.cache.amazonaws.com' \
  -e 'SENTRY_CLIENT=https://51e23d7263e348a7a3b90a5357c61cb2@sentry.prod.mozaws.net/168' \
  -e 'SENTRY_DSN=https://51e23d7263e348a7a3b90a5357c61cb2:65e23d7263e348a7a3b90a5357c61c44@sentry.prod.mozaws.net/168' \
  -e 'BASE_URL=https://send.firefox.com' \
  registry.gitlab.com/timvisee/send:latest
```

## Docker compose

For a Docker compose configuration example, see:

https://github.com/timvisee/send-docker-compose
