# Basic set up script for a Windows 10 machine.

Write-Host "Configuring Windows."
. $PSScriptRoot\configure-windows.ps1

Write-Host "Remove preinstalled crap."
. $PSScriptRoot\remove-crap.ps1

Write-Host "Installing software"
. $PSScriptRoot\install-software.ps1