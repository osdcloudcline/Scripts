$OSDModule1 = "OSD"
$OSDModule2 = "OSD Builder"
$OSDModule3 = "OSD SUS"
$OSDModule4 = "OSD CloudCLI"
$OSDModule5 = "OSD CloudGUI"
$OSDModule6 = "OSD CloudAzure"
$OSDModule7 = "OSD Update"
$OSDModule8 = "Autopilot OOBE"
$OSDModule9 = "OSD Drivers"
$OSDModule10 = "OSD Deploy"
$OSDModule11 = "OSD Software"
$OSDModule12 = "OSD Catalog"
$OSDModule13 = "OSD Progress"
$OSDModule14 = "PS Windows Update"

$MSGraphModule1 = "Microsoft Graph"

$CloudModule1 = "Azure"


Write-Host
Write-Host
Write-Host "Importing Powershell Modules..." -ForegroundColor Green
Write-Host
Write-Host

Write-Host
Write-Verbose "Importing: $OSDModule1..." -Verbose
Import-Module -Name OSD  -Force

Write-Host
Write-Verbose "Importing: $OSDModule2..." -Verbose 
Import-Module -Name OSDBuilder  -Force

Write-Verbose "Importing: $OSDModule3..." -Verbose
Import-Module -Name OSDSUS -Force

Write-Host
Write-Verbose "Importing: $OSDModule4..." -Verbose
Import-Module -Name OSDCloudCLI -Force

Write-Host
Write-Verbose "Importing: $OSDModule5..." -Verbose
Import-Module -Name OSDCloudGUI -Force

Write-Host
Write-Verbose "Importing: $OSDModule6..." -Verbose
Import-Module -Name OSDCloudAzure -Force

Write-Host
Write-Verbose "Importing: $OSDModule7..." -Verbose
Import-Module -Name OSDUpdate -Force

Write-Host
Write-Verbose "Importing: $OSDModule8..." -Verbose
Import-Module -Name AutopilotOOBE -Force

Write-Host
Write-Verbose "Importing: $OSDModule9..." -Verbose
Import-Module -Name OSDDrivers -Force

Write-Host
Write-Verbose "Importing: $OSDModule10..." -Verbose
Import-Module -Name OSDeploy -Force

Write-Host
Write-Verbose "Importing: $OSDModule11..." -Verbose
Import-Module -Name OSDSoftware -Force

Write-Host
Write-Verbose "Importing: $OSDModule12..." -Verbose
Import-Module -Name OSDCatalog -Force

Write-Host
Write-Verbose "Importing: $OSDModule13..." -Verbose
Import-Module -Name OSDProgress -Force

Write-Host
Write-Verbose "Importing: $OSDModule14..." -Verbose
Import-Module -Name PSWindowsUpdate -Force

Write-Host
Write-Verbose "Importing: $MSGraphModule1..." -Verbose
Import-Module -Name Microsoft.Graph -Force

Write-Host
Write-Verbose "Importing: $CloudModule1..." -Verbose	
Import-Module -Name Azure -Repository PSGallery -Force

