$DisableBitLocker = "Disable Bitlocker OS Encryption"

Write-Verbose "Importing Client OS SYSTEM: $DisableBitLocker to $env:computername..." -Verbose

if((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\BitLocker") -ne $true) {  New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\BitLocker" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\BitLocker' -Name 'PreventDeviceEncryption' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue;
