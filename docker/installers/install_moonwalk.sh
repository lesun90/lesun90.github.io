#!/usr/bin/env bash
# Fail on first error.
set -e
source /etc/profile.d/rvm.sh
git clone https://github.com/lesun90/moonwalk.git
cd moonwalk
./bin/bootstrap