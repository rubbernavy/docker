#!/bin/sh

dnf update --assumeyes &&
  docker run --interactive --tty --rm --volume /vagrant:/vagrant:ro --volume /var/run/docker.sock:/var/run/docker.sock ${1} &&
  dnf update --assumeyes &&
  dnf clean all &&
  true
