$app1 = "Microsoft Remote Desktop Client"
$app2 = "VMWare Horizon Remote Desktop Connection Client"
$app3 = "AnyDesk"
$app4 = "VMWare Workstation Professional"
$app5 = "Windows 365 Azure Virtual Desktop"

# Virtualization related software
Write-Host "Installing Virtualization and Remote Desktop Applications on $env:computername..." -ForegroundColor Green

Write-Host "Installing: $app1 on $env:computername..."  -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Microsoft.RemoteDesktopClient --exact --accept-source-agreements --accept-source-agreements --force

Write-Host "Installing: $app2 on $env:computername..."  -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
choco install vmware-horizon-client -y

Write-Host "Installing: $app3 on $env:computername..."  -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id AnyDeskSoftwareGmbH.AnyDesk --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing: $app4 on $env:computername ..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan  
choco install vmwareworkstation --params='"/SERIALNUMBER=VV7RA-0YZ0N-M89EP-JFN7C-P62RF"' -y

Write-Host "Installing: $app5 on $env:computername ..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan  
winget install --id 9N1F85V9T8BN --exact --accept-source-agreements  --accept-source-agreements --force
