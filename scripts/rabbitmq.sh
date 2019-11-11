#!/usr/bin/env bash

# From https://www.rabbitmq.com/install-debian.html#apt

## Install prerequisites.

apt-get update -y

apt-get install -y \
    curl \
    gnupg

## Install RabbitMQ signing key.

curl -fsSL https://github.com/rabbitmq/signing-keys/releases/download/2.0/rabbitmq-release-signing-key.asc | sudo apt-key add -

## Install apt HTTPS transport.

apt-get install -y \
    apt-transport-https

## Add Bintray repositories that provision latest RabbitMQ and Erlang 21.x releases

tee /etc/apt/sources.list.d/bintray.rabbitmq.list <<EOF
## Installs the latest Erlang 22.x release.
## Change component to "erlang-21.x" to install the latest 21.x version.
## "bionic" as distribution name should work for any later Ubuntu or Debian release.
## See the release to distribution mapping table in RabbitMQ doc guides to learn more.
deb https://dl.bintray.com/rabbitmq-erlang/debian bionic erlang
deb https://dl.bintray.com/rabbitmq/debian bionic main
EOF

## Update package indices.

apt-get update -y

## Install rabbitmq-server and its dependencies.

apt-get install -y \
     --fix-missing \
     rabbitmq-server
