#!/usr/bin/env bash

set -euo pipefail

if [ -f "private/tools/prebuilt/outdated_deploy.jar" ]; then
    outdated_jar_path=private/tools/prebuilt/outdated_deploy.jar
else
    outdated_jar_path=external/rules_jvm_external/private/tools/prebuilt/outdated_deploy.jar
fi

java  -jar $outdated_jar_path external/maven/outdated.artifacts external/maven/outdated.repositories
