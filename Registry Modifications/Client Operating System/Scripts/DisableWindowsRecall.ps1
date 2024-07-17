$DisableRecall = "Disable Windows Recall"

Write-Verbose "Importing Client OS SYSTEM: $DisableRecall to $env:computername..." -Verbose


if((Test-Path -LiteralPath "HKLM:\Software\Policies\Microsoft\Windows\WindowsAI") -ne $true) {  New-Item "HKLM:\Software\Policies\Microsoft\Windows\WindowsAI" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\WindowsAI' -Name 'DisableAIDataAnalysis' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue;
