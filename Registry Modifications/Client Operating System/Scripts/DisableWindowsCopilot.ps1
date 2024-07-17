$DisableCoPilot = "Disable Windows Co-Pilot"

Write-Verbose "Importing Client OS SYSTEM: $DisableCoPilot to $env:computername..." -Verbose

if((Test-Path -LiteralPath "HKLM:\Software\Policies\Microsoft\Windows\WindowsCopilot") -ne $true) {  New-Item "HKLM:\Software\Policies\Microsoft\Windows\WindowsCopilot" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\WindowsCopilot' -Name 'TurnOffWindowsCopilot' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue;