#!/bin/bash
# Pull the latest image from DockerHub
docker pull <your_image_name>

# Stop the running container
docker stop <container_name>

# Remove the stopped container
docker rm <container_name>

# Run a new container with the updated image
docker run -d -p <host_port>:<container_port> --name <container_name> <your_image_name>'