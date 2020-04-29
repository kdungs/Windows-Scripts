# Installs software via Chocolatey.
# If choco is not installed on the system, it's installed first.

$software = @(
    # Basics
    "firefox",
    "vscode",
    "vlc",
    # Communication
    "discord",
    # Gaming platforms
    "steam",
    "epicgameslauncher",
    "uplay",
    "origin"
)

# Install Chcocolatey if not installed
if (Get-Command choco -errorAction SilentlyContinue) {
    Write-Host "Chocolatey already installed!"
} else {
    Write-Host "Chocolatey not installed. Installing..."
    Set-ExecutionPolicy Bypass -Scope Process -Force
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
    Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}                    

# Install software
$software | ForEach-Object {
    choco install -y $_
}