#!/bin/bash
set -e

sonar-scanner -Dsonar.projectKey=${PLUGIN_SONAR_KEY} -Dproject.settings=${PLUGIN_SONAR_SETTINGS} -Dsonar.host.url=${PLUGIN_SONAR_HOST} -Dsonar.sources=${PLUGIN_SONAR_SOURCES}

