# Utilities that are used across scripts.

# Sets a registry key and makes sure the path exists.
function Set-Key ([String]$path, [String]$name, [Object]$value) {
    if (-Not (Test-Path $path)) {
        New-Item $path -Force | Out-Null
    }
    Set-ItemProperty -Path $path -Name $name -Type "DWord" -Value $value
}

# Ensures a key is not present in registry.
function Remove-Key ([String]$path, [String]$name) {
    Remove-ItemProperty -Path $path -Name $name -errorAction SilentlyContinue
}