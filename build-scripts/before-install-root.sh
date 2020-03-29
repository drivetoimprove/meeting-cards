#!/usr/bin/env bash

# Get private configuration
if [[ ! -d "/var/tmp/sites-config" ]];then
    mkdir -p /var/tmp/sites-config
fi
(cd /var/tmp/sites-config && aws s3 sync s3://dti-webserver-configs .)

# Make sure folder is created
if [[ -d /var/www/cards.dti.cat ]]; then
  sudo rm -R /var/www/cards.dti.cat
  mkdir /var/www/cards.dti.cat
  chown -R www-data: /var/www/cards.dti.cat
fi