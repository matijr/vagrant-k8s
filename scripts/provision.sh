#!/usr/bin/env bash

yum update -y
yum install httpd -y
systemctl start httpd
if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
fi