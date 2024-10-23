Write-Host "Importing OSDBuilder PowerShell Module..." -ForegroundColor Cyan
Import-Module -Name OSDBuilder -Force

Write-Host "Processing: $W11Home21H2 OSDBuild Task Creation..." -ForegroundColor Yellow
New-OSBuildTask -TaskName $W11Home21H2 
pause

Write-Host "Processing: $W11Home21H2 .NET Framework 3.5 Enablement..." -ForegroundColor Yellow
New-OSBuildTask -TaskName $W11Home21H2 -EnableNetFX3 
pause

Write-Host "Processing: $W11Home21H2 Operating System Feature Enablement..." -ForegroundColor Yellow
New-OSBuildTask -TaskName $W11Home21H2 -EnableFeature
pause

Write-Host "Processing: $W11Home21H2 Operating System AppX Package Removal..." -ForegroundColor Yellow
New-OSDBuildTask -TaskName $W11Home21H2 -RemoveAppx
pause

Write-Host "Processing: $W11Home21H2 Operating System Capability Removal..." -ForegroundColor Yellow
New-OSBuildTask -TaskName $W11Home21H2 -RemoveCapability
pause

      
$21H2 = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OSDBuilder/Client/Windows11/21H2.ps1")
Invoke-Expression $($21H2.Content)
