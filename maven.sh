#!/bin/bash
echo "=== Building Java Project ==="
mvn clean verify
set -e

echo "=== Building and Analyzing Java Project with SonarQube ==="
mvn clean verify sonar:sonar \
  -Dsonar.projectKey=testproject2 \
  -Dsonar.projectName='testproject2' \
  -Dsonar.host.url=http://51.20.185.44:9000 \
  -Dsonar.token=sqp_ff3ac55c7b9283d0a7eab9604c4c4bc75ef1a244
  -Dsonar.sourceEncoding=UTF-8 \
  -Dsonar.qualitygate.wait=true


