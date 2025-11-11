#!/bin/bash
echo "Installing Maven..."
sudo apt update -y
sudo apt install -y maven

echo "Building Java project..."
mvn clean package
