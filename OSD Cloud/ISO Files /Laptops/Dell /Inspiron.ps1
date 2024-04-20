Function Get-OSDCloudMount(){
$OSDCloudMountQues = Read-Host -Prompt 'Is the OSD Cloud boot.wim already mounted?'
If(($OSDCloudMountQues -eq "Y") -or ($OSDCloudMountQues -eq "y") -or ($OSDCloudMountQues -eq "Yes") -or ($OSDCloudMountQues -eq "yes")){
$OSDCloudMountDir = Read-Host -Prompt 'Please provide current mount directory'
}
ElseIf(($OSDCloudMountQues -eq "N") -or ($OSDCloudMountQues -eq "n") -or ($OSDCloudMountQues -eq "No") -or ($OSDCloudMountQues -eq "no")){
$OSDCloudWIM = Read-Host 'Please Specify the location of your OSDCloud boot.wim file'
$mountdir = Read-Host 'Please specify the mount point'
Write-Host "Mounting OSDCloud boot.wim..." -ForegroundColor Cyan
Mount-WindowsImage -ImagePath "$OSDCloudWIM\boot.wim" -Index 1 -Path $mountdir
Write-Host "Mounting completed..."
}
}


Function Get-OSDCloudDismount(){
$mountdir = Read-Host -Prompt 'Please provide mount directory'
Dismount-WindowsImage -Path $mountdir -Save

}


Write-Host "Configuring OSD PowerShell Modules..." -ForegroundColor Green

Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck 
Import-Module -Name OSD -Force

#######################################################################################
#### DELL INSPIRON 3000 SERIES NETWORK DRIVER DL URL LOCATIONS     ####################
#######################################################################################
$Inspiron3000SeriesIntelWiFiURL = ""

$Inspiron3000SeriesKillerBTURL = ""

$Inspiron3000SeriesQualcommWiFiURL = ""

$Inspiron3000SeriesRealtekWiFiURL = ""

#######################################################################################
#### DELL INSPIRON 5000 SERIES NETWORK DRIVER DL URL LOCATIONS     ####################
#######################################################################################

$Inspiron5000SeriesIntelWiFiURL = ""

$Inspiron5000SeriesKillerBTURL = ""

$Inspiron5000SeriesQualcommWiFiURL = ""

$Inspiron5000SeriesRealtekWiFiURL = ""

#######################################################################################
#### DELL INSPIRON 7000 SERIES NETWORK DRIVER DL URL LOCATIONS      ###################
#######################################################################################

$Inspiron7000SeriesIntelWiFiURL = ""

$Inspiron7000SeriesKillerBTURL = ""

$Inspiron7000SeriesQualcommWiFiURL = ""

$Inspiron7000SeriesRealtekWiFiURL = ""


#######################################################################################
#### DELL INSPIRON 3000 SERIES STORAGE DRIVER DL URL LOCATIONS     ####################
#######################################################################################

$Inspiron3000SeriesStorageURL = ""

#######################################################################################
#### DELL INSPIRON 5000 SERIES STORAGE DRIVER DL URL LOCATIONS     ####################
#######################################################################################

$Inspiron5000SeriesStorageURL = ""

#######################################################################################
#### DELL INSPIRON 7000 SERIES STORAGE DRIVER DL URL LOCATIONS      ###################
#######################################################################################

$Inspiron7000SeriesStorageURL = ""

#######################################################################################
#### DELL INSPIRON 3000 SERIES NETWORK DRIVER EXTRACTION LOCATIONS ####################
#######################################################################################

$Inspiron3000SeriesIntelWiFiExtract = ""

$Inspiron3000SeriesKillerBTExtract = ""

$Inspiron3000SeriesQualcommWiFiExtract = ""

$Inspiron3000SeriesRealtekWiFiExtract = ""

#######################################################################################
#### DELL INSPIRON 5000 SERIES NETWORK DRIVER EXTRACTION LOCATIONS ####################
#######################################################################################

$Inspiron5000SeriesIntelWiFiExtract = ""

$Inspiron5000SeriesKillerBTExtract = ""

$Inspiron5000SeriesQualcommWiFiExtract = ""

$Inspiron5000SeriesRealtekWiFiExtract = ""


#######################################################################################
#### DELL INSPIRON 7000 SERIES NETWORK DRIVER EXTRACTION LOCATIONS ####################
#######################################################################################

$Inspiron7000SeriesIntelWiFiExtract = ""

$Inspiron7000SeriesKillerBTExtract = ""

$Inspiron7000SeriesQualcommWiFiExtract = ""

$Inspiron7000SeriesRealtekWiFiExtract = ""

#######################################################################################
#### DELL INSPIRON 3000 SERIES STORAGE DRIVER EXTRACTION LOCATIONS ####################
#######################################################################################

$Inspiron3000SeriesStorageURL = ""

#######################################################################################
#### DELL INSPIRON 5000 SERIES STORAGE DRIVER EXTRACTION LOCATIONS ####################
#######################################################################################

$Inspiron5000SeriesStorageURL = ""

#######################################################################################
#### DELL INSPIRON 7000 SERIES STORAGE DRIVER EXTRACTION LOCATIONS ####################
#######################################################################################

$Inspiron7000SeriesStorageURL = ""
