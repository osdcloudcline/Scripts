$AMDSoftware1 = "AMD Ryzen Chipset Drivers"
$AMDSoftware2 = "AMD Ryzen Master Software"

$MfrSoftwareGroup1 = "AMD"

Write-Host "Installing $MfrSoftwareGroup1 Software..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Installing: $AMDSoftware1..." -Verbose
choco.exe install amd-ryzen-chipset -y
Write-Verbose "Installing: $AMDSoftware2.." -Verbose
choco.exe install amd-ryzen-master -y


