#!/bin/bash

# build image dari Dockerfile
docker build -t ghcr.io/qrizan/order-service:latest .

# login ke Github container registry
echo $GITHUB_TOKEN | docker login ghcr.io -u qrizan --password-stdin

# push image hasil build ke github packages
docker push ghcr.io/qrizan/order-service:latest