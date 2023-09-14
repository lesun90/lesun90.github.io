#!/usr/bin/env bash
# Fail on first error.
set -e

apt-get install -y \
    curl \
    g++ \
    gcc \
    autoconf \
    automake \
    bison \
    libc6-dev \
    libffi-dev \
    libgdbm-dev \
    libncurses5-dev \
    libsqlite3-dev \
    libtool \
    libyaml-dev \
    make \
    pkg-config \
    sqlite3 \
    zlib1g-dev \
    libgmp-dev \
    libreadline-dev \
    libssl-dev

curl -sSL https://get.rvm.io | bash -s stable

source /etc/profile.d/rvm.sh

rvm install ruby

ruby -v

apt-get install -y \
    build-essential \
    zlib1g-dev \

echo '# Install Ruby Gems to ~/gems' >>~/.bashrc
echo 'export GEM_HOME="$HOME/gems"' >>~/.bashrc
echo 'export PATH="$HOME/gems/bin:$PATH"' >>~/.bashrc
echo 'source /etc/profile.d/rvm.sh' >>~/.bashrc
source ~/.bashrc

gem install rouge -v 3.30.0
gem install google-protobuf -v 3.23.4

gem install jekyll bundler
