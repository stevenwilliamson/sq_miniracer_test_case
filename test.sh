#!/bin/bash

# You might need to create a buildx builder to support multi-platform builds, can be done with the below
# docker buildx create --use

docker buildx build --platform linux/amd64,linux/arm64 .

