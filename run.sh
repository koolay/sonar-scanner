#!/bin/bash
set -e

sonar-scanner -Dsonar.projectKey=${SONAR_KEY} -Dproject.settings=${SONAR_SETTINGS} -Dsonar.host.url=${SONAR_HOST} -Dsonar.sources=${SONAR_SOURCES}

