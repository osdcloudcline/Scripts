$DellModule1 = "Dell BIOS Provider"
$DellModule2 = "Get BIOS"
$DellModule3 = "Dell Warranty"
$DellModule4 = "Dell Power Store"
$DellModule5 = "Dell Open Manage"
$DellModule6 = "Dell Warranty Service Tag"
$DellModule7 = "Dell Unity"
$DellModule8 = "Dell Power Max"
$DellModule9 = "Dell BIOS"
$DellModule10 = "Set BIOS"
$DellModule11 = "Dell Warranty"
$DellModule12 = "Dell Support Info"
$DellModule13 = "Get Dell Driver Packs"
$DellModule14 = "Dell BIOS Driver"


Install-Module -Name OSD -Repository PSGallery -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSD -Force

$MfrGroup1 = "Dell PowerShell"


Write-Host "Installing $MfrGroup1 Modules..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Installing: $DellModule1...Module No: 1 of 14" -Verbose
Install-Module -Name DellBIOSProvider -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name DellBIOSProvider -Force
Write-Verbose "Installing: $DellModule2...Module No: 2 of 14" -Verbose
Install-Module -Name GetBIOS -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name GetBIOS -Force
Write-Verbose "Installing: $DellModule3...Module No: 3 of 14" -Verbose
Install-Module -Name Get-DellWarranty -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Get-DellWarranty -Force
Write-Verbose "Installing: $DellModule4...Module No: 4 of 14" -Verbose
Install-Module -Name Dell.PowerStore -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Dell.PowerStore -Force
Write-Verbose "Installing: $DellModule5...Module No: 5 of 14" -Verbose
Install-Module -Name DellOpenManage -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name DellOpenManage -Force
Write-Verbose "Installing: $DellModule6...Module No: 6 of 14" -Verbose
Install-Module -Name DellWarrantyServiceTag -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name DellWarrantyServiceTag -Force
Write-Verbose "Installing: $DellModule7...Module No: 7 of 14" -Verbose
Install-Module -Name Dell.Unity -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Dell.Unity -Force
Write-Verbose "Installing: $DellModule8...Module No: 8 of 14" -Verbose
Install-Module -Name Dell.PowerMax -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Dell.PowerMax -Force
Write-Verbose "Installing: $DellModule9...Module No: 9 of 14" -Verbose
Install-Module -Name DellBios -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name DellBios -Force
Write-Verbose "Installing: $DellModule10...Module No: 10 of 14" -Verbose
Install-Module -Name SetBIOS -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name SetBIOS -Force
Write-Verbose "Installing: $DellModule11...Module No: 11 of 14" -Verbose
Install-Module -Name DellWarranty -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name DellWarranty -Force
Write-Verbose "Installing: $DellModule12...Module No: 12 of 14" -Verbose
Install-Module -Name Get-DellSupportInfo -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Get-DellSupportInfo -Force
Write-Verbose "Installing: $DellModule13...Module No: 13 of 14" -Verbose
Install-Module -Name Get-DriversPackFromDell -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Get-DriversPackFromDell -Force
Write-Verbose "Installing: $DellModule14...Module No: 14 of 14" -Verbose
Install-Module -Name Dell-BIOSDriver -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Dell-BIOSDriver -Force


$DellSoftware1 = "Dell Command | Update for Windows Universal Application"
$DellSoftware2 = "Dell Command | Update"
$DellSoftware3 = "Dell Display Manager"
$DellSoftware4 = "Dell Command | Configure"
$DellSoftware5 = "Dell Digital Delivery"

$MfrSoftwareGroup1 = "Dell OEM"

Write-Host "Installing $MfrSoftwareGroup1 Software..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Installing: $DellSoftware1...OEM Software No: 1 of 5" -Verbose
winget install --id Dell.CommandUpdate.Universal --accept-source-agreements  --accept-source-agreements --force
Write-Verbose "Installing: $DellSoftware2...OEM Software No: 2 of 5" -Verbose
winget install --id Dell.CommandUpdate --accept-source-agreements  --accept-source-agreements --force
Write-Verbose "Installing: $DellSoftware3...OEM Software No: 3 of 5" -Verbose
winget install --id Dell.DisplayManager --accept-source-agreements  --accept-source-agreements --force
Write-Verbose "Installing: $DellSoftware4...OEM Software No: 4 of 5" -Verbose
winget install --id Dell.CommandConfigure --accept-source-agreements  --accept-source-agreements --force
Write-Verbose "Installing: $DellSoftware5...OEM Software No: 5 of 5" -Verbose
winget install --id 9PPRLNT023WC --accept-source-agreements  --accept-source-agreements --force

$PCModel = (Get-CimInstance -Class Win32_ComputerSystem).Model
$CPU = (Get-CimInstance -Class Win32_Processor).Manufacturer
$CPUName = (Get-CimInstance -Class Win32_Processor).Name

If($PCModel -like "*Alienware*"){
Write-Verbose "Downloading Alienware-related Dell software..." -Verbose
$Alienware = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/Dell%20/Laptops/Alienware/Alienware.ps1")
Invoke-Expression $($Alienware.Content)
}
ElseIf($PCModel -lIKE "*Copilot*"){
Write-Verbose "Downloading Copilot + PC-related Dell Software..." -Verbose
$Copilot = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/Dell%20/Laptops/Copilot%20+%20PCs/Copilot.ps1")
Invoke-Expression $($Copilot.Content)
}
ElseIf($PCModel -lIKE "*G-Series*"){
Write-Verbose "Downloading G-Series PC-related Dell Software..." -Verbose
$GSeries = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/Dell%20/Laptops/G-Series/G-Series.ps1")
Invoke-Expression $($GSeries.Content)
}
ElseIf($PCModel -lIKE "*Inspiron*"){
Write-Verbose "Downloading Inspiron-related Dell Software..." -Verbose
$Inspiron = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/Dell%20/Laptops/Inspiron/Inspiron.ps1")
Invoke-Expression $($Inspiron.Content)
}
ElseIf($PCModel -lIKE "*Latitude*"){
Write-Verbose "Downloading Latitude-related Dell Software..." -Verbose
$Latitude = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/Dell%20/Laptops/Latitude/Latitude.ps1")
Invoke-Expression $($Latitude.Content)
}
ElseIf($PCModel -lIKE "*Precision Mobile Workstation*"){
Write-Verbose "Downloading Precision Mobile Workstation-related Dell Software..." -Verbose
$PrecisionMobileWorkstation = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/Dell%20/Laptops/Precision%20Mobile%20Workstations/PMW.ps1")
Invoke-Expression $($PrecisionMobileWorkstation.Content)
}
ElseIf($PCModel -lIKE "*XPS*"){
Write-Verbose "Downloading XPS-related Dell Software..." -Verbose
$XPS = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/Dell%20/Laptops/XPS/XPS.ps1")
Invoke-Expression $($XPS.Content)
}
ElseIf($PCModel -lIKE "*Optiplex*"){
Write-Verbose "Downloading Optiplex Micro Form Factor-related Dell Software..." -Verbose
$OptiplexMFF = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/Dell%20/Desktops/Optiplex%20Micro%20Form%20Factor/Optiplex.ps1")
Invoke-Expression $($OptiplexMFF.Content)
}
