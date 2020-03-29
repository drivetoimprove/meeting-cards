#!/usr/bin/env bash
#######################################################################
# Application preparation
#######################################################################
(
    rm -rf /var/www/cards.dti.cat/build-scripts
    rm /var/www/cards.dti.cat/appspec.yml
    rm /var/www/cards.dti.cat/meeting-card-vectors.pdf
    rm /var/www/cards.dti.cat/meeting-card-vectors.svg
    chown -R www-data: /var/www/cards.dti.cat
)