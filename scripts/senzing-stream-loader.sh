#!/usr/bin/env bash


# Software dependencies

apt-get -y install \
    curl

# Copy python script to /usr/local/bin

curl \
  --output /usr/local/bin/stream-loader.py \
  https://raw.githubusercontent.com/Senzing/stream-loader/1.2.1/stream-loader.py

chmod +x /usr/local/bin/stream-loader.py
