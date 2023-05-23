#!/bin/bash

docker build -t item-app:v1 .

docker images

docker tag item-app:v1 qrizan/item-app:v1

echo $PASSWORD_DOCKER_HUB | docker login -u qrizan --password-stdin

docker push qrizan/item-app:v1