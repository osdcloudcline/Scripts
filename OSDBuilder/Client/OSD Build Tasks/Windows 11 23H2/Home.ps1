# OSDBuilder Task name region

$W11Home23H2 = "Windows 11 Home/Core 23H2"

# end region

Write-Host "Processing: $W11Home23H2 OSDBuild Task Creation..." -ForegroundColor Yellow
New-OSDBuildTask -TaskName $W11Home23H2
pause

Write-Host "Processing: $W11Home23H2 .NET Framework 3.5 Enablement..." -ForegroundColor Yellow
New-OSBuildTask -TaskName $W11Home23H2 -EnableNetFX3 
pause

Write-Host "Processing: $W11Home23H2 Operating System Feature Enablement..." -ForegroundColor Yellow
New-OSBuildTask -TaskName $W11Home23H2 -EnableFeature
pause

Write-Host "Processing: $W11Home23H2 Operating System AppX Package Removal..." -ForegroundColor Yellow
New-OSBuildTask -TaskName $W11Home23H2 -RemoveAppx
pause
      
Write-Host "Processing: $W11Home23H2 Operating System Capability Removal..." -ForegroundColor Yellow
New-OSBuildTask -TaskName $W11Home23H2 -RemoveCapability
pause

$23H2 = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OSDBuilder/Client/Windows11/23H2.ps1")
Invoke-Expression $($23H2.Content)
