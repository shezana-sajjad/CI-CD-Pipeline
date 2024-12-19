#!/bin/bash

# Pull the latest Docker image
docker pull shezana/ci-cd-pipeline

# Stop and remove the previous container
docker stop ci-cd-pipeline-container
docker ci-cd-pipeline-container

# Run a new container
docker run -d --name ci-cd-pipeline-container -p 80:80 shezana/ci-cd-pipeline
