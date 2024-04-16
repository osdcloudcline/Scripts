$app1 = "Microsoft Remote Desktop Client"
$app2 = "VMWare Horizon Remote Desktop Connection Client"
$app3 = "AnyDesk"
$app4 = "VMWare Workstation Professional"
$app5 = "Windows 365 Azure Virtual Desktop"

# Virtualization related software
Write-Host "Upgrading Virtualization and Remote Desktop Applications on $env:computername..." -ForegroundColor Green

Write-Host "Upgrading: $app1 on $env:computername..."  -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id Microsoft.RemoteDesktopClient --exact --accept-source-agreements --accept-source-agreements --force

Write-Host "Upgrading: $app2 on $env:computername..."  -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id VMware.HorizonClient --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Upgrading: $app3 on $env:computername..."  -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id AnyDeskSoftwareGmbH.AnyDesk --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Upgrading: $app4 on $env:computername ..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan  
choco upgrade vmwareworkstation --params='"/SERIALNUMBER=VV7RA-0YZ0N-M89EP-JFN7C-P62RF"' -y

Write-Host "Upgrading: $app5 on $env:computername ..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan  
winget upgrade --id 9N1F85V9T8BN --exact --accept-source-agreements  --accept-source-agreements --force
