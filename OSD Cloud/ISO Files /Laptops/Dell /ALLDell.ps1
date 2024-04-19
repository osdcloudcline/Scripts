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
####               VBS SCRIPT SUPPORT URL                             #################
#######################################################################################

$VBSScriptSupport_URL = "https://github.com/osdcloudcline/OSDCloud/raw/main/Scripting%20Support/VBScriptCABFiles.zip"

#######################################################################################
###########         OSDCloud VBS Script EXTRACTION LOCATION            ################
#######################################################################################

$OSDCloudVBS_Extract = "C:\OSDCloud\GitHub\downloads\VBSScript"

#######################################################################################
###########         OSDCloud ESXI Drivers EXTRACTION LOCATION            ##############
#######################################################################################

$OSDCloudESXI_Extract = "C:\Drivers\OSDCloud\ESXI"

#######################################################################################
####               VMWare ESXI DRIVER URLS                            #################
#######################################################################################

$OSDCloudESXIURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/VMWare/ESXIDrivers.zip"

#######################################################################################
####               OSDCloud PE Wallpaper URL                            #################
#######################################################################################

$OSDCloudWallpaperURL = "https://github.com/osdcloudcline/OSDCloud/blob/main/Wallpaper/winre-osdcloud.jpg"


#######################################################################################
####            OSDCloud Downloads, ESXI and DELL GITHUB DOWNLOADS      ######
#######################################################################################

$GHGSeriesdownloads = "C:\Drivers\OSDCloud\Dell\G-Series\GitHub\downloads"
$VMGHdownloads = "C:\Drivers\OSDCloud\VMWare\ESXI\GitHub\downloads"
$OSDCloudGHdownloads = "C:\OSDCloud\GitHub\downloads"
