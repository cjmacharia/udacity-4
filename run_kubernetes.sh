#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerPath=<>
 dockerPath=cjmash/mlproject

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run mlproject --image=$dockerPath:latest


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward mlproject 8000:80