# Configures Windows via registry.
# Uses a bunch of opinionated settings.
# Has to be run as admin.

. $PSScriptRoot\utils.ps1

# Privacy
## WiFi hot spot
Set-Key "HKLM:\Software\Microsoft\PolicyManager\default\WiFi\AllowWiFiHotSpotReporting" "Value" 0
Set-Key "HKLM:\Software\Microsoft\PolicyManager\default\WiFi\AllowAutoConnectToWiFiSenseHotspots" "Value" 0
## Activity tracking
Set-Key "HKLM:\Software\Policies\Microsoft\Windows\System" "EnableActivityFeed" 0
Set-Key "HKLM:\Software\Policies\Microsoft\Windows\System" "PublishUserActivities" 0
Set-Key "HKLM:\Software\Policies\Microsoft\Windows\System" "UploadUserActivities" 0
## Telemetry
Set-Key "HKLM:\Software\Policies\Microsoft\Windows\DataCollection" "AllowTelemetry" 0
Get-Service DiagTrack,Dmwappushservice | Stop-Service | Set-Service -StartupType Disabled
## Cortana
Set-Key "HKLM:\Software\Policies\Microsoft\Windows\System\Windows Search" "AllowCortana" 0

# Cosmetics
## Lock screen
Set-Key "HKLM:\Software\Policies\Microsoft\Windows\Personalization" "NoLockScreen" 1

# Updates
## Notify to schedule restart
Set-Key "HKLM:\Software\Microsoft\WindowsUpdate\UX\Settings" "UxOption" 1
## Disable P2P Update downlods outside of local network
Set-Key "HKLM:\Software\Microsoft\Windows\CurrentVersion\DeliveryOptimization" "SystemSettingsDownloadMode" 3
Set-Key "HKLM:\Software\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" "DODownloadMode" 1