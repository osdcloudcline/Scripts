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
####               OSDCloud PE Wallpaper URL                            ###############
#######################################################################################

$OSDCloudWallpaperURL = "https://github.com/osdcloudcline/OSDCloud/blob/main/Wallpaper/winre-osdcloud.jpg"


#######################################################################################
####            OSDCloud Downloads, ESXI and DELL GITHUB DOWNLOADS               ######
#######################################################################################

$GHAlienwaredownloads = "C:\Drivers\OSDCloud\Dell\Laptops\Alienware\GitHub\downloads"
$GHGSeriesdownloads = "C:\Drivers\OSDCloud\Dell\Laptops\G-Series\GitHub\downloads"
$GHInspirondownloads = "C:\Drivers\OSDCloud\Dell\Laptops\Inspiron\GitHub\downloads"
$GHVostrodownloads = "C:\Drivers\OSDCloud\Dell\Laptops\Vostro\GitHub\downloads"
$GHGLatitudedownloads = "C:\Drivers\OSDCloud\Dell\Laptops\Latitude\GitHub\downloads"
$GHXPSdownloads = "C:\Drivers\OSDCloud\Dell\Laptops\XPS\GitHub\downloads"

$VMGHdownloads = "C:\Drivers\OSDCloud\VMWare\ESXI\GitHub\downloads"

$OSDCloudGHdownloads = "C:\OSDCloud\GitHub\downloads"

#######################################################################################
#### DELL ALIENWARE NETWORK DRIVER EXTRACTION LOCATIONS ###############################
#######################################################################################

$AWOSDCloudAPM_Extract = "C:\Drivers\OSDCloud\Dell\Laptops\Alienware\Network\Dell Airplane Mode"

$AWOSDCloudIntelDrivers1_Extract = "C:\Drivers\OSDCloud\Dell\Laptops\Alienware\Network\Intel\NIC1"
$AWOSDCloudIntelDrivers2_Extract = "C:\Drivers\OSDCloud\Dell\Laptops\Alienware\Network\Intel\NIC2"
$AWOSDCloudIntelDrivers3_Extract = "C:\Drivers\OSDCloud\Dell\Laptops\Alienware\Network\Intel\NIC3"

$AWOSDCloudKillerNICDrivers1_Extract = "C:\Drivers\OSDCloud\Dell\Laptops\Alienware\Network\Killer\NIC1"
$AWOSDCloudKillerNICDrivers2_Extract = "C:\Drivers\OSDCloud\Dell\Laptops\Alienware\Network\Killer\NIC2"
$AWOSDCloudKillerNICDrivers3A_Extract = "C:\Drivers\OSDCloud\Dell\Laptops\Alienware\Network\Killer\NIC3A"
$AWOSDCloudKillerNICDrivers3B_Extract = "C:\Drivers\OSDCloud\Dell\Laptops\Alienware\Network\Killer\NIC3B"
$AWOSDCloudKillerNICDrivers4_Extract = "C:\Drivers\OSDCloud\Dell\Laptops\Alienware\Network\Killer\NIC4"

$AWOSDCloudKillerWiFiDrivers1_Extract = "C:\Drivers\OSDCloud\Dell\Laptops\Alienware\Network\Killer\WiFi1"
$AWOSDCloudKillerWiFiDrivers2_Extract = "C:\Drivers\OSDCloud\Dell\Laptops\Alienware\Network\Killer\WiFi2"
$AWOSDCloudKillerWiFiDrivers3_Extract = "C:\Drivers\OSDCloud\Dell\Laptops\Alienware\Network\Killer\WiFi3"
$AWOSDCloudKillerWiFiDrivers4_Extract = "C:\Drivers\OSDCloud\Dell\Laptops\Alienware\Network\Killer\WiFi4"
$AWOSDCloudKillerWiFiDrivers5_Extract = "C:\Drivers\OSDCloud\Dell\Laptops\Alienware\Network\Killer\WiFi5"

$AWOSDCloudMediaTekNICDrivers1_Extract = "C:\Drivers\OSDCloud\Dell\Laptops\Alienware\Network\MediaTek\NIC1"
$AWOSDCloudMediaTekNICDrivers2_Extract = "C:\Drivers\OSDCloud\Dell\Laptops\Alienware\Network\MediaTek\NIC2"

