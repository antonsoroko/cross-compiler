#!/bin/bash

set -e

git checkout master

sudo -S true

# Compile all Docker images
make all

# Push images to Docker Hub
make push-all
