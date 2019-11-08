#!/usr/bin/env bash

# Get /etc/apt/sources.list.d/senzing-production.list

curl \
  --output /senzingrepo_1.0.0-1_amd64.deb \
  https://senzing-production-apt.s3.amazonaws.com/senzingrepo_1.0.0-1_amd64.deb

apt -y install /senzingrepo_1.0.0-1_amd64.deb

# Update apt database

apt update

# Install senzing

apt -y install senzingdata-v1 senzingapi
