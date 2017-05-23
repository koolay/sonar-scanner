#!/bin/bash
set -e

sonar-scanner -Dsonar.projectKey=${PLUGIN_SONAR_KEY} -Dproject.settings=${PLUGIN_SONAR_SETTINGS} $@

