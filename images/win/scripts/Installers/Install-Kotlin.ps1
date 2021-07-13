################################################################################
##  File:  Install-Kotlin.ps1
##  Desc:  Install Kotlin
################################################################################

Choco-Install -PackageName kotlinc

Invoke-PesterTests -TestFile "Tools" -TestName "Kotlin"