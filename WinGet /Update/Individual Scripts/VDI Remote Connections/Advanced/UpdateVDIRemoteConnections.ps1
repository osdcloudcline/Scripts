$app1 = "Microsoft Remote Desktop Client"
$app2 = "VMWare Horizon Remote Desktop Connection Client"
$app3 = "AnyDesk"
$app4 = "Windows 365 Azure Virtual Desktop"

Write-Host "Processing updates: $app1 on $env:computername..."  -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id Microsoft.RemoteDesktopClient 

Write-Host "Processing updates: $app2 on $env:computername..."  -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
choco upgrade vmware-horizon-client -y

Write-Host "Processing updates: $app3 on $env:computername..."  -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id AnyDeskSoftwareGmbH.AnyDesk 

Write-Host "Processing updates: $app4 on $env:computername ..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan  
winget upgrade --id 9N1F85V9T8BN --source msstore
