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



#######################################################################################
#### DELL INSPIRON 7000 SERIES NETWORK DRIVER DL URL LOCATIONS      ###################
#######################################################################################



#######################################################################################
#### DELL INSPIRON 3000 SERIES STORAGE DRIVER DL URL LOCATIONS     ####################
#######################################################################################

$Inspiron3000SeriesStorageURL = ""

#######################################################################################
#### DELL INSPIRON 5000 SERIES STORAGE DRIVER DL URL LOCATIONS     ####################
#######################################################################################


#######################################################################################
#### DELL INSPIRON 7000 SERIES STORAGE DRIVER DL URL LOCATIONS      ###################
#######################################################################################


#######################################################################################
#### DELL INSPIRON 3000 SERIES NETWORK DRIVER EXTRACTION LOCATIONS ####################
#######################################################################################


#######################################################################################
#### DELL INSPIRON 5000 SERIES NETWORK DRIVER EXTRACTION LOCATIONS ####################
#######################################################################################



#######################################################################################
#### DELL INSPIRON 7000 SERIES NETWORK DRIVER EXTRACTION LOCATIONS ####################
#######################################################################################


#######################################################################################
#### DELL INSPIRON 3000 SERIES STORAGE DRIVER EXTRACTION LOCATIONS ####################
#######################################################################################


#######################################################################################
#### DELL INSPIRON 5000 SERIES STORAGE DRIVER EXTRACTION LOCATIONS ####################
#######################################################################################


#######################################################################################
#### DELL INSPIRON 7000 SERIES STORAGE DRIVER EXTRACTION LOCATIONS ####################
#######################################################################################
