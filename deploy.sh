#!/bin/bash

# Define image name
IMAGE_NAME="shezana/ci-cd-pipeline"

# Pull the latest code (ensure this is inside your Git repository directory)
git pull origin main

# Build the Docker image locally with the updated code
docker build --no-cache -t $IMAGE_NAME .

# Stop and remove the previous container
docker stop ci-cd-pipeline-container
docker rm ci-cd-pipeline-container

# Run a new container with the updated image
docker run -d --name ci-cd-pipeline-container -p 8081:80 $IMAGE_NAME

