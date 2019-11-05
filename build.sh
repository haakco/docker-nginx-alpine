#!/usr/bin/env bash
IMAGE_NAME="haakco/nginx-alpine"
docker build --pull --rm -t ${IMAGE_NAME} .
