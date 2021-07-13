#!/bin/bash -e
################################################################################
##  File:  kotlin.sh
##  Desc:  Installs Kotlin
################################################################################

# Install latest kotlin from releases
URL=$(curl -s https://api.github.com/repos/JetBrains/kotlin/releases/latest | jq -r '.assets[].browser_download_url)')
curl -L $URL -o /usr/local/bin/kotlin
chmod +x /usr/local/bin/kotlin

invoke_tests "Tools" "Kotlin"
