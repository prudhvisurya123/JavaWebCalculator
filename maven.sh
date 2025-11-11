#!/bin/bash
set -e

echo "=== Building Java Project ==="
mvn clean verify

echo "=== Running SonarQube Analysis ==="
mvn sonar:sonar \
  -Dsonar.projectKey=JavaWebCalculator \
  -Dsonar.host.url=$SONAR_HOST_URL \
  -Dsonar.login=$SONAR_TOKEN \
  -Dsonar.sourceEncoding=UTF-8 \
  -Dsonar.qualitygate.wait=true
