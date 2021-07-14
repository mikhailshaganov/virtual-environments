#!/bin/bash -e
################################################################################
##  File:  kotlin.sh
##  Desc:  Installs Kotlin
################################################################################

source $HELPER_SCRIPTS/install.sh
# Install latest kotlin from releases
URL=$(curl -s https://api.github.com/repos/JetBrains/kotlin/releases/latest | jq -r '.assets[].browser_download_url | select(contains("kotlin-compiler"))')

download_with_retries $URL "/tmp"
unzip -qq /tmp/kotlin-compiler*.zip -d /tmp
mv kotlinс /usr/local/bin
chmod +x /usr/local/bin/kotlinс

invoke_tests "Tools" "Kotlin"