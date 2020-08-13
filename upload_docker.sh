#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath is userid/repo
 $dockerpath=peyushjain/api

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login -u user id -p password  
docker tag imageid $dockerpath 
# Image id mentioned above is id of image generated using docker build command 

# Step 3:
# Push image to a docker repository
docker push $dockerpath