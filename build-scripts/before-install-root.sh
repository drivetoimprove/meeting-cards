#!/usr/bin/env bash

# Make sure folder is created
if [[ -d /var/www/cards.dti.cat ]]; then
  sudo rm -R /var/www/cards.dti.cat
  mkdir /var/www/cards.dti.cat
  chown -R www-data: /var/www/cards.dti.cat
fi