#!/bin/bash

# Prompt the user for the number of replicas
read -p "Enter the number of replicas to create: " REPLICA_COUNT

# Prompt the user for the Docker image name
read -p "Enter the Docker image name and tag (e.g. myimage:latest): " DOCKER_IMAGE

# Prompt the user for the container name
read -p "Enter the name for the Docker container: " CONTAINER_NAME

# Create the Docker service with the specified number of replicas, Docker image name, and container name
docker service create --replicas $REPLICA_COUNT --name $CONTAINER_NAME $DOCKER_IMAGE