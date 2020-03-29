#!/usr/bin/env bash
#######################################################################
# Application preparation
#######################################################################
(
    rm -rf build-scripts
    rm appspec.yml
    rm meeting-card-vectors.pdf
    rm meeting-card-vectors.svg
    chown -R www-data: /var/www/cards.dti.cat
)