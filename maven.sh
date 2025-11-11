#!/bin/bash
set -e

# === SonarQube Configuration ===
SONAR_HOST_URL=${SONAR_HOST_URL:-"http://51.20.185.44:9000"}
SONAR_TOKEN=${SONAR_TOKEN:-"squ_69167e9fd610e5cbeea18493cbaeb438ee0c52e6"}

echo "=== Building Java Project ==="
mvn clean verify

echo "=== Running SonarQube Analysis ==="
mvn org.sonarsource.scanner.maven:sonar-maven-plugin:4.0.0.4121:sonar \
  -Dsonar.projectKey=JavaWebCalculator \
  -Dsonar.host.url=$SONAR_HOST_URL \
  -Dsonar.login=$SONAR_TOKEN \
  -Dsonar.sourceEncoding=UTF-8 \
  -Dsonar.qualitygate.wait=true
