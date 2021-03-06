#!/bin/bash

TSTAMP=$(date +%Y%m%d%H%M) &&
WORK_DIR=$(mktemp -d) &&
vagrant destroy -f &&
vagrant provision &&
vagrant up &&
sleep 30s &&
vagrant halt &&
vagrant up &&
sleep 30s &&
vagrant halt &&
vagrant up &&
sleep 30s &&
vagrant halt &&
vagrant package --output ${WORK_DIR}/docker.${TSTAMP}.box &&
vagrant box add --name gui.${TSTAMP} ${WORK_DIR}/docker.${TSTAMP}.box &&
vagrant halt &&
rm -rf docker.${TSTAMP}.box &&
true
