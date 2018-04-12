#!/usr/bin/env bash
set -e

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
VERSION=$(docker run cargomedia/smtp-proxy -v 2>&1 | perl -0pe 's/.*version ([\d\.]+).*/$1/s')
docker tag cargomedia/smtp-proxy:latest cargomedia/smtp-proxy:${VERSION}
docker push cargomedia/smtp-proxy:latest
docker push cargomedia/smtp-proxy:${VERSION}
