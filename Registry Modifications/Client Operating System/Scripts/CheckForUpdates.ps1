$CheckForUpdates = "Check for OS Updates"

Write-Verbose "Importing Client OS SYSTEM: $CheckForUpdates to $env:computername..." -Verbose

if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\DesktopBackground\Shell\Check for Updates") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\DesktopBackground\Shell\Check for Updates" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\DesktopBackground\Shell\Check for Updates\command") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\DesktopBackground\Shell\Check for Updates\command" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\DesktopBackground\Shell\Check for Updates' -Name 'SettingsURI' -Value 'ms-settings:windowsupdate' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\DesktopBackground\Shell\Check for Updates\command' -Name 'DelegateExecute' -Value '{556FF0D6-A1EE-49E5-9FA4-90AE116AD744}' -PropertyType String -Force -ea SilentlyContinue;