$AWOSDCloudQualcommWiFiDrivers1_Extract = "C:\Drivers\OSDCloud\Dell\Laptops\Alienware\Network\Qualcomm\WiFi1"
$AWOSDCloudQualcommWiFiDrivers2_Extract = "C:\Drivers\OSDCloud\Dell\Laptops\Alienware\Network\Qualcomm\WiFi2"
$AWOSDCloudQualcommWiFiDrivers3_Extract = "C:\Drivers\OSDCloud\Dell\Laptops\Alienware\Network\Qualcomm\WiFi3"

$AWOSDCloudRealtekDrivers1_Extract = "C:\Drivers\OSDCloud\Dell\Laptops\Alienware\Network\Realtek\NIC1"

#######################################################################################
#### DELL ALIENWARE STORAGE DRIVER EXTRACTION LOCATIONS ###############################
#######################################################################################

$AWOSDCloudIRSTDrivers1_Extract = "C:\Drivers\OSDCloud\Dell\Laptops\Alienware\Storage\IRST"

#######################################################################################
#### DELL G-SERIES NETWORK DRIVER EXTRACTION LOCATIONS ################################
#######################################################################################

$GSeriesOSDCloudAPM_Extract = "C:\Drivers\OSDCloud\Dell\Laptops\G-Series\Network\Dell Airplane Mode"

$GSeriesOSDCloudIntelDrivers1_Extract = "C:\Drivers\OSDCloud\Dell\Laptops\G-Series\Network\Intel\NIC1"


$GSeriesOSDCloudKillerNICDrivers1_Extract = "C:\Drivers\OSDCloud\Dell\Laptops\G-Series\Network\Killer\NIC1"
$GSeriesOSDCloudKillerNICDrivers2_Extract = "C:\Drivers\OSDCloud\Dell\Laptops\G-Series\Network\Killer\NIC2"

$GSeriesOSDCloudKillerBTDrivers3_Extract = "C:\Drivers\OSDCloud\Dell\Laptops\G-Series\Network\Killer\BT1"
$GSeriesOSDCloudKillerBTDrivers4_Extract = "C:\Drivers\OSDCloud\Dell\Laptops\G-Series\Network\Killer\BT2"


$GSeriesOSDCloudKillerWiFiDrivers1_Extract = "C:\Drivers\OSDCloud\Dell\Laptops\G-Series\Network\Killer\WiFi1"
$GSeriesOSDCloudKillerWiFiDrivers2_Extract = "C:\Drivers\OSDCloud\Dell\Laptops\G-Series\Network\Killer\WiFi2"
$GSeriesOSDCloudKillerWiFiDrivers3_Extract = "C:\Drivers\OSDCloud\Dell\Laptops\G-Series\Network\Killer\WiFi3"
$GSeriesOSDCloudKillerWiFiDrivers4_Extract = "C:\Drivers\OSDCloud\Dell\Laptops\G-Series\Network\Killer\WiFi4"

$GSeriesOSDCloudMediaTekBTDrivers1_Extract = "C:\Drivers\OSDCloud\Dell\Laptops\G-Series\Network\MediaTek\BT"
$GSeriesOSDCloudMediaTekWiFiDrivers2_Extract = "C:\Drivers\OSDCloud\Dell\Laptops\G-Series\Network\MediaTek\WiFi"

$GSeriesOSDCloudQualcommWiFiDrivers1_Extract = "C:\Drivers\OSDCloud\Dell\Laptops\G-Series\Network\Qualcomm\BTWiFi1"

$GSeriesOSDCloudRealtekDrivers1_Extract = "C:\Drivers\OSDCloud\Dell\Laptops\G-Series\Network\Realtek\NIC1"

#######################################################################################
#### DELL G-SERIES STORAGE DRIVER EXTRACTION LOCATIONS ###############################
#######################################################################################

$GSeriesOSDCloudIRSTDrivers1_Extract = "C:\Drivers\OSDCloud\Dell\Laptops\G-Series\Storage\IRST"
