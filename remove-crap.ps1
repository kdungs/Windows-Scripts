# Removes pre-installed crap from a Windows 10 system.

# You can get a list of all installed non-system Appx packages via
#  Get-AppxPackage | ? {$_.SignatureKind -ne "System"} | Sort Name | Select Name 
# and add names to this list.
$crap = @(
    "king.com.CandyCrushFriends",
    "king.com.FarmHeroesSaga",
    "Microsoft.BingWeather",
    "Microsoft.Getstarted",
    "Microsoft.MicrosoftOfficeHub",
    "Microsoft.MicrosoftSolitaireCollection",
    "Microsoft.MicrosoftStickyNotes",
    "Microsoft.MixedReality.Portal",
    "Microsoft.Office.OneNote",
    "Microsoft.OneConnect",
    "Microsoft.People",
    "Microsoft.SkypeApp",
    "Microsoft.StorePurchaseApp",
    "Microsoft.Todos",
    "Microsoft.Wallet",
    "Microsoft.WindowsAlarms",
    "Microsoft.WindowsCamera",
    "microsoft.windowscommunicationsapps",
    "Microsoft.WindowsFeedbackHub",
    "Microsoft.WindowsMaps",
    "Microsoft.WindowsSoundRecorder",
    "Microsoft.WindowsStore",
    "Microsoft.Services.Store.Engagement",
    "Microsoft.XboxApp",
    "Microsoft.XboxGameOverlay",
    "Microsoft.XboxGamingOverlay",
    "Microsoft.XboxSpeechToTextOverlay",
    "Microsoft.YourPhone",
    "Microsoft.ZuneMusic",
    "Microsoft.ZuneVideo",
    "XINGAG.XING"
)

foreach ($item in $crap) {
    $pkg = Get-AppxPackage -Name "${item}"
    if ($pkg) {
        $pkg | Remove-AppxPackage
        Write-Host "Removed ${item}."
    }
}

Write-Host "Removed all the crap!"