#!/bin/bash -e -o pipefail

echo Installing kotlin...
brew install kotlin

invoke_tests "Kotlin"
