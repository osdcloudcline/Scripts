$LianLiSoftware1 = "Lian Li L-Connect 3"
$FanSoftware1 = "Fan Control"

$MfrSoftwareGroup1 = "Lian-Li"


Write-Host "Installing $MfrSoftwareGroup1 Software..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Installing: $LianLiSoftware1...OEM Software No: 1 of 2" -Verbose
winget.exe install --id LianLi.LConnect3 --exact --accept-source-agreements  --accept-package-agreements --force
Write-Verbose "Installing: $FanSoftware1...OEM Software No: 2 of 2" -Verbose
winget.exe install --id Rem0o.FanControl --exact --accept-source-agreements  --accept-package-agreements --force
