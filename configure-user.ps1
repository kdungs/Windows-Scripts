# Configure Windows registry for current user.
# Has to be run as the user.

. $PSScriptRoot\utils.ps1

# Remove unwanted autostart objects
Remove-Key "HKCU:\Software\Microsoft\Windows\CurrentVersion\Run" "Discord"
Remove-Key "HKCU:\Software\Microsoft\Windows\CurrentVersion\Run" "Steam"

# Privacy
Set-Key "HKCU:\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo" "Enabled" 0
Set-Key "HKCU:\Software\Microsoft\Windows\CurrentVersion\AppHost" "EnableWebContentEvaluation" 0
Set-Key "HKCU:\Software\Microsoft\Windows\CurrentVersion\Search" "BingSearchEnabled" 0

# UI
## Explorer
Set-Key "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer" "EnableAutoTray" 0
Set-Key "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer" "ShowFrequent" 0
Set-Key "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer" "ShowRecent" 0
Set-Key "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers" "DisableAutoplay" 1
Set-Key "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "ClassicViewState" 1
Set-Key "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "DontPrettyPath" 1
Set-Key "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "FriendlyTree" 1
Set-Key "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "Hidden" 1
Set-Key "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "HideFileExt" 0
Set-Key "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "LaunchTo" 1  # "This PC" by default
Set-Key "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "NavPaneShowAllFolders" 1
Set-Key "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "ShowSyncProviderNotifications" 0
## Taskbar
Set-Key "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "ShowTaskViewButton" 0
Set-Key "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "TaskbarGlomming" 0
Set-Key "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "TaskbarGlomLevel" 2
Set-Key "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "TaskbarSmallIcons" 1
Set-Key "HKCU:\Software\Microsoft\Windows\CurrentVersion\Search" "SearchboxTaskbarMode" 0
## Start menu
Set-Key "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "StartMenuFavorites" 0
Set-Key "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "Start_PowerButtonAction" 2
Set-Key "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "Start_ShowMyComputer" 1
Set-Key "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "Start_ShowMyDocs" 0
Set-Key "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "Start_ShowMyGames" 0
Set-Key "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "Start_ShowMyMusic" 0
Set-Key "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "Start_ShowMyPics" 0
Set-Key "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "Start_ShowRecentDocs" 0
Set-Key "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "Start_ShowRun" 1
Set-Key "HKCU:\Software\Microsoft\Windows\CurrentVersion\PushNotifications" "NoTileApplicationNotification" 1
## Search bar
Set-Key "HKCU:\Software\Microsoft\Windows\CurrentVersion\Search" "ImmersiveSearch" 1
Set-Key "HKCU:\Software\Microsoft\Windows\CurrentVersion\Search\Flighting\Override" "ImmersiveSearchFull" 0
Set-Key "HKCU:\Software\Microsoft\Windows\CurrentVersion\Search\Flighting\Override" "CenterScreenRoundedCornerRadius" 10