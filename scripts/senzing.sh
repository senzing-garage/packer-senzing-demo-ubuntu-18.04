#!/usr/bin/env bash

# Get /etc/apt/sources.list.d/senzing-production.list

curl \
  --output /tmp/senzingrepo_1.0.0-1_amd64.deb \
  https://senzing-production-apt.s3.amazonaws.com/senzingrepo_1.0.0-1_amd64.deb

apt -y install /tmp/senzingrepo_1.0.0-1_amd64.deb

# Update apt database

apt update

# FIXME: Need different mechanism.

export SENZING_ACCEPT_EULA=I_ACCEPT_THE_SENZING_EULA

# Install senzing

apt -y install senzingapi
