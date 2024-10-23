# OSDBuilder Task name region

$W11Professional24H2 = "Windows 11 Professional 24H2"

# end region

Write-Host "Processing: $W11Professional24H2 OSDBuild Task Creation..." -ForegroundColor Yellow
New-OSDBuildTask -TaskName $W11Professional24H2
pause

Write-Host "Processing: $W11Professional24H2 .NET Framework 3.5 Enablement..." -ForegroundColor Yellow
New-OSBuildTask -TaskName $W11Professional24H2 -EnableNetFX3 
pause

Write-Host "Processing: $W11Professional24H2 Operating System Feature Enablement..." -ForegroundColor Yellow
New-OSBuildTask -TaskName $W11Professional24H2 -EnableFeature
pause

Write-Host "Processing: $W11Professional24H2 Operating System AppX Package Removal..." -ForegroundColor Yellow
New-OSBuildTask -TaskName $W11Professional24H2 -RemoveAppx
pause
      
Write-Host "Processing: $W11Professional24H2 Operating System Capability Removal..." -ForegroundColor Yellow
New-OSBuildTask -TaskName $W11Professional24H2 -RemoveCapability
pause

$24H2 = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OSDBuilder/Client/Windows11/24H2.ps1")
Invoke-Expression $($24H2.Content)
