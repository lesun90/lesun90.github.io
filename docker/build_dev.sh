#!/usr/bin/env bash

# Usage:
#   ./build_dev.sh ./dev.x86_64.dockerfile
DOCKERFILE=$1


CONTEXT="$(dirname "${BASH_SOURCE[0]}")"

REPO=lesun90/spa_system
ARCH=$(uname -m)
TIME=$(date +%Y%m%d_%H%M)

TAG="${REPO}:dev-${ARCH}-${TIME}"

# Fail on first error.
set -e
docker build -t ${TAG} -f ${DOCKERFILE} ${CONTEXT}
echo "Built new image ${TAG}"
