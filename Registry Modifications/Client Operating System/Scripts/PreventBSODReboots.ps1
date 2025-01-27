$PreventBSODReboots = "Prevent BSOD Reboots"

Write-Verbose "Importing Client OS SYSTEM: $PreventBSODReboots to $env:computername..." -Verbose

if((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\CrashControl") -ne $true) {  New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\CrashControl" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\CrashControl' -Name 'AutoReboot' -Value 0 -PropertyType DWord -Force -ea SilentlyContinue;
