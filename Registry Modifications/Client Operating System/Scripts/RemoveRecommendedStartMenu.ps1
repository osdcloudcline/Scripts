if((Test-Path -LiteralPath "HKCU:\Software\Policies\Microsoft\Windows\Explorer") -ne $true) {  New-Item "HKCU:\Software\Policies\Microsoft\Windows\Explorer" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer") -ne $true) {  New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer" -force -ea SilentlyContinue };
Remove-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\Windows\Explorer' -Name 'HideRecommendedSection' -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer' -Name 'HideRecommendedSection' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue;
