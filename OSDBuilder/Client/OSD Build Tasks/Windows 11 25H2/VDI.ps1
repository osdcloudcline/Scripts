# OSDBuilder Task name region

$W11VDI25H2 = "Windows 11 Enterprise Virtual Desktop Infrastructure 25H2"

# end region

Write-Host "Processing: $W11VDI25H2 OSDBuild Task Creation..." -ForegroundColor Yellow
New-OSDBuildTask -TaskName $W11VDI25H2
pause

Write-Host "Processing: $W11VDI25H2 .NET Framework 3.5 Enablement..." -ForegroundColor Yellow
New-OSBuildTask -TaskName $W11VDI25H2 -EnableNetFX3 
pause

Write-Host "Processing: $W11VDI25H2 Operating System Feature Enablement..." -ForegroundColor Yellow
New-OSBuildTask -TaskName $W11VDI25H2 -EnableFeature
pause

Write-Host "Processing: $W11VDI25H2 Operating System AppX Package Removal..." -ForegroundColor Yellow
New-OSBuildTask -TaskName $W11VDI25H2 -RemoveAppx
pause
      
Write-Host "Processing: $W11VDI25H2 Operating System Capability Removal..." -ForegroundColor Yellow
New-OSBuildTask -TaskName $W11VDI25H2 -RemoveCapability
pause

$25H2 = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OSDBuilder/Client/Windows11/25H2.ps1")
Invoke-Expression $($25H2.Content)
