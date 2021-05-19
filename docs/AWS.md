# Deployment to AWS

This document describes how to do a deployment of Send in AWS

## AWS requirements

### Security groups (2)

* ALB:
  - inbound: allow traffic from anywhere on port 80 and 443
  - ountbound: allow traffic to the instance security group on port `8080`

* Instance:
  - inbound: allow SSH from your public IP or a bastion (changing the default SSH port is a good idea)
  - inbound: allow traffic from the ALB security group on port `8080`
  - ountbound: allow all traffic to anywhere

### Resources

* An S3 bucket (block all public access)

* A private EC2 instance running Ubuntu `20.04` (you can use the [Amazon EC2 AMI Locator](https://cloud-images.ubuntu.com/locator/ec2/) to find the latest)

  Attach an IAM role to the instance with the following inline policy:

  ```json
  {
      "Version": "2012-10-17",
      "Statement": [
          {
              "Action": [
                  "s3:ListAllMyBuckets"
              ],
              "Resource": [
                  "*"
              ],
              "Effect": "Allow"
          },
          {
              "Action": [
                  "s3:ListBucket",
                  "s3:GetBucketLocation",
                  "s3:ListBucketMultipartUploads"
              ],
              "Resource": [
                  "arn:aws:s3:::<s3_bucket_name>"
              ],
              "Effect": "Allow"
          },
          {
              "Action": [
                  "s3:GetObject",
                  "s3:GetObjectVersion",
                  "s3:ListMultipartUploadParts",
                  "s3:PutObject",
                  "s3:AbortMultipartUpload",
                  "s3:DeleteObject",
                  "s3:DeleteObjectVersion"
              ],
              "Resource": [
                  "arn:aws:s3:::<s3_bucket_name>/*"
              ],
              "Effect": "Allow"
          }
      ]
  }
  ```

* A public ALB:

  - Create a target group with the instance registered (HTTP on port `8080` and path `/`)
  - Configure HTTP (port 80) to redirect to HTTPS (port 443)
  - HTTPS (port 443) using the latest security policy and an ACM certificate like `send.mydomain.com`

* A Route53 public record, alias from `send.mydomain.com` to the ALB

## Software requirements

* Git
* NodeJS `15.x` LTS
* Local Redis server

### Prerequisite packages

```bash
sudo apt update
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
```

### Add repositories

* NodeJS `15.x` LTS (checkout [package.json](../package.json)):

```bash
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource.gpg.key | sudo apt-key add -
echo 'deb [arch=amd64] https://deb.nodesource.com/node_15.x focal main' | sudo tee /etc/apt/sources.list.d/nodejs.list
```

* Git (latest)

```bash
sudo add-apt-repository ppa:git-core/ppa
```

* Redis (latest)

```bash
sudo add-apt-repository ppa:redislabs/redis
```

### Install required packages

```bash
sudo apt update
sudo apt install git nodejs redis-server telnet
```

### Redis server

#### Password (optional)

Generate a strong password:

```bash
makepasswd --chars=100
```

Edit Redis configuration file `/etc/redis/redis.conf`:

```bash
requirepass <redis_password>
```

_Note: documentation on securing Redis https://redis.io/topics/security_

#### Systemd

Enable and (re)start the Redis server service:

```bash
sudo systemctl enable redis-server
sudo systemctl restart redis-server
sudo systemctl status redis-server
```

## Website directory

Setup a directory for the data

```
sudo mkdir -pv /var/www/send
sudo chown www-data:www-data /var/www/send
sudo 750 /var/www/send
```

### NodeJS

Update npm:

```bash
sudo npm install -g npm
```

Checkout current NodeJS and npm versions:

```bash
node --version
npm --version
```

Clone repository, install JavaScript packages and compiles the assets:

```bash
sudo su -l www-data -s /bin/bash
cd /var/www/send
git clone https://gitlab.com/timvisee/send.git .
npm install
npm run build
exit
```

Create the file `/var/www/send/.env` used by Systemd with your environment variables
(checkout [config.js](../server/config.js) for more configuration environment variables):

```
BASE_URL='https://send.mydomain.com'
NODE_ENV='production'
PORT='8080'
REDIS_PASSWORD='<redis_password>'
S3_BUCKET='<s3_bucket_name>'
```

Lower files and folders permissions to user and group `www-data`:

```
sudo find /var/www/send -type d -exec chmod 750 {} \;
sudo find /var/www/send -type f -exec chmod 640 {} \;
sudo find -L /var/www/send/node_modules/.bin/ -exec chmod 750 {} \;
```

### Systemd

Create the file `/etc/systemd/system/send.service` with `root` user and `644` mode:

```
[Unit]
Description=Send
After=network.target
Requires=redis-server.service
Documentation=https://gitlab.com/timvisee/send

[Service]
Type=simple
ExecStart=/usr/bin/npm run prod
EnvironmentFile=/var/www/send/.env
WorkingDirectory=/var/www/send
User=www-data
Group=www-data
Restart=on-failure

[Install]
WantedBy=multi-user.target
```

_Note: could be better tuner to secure the service by restricting system permissions,
check with `systemd-analyze security send`_

Enable and start the Send service, check logs:

```
sudo systemctl daemon-reload
sudo systemctl enable send
sudo systemctl start send
sudo systemctl status send
journalctl -fu send
```
