#!/usr/bin/env bash

apt-get -y install \
    curl \
    git \
    python3-pip \
    wget

# Upgrade PIP

pip3 install --upgrade pip
