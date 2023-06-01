#!/bin/bash

docker build -t ghcr.io/qrizan/karsajobs-ui:latest .

echo $GITHUB_TOKEN | docker login ghcr.io -u qrizan --password-stdin

docker push ghcr.io/qrizan/karsajobs-ui:latest