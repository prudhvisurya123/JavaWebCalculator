#!/bin/bash
echo "=== Building Java Project ==="
mvn clean verify
set -e

echo "=== Building and Analyzing Java Project with SonarQube ==="

mvn clean verify sonar:sonar \
  -Dsonar.projectKey=Test-Project \
  -Dsonar.projectName='Test-Project' \
  -Dsonar.host.url=http://51.20.185.44:9001 \
  -Dsonar.token=squ_69167e9fd610e5cbeea18493cbaeb438ee0c52e6 \
  -Dsonar.sourceEncoding=UTF-8 \
  -Dsonar.qualitygate.wait=true


