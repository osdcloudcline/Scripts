








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

Write-Host "Updating $MfrGroup1 Modules..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Updating: $DellModule1...Module No: 1 of 14" -Verbose
Update-Module -Name DellBIOSProvider -Force -Repository PSGallery
Import-Module -Name DellBIOSProvider -Force
Write-Verbose "Updating: $DellModule2...Module No: 2 of 14" -Verbose
Update-Module -Name GetBIOS -Force -Repository PSGallery
Import-Module -Name GetBIOS -Force
Write-Verbose "Updating: $DellModule3...Module No: 3 of 14" -Verbose
Update-Module -Name Get-DellWarranty -Force -Repository PSGallery
Import-Module -Name Get-DellWarranty -Force
Write-Verbose "Updating: $DellModule4...Module No: 4 of 14" -Verbose
Update-Module -Name Dell.PowerStore -Force -Repository PSGallery
Import-Module -Name Dell.PowerStore -Force
Write-Verbose "Updating: $DellModule5...Module No: 5 of 14" -Verbose
Update-Module -Name DellOpenManage -Force -Repository PSGallery
Import-Module -Name DellOpenManage -Force
Write-Verbose "Updating: $DellModule6...Module No: 6 of 14" -Verbose
Update-Module -Name DellWarrantyServiceTag -Force -Repository PSGallery
Import-Module -Name DellWarrantyServiceTag -Force
Write-Verbose "Updating: $DellModule7...Module No: 7 of 14" -Verbose
Update-Module -Name Dell.Unity -Force -Repository PSGallery
Import-Module -Name Dell.Unity -Force
Write-Verbose "Updating: $DellModule8...Module No: 8 of 14" -Verbose
Update-Module -Name Dell.PowerMax -Force -Repository PSGallery
Import-Module -Name Dell.PowerMax -Force
Write-Verbose "Updating: $DellModule9...Module No: 9 of 14" -Verbose
Update-Module -Name DellBios -Force -Repository PSGallery
Import-Module -Name DellBios -Force
Write-Verbose "Updating: $DellModule10...Module No: 10 of 14" -Verbose
Update-Module -Name SetBIOS -Force -Repository PSGallery
Import-Module -Name SetBIOS -Force
Write-Verbose "Updating: $DellModule11...Module No: 11 of 14" -Verbose
Update-Module -Name DellWarranty -Force -Repository PSGallery
Import-Module -Name DellWarranty -Force
Write-Verbose "Updating: $DellModule12...Module No: 12 of 14" -Verbose
Update-Module -Name Get-DellSupportInfo -Force -Repository PSGallery
Import-Module -Name Get-DellSupportInfo -Force
Write-Verbose "Updating: $DellModule13...Module No: 13 of 14" -Verbose
Update-Module -Name Get-DriversPackFromDell -Force -Repository PSGallery
Import-Module -Name Get-DriversPackFromDell -Force
Write-Verbose "Updating: $DellModule14...Module No: 14 of 14" -Verbose
Update-Module -Name Dell-BIOSDriver -Force -Repository PSGallery
Import-Module -Name Dell-BIOSDriver -Force

Write-Host "Updating $MfrGroup2 Modules..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Updating: $VMModule1...Module No: 1 of 1" -Verbose
Update-Module -Name WindowsImageBuilder -Force -Repository PSGallery
Import-Module -Name WindowsImageBuilder -Force

$DellSoftware1 = "Dell Command | Update for Windows Universal Application"
$DellSoftware2 = "Dell Command | Update"
$DellSoftware3 = "Dell Display Manager"
$DellSoftware4 = "Dell Command | Configure"
$DellSoftware5 = "Dell Digital Delivery"

$MfrSoftwareGroup1 = "Dell OEM"

Write-Host "Updating $MfrSoftwareGroup1 Software..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Updating: $DellSoftware1...OEM Software No: 1 of 5" -Verbose
winget upgrade --id Dell.CommandUpdate.Universal --accept-source-agreements  --accept-source-agreements --force
Write-Verbose "Updating: $DellSoftware2...OEM Software No: 2 of 5" -Verbose
winget upgrade --id Dell.CommandUpdate --accept-source-agreements  --accept-source-agreements --force
Write-Verbose "Updating: $DellSoftware3...OEM Software No: 3 of 5" -Verbose
winget upgrade --id Dell.DisplayManager --accept-source-agreements  --accept-source-agreements --force
Write-Verbose "Updating: $DellSoftware4...OEM Software No: 4 of 5" -Verbose
winget upgrade --id Dell.CommandConfigure --accept-source-agreements  --accept-source-agreements --force
Write-Verbose "Updating: $DellSoftware5...OEM Software No: 4 of 5" -Verbose
winget upgrade --id 9PPRLNT023WC --accept-source-agreements  --accept-source-agreements --force
