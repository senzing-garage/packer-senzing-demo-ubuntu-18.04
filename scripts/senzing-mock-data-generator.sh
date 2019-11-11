#!/usr/bin/env bash

# Software dependencies

apt-get -y install \
    curl \
    python3-pip

pip3 install \
    confluent-kafka \
    gevent \
    requests \
    pika

# Copy python script to /usr/local/bin

curl \
  --output /usr/local/bin/mock-data-generator.py \
  https://raw.githubusercontent.com/Senzing/mock-data-generator/1.1.0/mock-data-generator.py

chmod +x /usr/local/bin/mock-data-generator.py
