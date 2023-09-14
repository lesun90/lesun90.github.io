#!/usr/bin/env bash

# Fail on first error.
set -e

# Install common tools.
apt-get update -y
apt-get upgrade -y

apt-get install -y \
    git \