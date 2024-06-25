$IntelSoftware1 = "Intel Chipset Device Software"
$IntelSoftware2 = "Intel Driver Update Utility"
$IntelSoftware3 = "Intel DSA"
$IntelSoftware4 = "Intel Killer Performance Suite"
$IntelSoftware5 = "Intel CPU ID Utility"

$MfrSoftwareGroup1 = "Intel"

Write-Host "Installing $MfrSoftwareGroup1 Software..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Installing: $IntelSoftware1...OEM Software No: 1 of 5" -Verbose
choco.exe install intel-chipset-device-software -y
Write-Verbose "Installing: $IntelSoftware2...OEM Software No: 2 of 5" -Verbose
choco.exe install intel-driver-update-utility -y
Write-Verbose "Installing: $IntelSoftware3...OEM Software No: 3 of 5" -Verbose
choco.exe install intel-dsa -y
Write-Verbose "Installing: $IntelSoftware4...OEM Software No: 4 of 5" -Verbose
choco.exe install intel-killer-performance-suite -y
Write-Verbose "Installing: $IntelSoftware4...OEM Software No: 4 of 5" -Verbose
choco.exe install intel-processor-identification-utility -y
