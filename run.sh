#!/bin/bash
set -e

sonar-scanner -Dsonar.projectKey=${SONAR_KEY} -Dproject.settings=${SONAR_SETTINGS}

