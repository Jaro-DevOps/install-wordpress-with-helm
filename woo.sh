#!/bin/bash

# Start Minikube
minikube start

# Enable Nginx Ingress
minikube addons enable ingress

# Add Bitnami repo and update
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update

# Install WordPress
helm install my-wordpress bitnami/wordpress

# Get the URL for WordPress
minikube service my-wordpress --url

