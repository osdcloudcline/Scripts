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
#### DELL G-SERIES NETWORK DRIVER EXTRACTION LOCATIONS ################################
#######################################################################################

$GSeriesOSDCloudAPM_Extract = "C:\Drivers\OSDCloud\Dell\G-Series\Network\Dell Airplane Mode"

$GSeriesOSDCloudIntelDrivers1_Extract = "C:\Drivers\OSDCloud\Dell\G-Series\Network\Intel\NIC1"


$GSeriesOSDCloudKillerNICDrivers1_Extract = "C:\Drivers\OSDCloud\Dell\G-Series\Network\Killer\NIC1"
$GSeriesOSDCloudKillerNICDrivers2_Extract = "C:\Drivers\OSDCloud\Dell\G-Series\Network\Killer\NIC2"

$GSeriesOSDCloudKillerBTDrivers3_Extract = "C:\Drivers\OSDCloud\Dell\G-Series\Network\Killer\BT1"
$GSeriesOSDCloudKillerBTDrivers4_Extract = "C:\Drivers\OSDCloud\Dell\G-Series\Network\Killer\BT2"


$GSeriesOSDCloudKillerWiFiDrivers1_Extract = "C:\Drivers\OSDCloud\Dell\G-Series\Network\Killer\WiFi1"
$GSeriesOSDCloudKillerWiFiDrivers2_Extract = "C:\Drivers\OSDCloud\Dell\G-Series\Network\Killer\WiFi2"
$GSeriesOSDCloudKillerWiFiDrivers3_Extract = "C:\Drivers\OSDCloud\Dell\G-Series\Network\Killer\WiFi3"
$GSeriesOSDCloudKillerWiFiDrivers4_Extract = "C:\Drivers\OSDCloud\Dell\G-Series\Network\Killer\WiFi4"

$GSeriesOSDCloudMediaTekBTDrivers1_Extract = "C:\Drivers\OSDCloud\Dell\G-Series\Network\MediaTek\BT"
$GSeriesOSDCloudMediaTekWiFiDrivers2_Extract = "C:\Drivers\OSDCloud\Dell\G-Series\Network\MediaTek\WiFi"

$GSeriesOSDCloudQualcommWiFiDrivers1_Extract = "C:\Drivers\OSDCloud\Dell\G-Series\Network\Qualcomm\BTWiFi1"

$GSeriesOSDCloudRealtekDrivers1_Extract = "C:\Drivers\OSDCloud\Dell\G-Series\Network\Realtek\NIC1"

#######################################################################################
#### DELL G-SERIES STORAGE DRIVER EXTRACTION LOCATIONS ###############################
#######################################################################################

$GSeriesOSDCloudIRSTDrivers1_Extract = "C:\Drivers\OSDCloud\Dell\G-Series\Storage\IRST"

#######################################################################################
####               VBS SCRIPT SUPPORT URL                             #################
#######################################################################################

$VBSScriptSupport_URL = "https://github.com/osdcloudcline/OSDCloud/raw/main/Scripting%20Support/VBScriptCABFiles.zip"

#######################################################################################
###########         OSDCloud VBS Script EXTRACTION LOCATION            ################
#######################################################################################

$OSDCloudVBS_Extract = "C:\OSDCloud\GitHub\downloads\VBSScript"

#######################################################################################
###########         OSDCloud ESXI Drivers EXTRACTION LOCATION            ################
#######################################################################################

$OSDCloudESXI_Extract = "C:\Drivers\OSDCloud\ESXI"

#######################################################################################
####               DELL G-SERIES NETWORK DRIVER URLS                  #################
#######################################################################################

$OSDCloudGSeriesDELLAPM_URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/Dell%20/Laptops%20/G-Series/G-Series-OSDCloud-DellAirplaneMode.zip"

$OSDCloudGSeriesDELLIntel1_URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/Dell%20/Laptops%20/G-Series/G-Series-OSDCloud-IntelNIC.zip"


$OSDCloudGSeriesDELLKiller1_URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/Dell%20/Laptops%20/G-Series/G-Series-OSDCloud-KillerNIC-1000MB-GB.zip"
$OSDCloudGSeriesDELLKiller2_URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/Dell%20/Laptops%20/G-Series/G-Series-OSDCloud-KillerNIC-100MB.zip"

$OSDCloudGSeriesDELLKiller3A_URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/Dell%20/Laptops%20/G-Series/G-Series-OSDCloud-KillerNIC-BT%20UWD-1.zip"
$OSDCloudGSeriesDELLKiller3B_URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/Dell%20/Laptops%20/G-Series/G-Series-OSDCloud-KillerNIC-BT%20UWD-2.zip"
$OSDCloudGSeriesDELLKiller4_URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/Dell%20/Laptops%20/G-Series/G-Series-OSDCloud-Bluetooth.zip"

$OSDCloudGSeriesDELLKillerWiFi1_URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/Dell%20/Laptops%20/G-Series/G-Series-OSDCloud-KillerNIC-WiFi1.zip"
$OSDCloudGSeriesDELLKillerWiFi2_URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/Dell%20/Laptops%20/G-Series/G-Series-OSDCloud-KillerNIC-WiFi2.zip"
$OSDCloudGSeriesDELLKillerWiFi3_URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/Dell%20/Laptops%20/G-Series/G-Series-OSDCloud-KillerNIC-WiFi3.zip"
$OSDCloudGSeriesDELLKillerWiFi4_URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/Dell%20/Laptops%20/G-Series/G-Series-OSDCloud-KillerNIC-WiFi4.zip"


$OSDCloudGSeriesDELLMediaTek1_URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/Dell%20/Laptops%20/G-Series/G-Series-OSDCloud-MediaTekBluetooth.zip"
$OSDCloudGSeriesDELLMediaTek2_URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/Dell%20/Laptops%20/G-Series/G-Series-OSDCloud-MediaTekWiFi.zip"

$OSDCloudGSeriesDELLQualcommWiFi1_URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/Dell%20/Laptops%20/G-Series/G-Series-OSDCloud-QualcommBluetoothWiFi.zip"


$OSDCloudGSeriesDELLRealtek1_URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/Dell%20/Laptops%20/G-Series/G-Series-OSDCloud-RealtekEthernet.zip"



#######################################################################################
####               DELL G-SERIES STORAGE DRIVER URLS                 #################
#######################################################################################

$OSDCloudGSeriesDELL_IRST_Storage1_URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/Dell%20/Laptops%20/G-Series/G-Series-OSDCloud-StorageDrivers.zip"

#######################################################################################
####               VMWare ESXI DRIVER URLS                            #################
#######################################################################################

$OSDCloudESXIURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/VMWare/ESXIDrivers.zip"

#######################################################################################
####               OSDCloud PE Wallpaper URL                            #################
#######################################################################################

$OSDCloudWallpaperURL = "https://github.com/osdcloudcline/OSDCloud/blob/main/Wallpaper/winre-osdcloud.jpg"


#######################################################################################
####            OSDCloud Downloads, ESXI and DELL G-SERIES GITHUB DOWNLOADS      #####
#######################################################################################

$GHdownloads = "C:\Drivers\OSDCloud\Dell\G-Series\GitHub\downloads"
$VMGHdownloads = "C:\Drivers\OSDCloud\VMWare\ESXI\GitHub\downloads"
$OSDCloudGHdownloads = "C:\OSDCloud\GitHub\downloads"

######################################################################################
####    USER PROFILE BACKUP AND RESTORE URL                                    #######
######################################################################################

$UPBR_URL = "https://github.com/osdcloudcline/OSDCloud/raw/main/User%20Profile%20Backup%20Restore/UserProfileBackupRestore.exe"
$UPBRFilePath = "C:\OSDCloud\GitHub\downloads\UserProfileBackupRestore.exe"

Start-Transcript -Path "C:\OSDCloud\Logs\Dell\Laptops\G-Series.log"

Write-Host "Configuring OSD PowerShell Modules..." -ForegroundColor Green

Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck -Verbose
Import-Module -Name OSD -Force

Write-Host "Testing Web Connection to retrieve Dell G-Series drivers..." -ForegroundColor Cyan
Test-WebConnection -Uri $OSDCloudGSeriesDELLAPM_URL
Test-WebConnection -Uri $OSDCloudGSeriesDELLIntel1_URL
Test-WebConnection -Uri $OSDCloudGSeriesDELLKiller1_URL
Test-WebConnection -Uri $OSDCloudGSeriesDELLKiller2_URL
Test-WebConnection -Uri $OSDCloudGSeriesDELLKiller3A_URL
Test-WebConnection -Uri $OSDCloudGSeriesDELLKiller3B_URL
Test-WebConnection -Uri $OSDCloudGSeriesDELLKiller4_URL 
Test-WebConnection -Uri $OSDCloudGSeriesDELLKillerWiFi1_URL
Test-WebConnection -Uri $OSDCloudGSeriesDELLKillerWiFi2_URL
Test-WebConnection -Uri $OSDCloudGSeriesDELLKillerWiFi3_URL
Test-WebConnection -Uri $OSDCloudGSeriesDELLKillerWiFi4_URL
Test-WebConnection -Uri $OSDCloudGSeriesDELLMediaTek1_URL
Test-WebConnection -Uri $OSDCloudGSeriesDELLMediaTek2_URL
Test-WebConnection -Uri $OSDCloudGSeriesDELLQualcommWiFi1_URL
Test-WebConnection -Uri $OSDCloudGSeriesDELLRealtek1_URL
Test-WebConnection -Uri $OSDCloudGSeriesDELL_IRST_Storage1_URL

Write-Host "Testing Web Connection to retrieve VMWare ESXI drivers..." -ForegroundColor Cyan

Test-WebConnection -Uri $OSDCloudESXIURL

Write-Host "Testing Web Connection to retrieve VBS SCripting Support files..." -ForegroundColor Cyan

Test-WebConnection -Uri $VBSScriptSupport_URL

Write-Host "Testing Web Connection to retrieve User Profile Backup and Restore program file..." -ForegroundColor Cyan

Test-WebConnection -Uri $UPBR_URL

Write-Host "Testing Web Connection to retrieve OSDCloud wallpaper..." -ForegroundColor Cyan

Test-WebConnection -Uri $OSDCloudWallpaperURL

Write-Host "Web Connection test was successful!" -ForegroundColor Green

Write-Host "Acquiring DELL G-Series Network Card, WiFi and Bluetooth Drivers from GitHub repository..." -ForegroundColor Green

Save-WebFile -SourceUrl $OSDCloudGSeriesDELLAPM_URL -DestinationDirectory $GHdownloads
Save-WebFile -SourceUrl $OSDCloudGSeriesDELLIntel1_URL -DestinationDirectory $GHdownloads
Save-WebFile -SourceUrl $OSDCloudGSeriesDELLKiller1_URL -DestinationDirectory $GHdownloads
Save-WebFile -SourceUrl $OSDCloudGSeriesDELLKiller2_URL -DestinationDirectory $GHdownloads
Save-WebFile -SourceUrl $OSDCloudGSeriesDELLKiller3A_URL -DestinationDirectory $GHdownloads

Save-WebFile -SourceUrl $OSDCloudGSeriesDELLKiller3B_URL -DestinationDirectory $GHdownloads
Save-WebFile -SourceUrl $OSDCloudGSeriesDELLKiller4_URL -DestinationDirectory $GHdownloads
Save-WebFile -SourceUrl $OSDCloudGSeriesDELLKillerWiFi1_URL -DestinationDirectory $GHdownloads
Save-WebFile -SourceUrl $OSDCloudGSeriesDELLKillerWiFi2_URL -DestinationDirectory $GHdownloads
Save-WebFile -SourceUrl $OSDCloudGSeriesDELLKillerWiFi3_URL -DestinationDirectory $GHdownloads

Save-WebFile -SourceUrl $OSDCloudGSeriesDELLKillerWiFi4_URL -DestinationDirectory $GHdownloads
Save-WebFile -SourceUrl $OSDCloudGSeriesDELLMediaTek1_URL -DestinationDirectory $GHdownloads
Save-WebFile -SourceUrl $OSDCloudGSeriesDELLMediaTek2_URL -DestinationDirectory $GHdownloads
Save-WebFile -SourceUrl $OSDCloudGSeriesDELLQualcommWiFi1_URL -DestinationDirectory $GHdownloads
Save-WebFile -SourceUrl $OSDCloudGSeriesDELLRealtek1_URL -DestinationDirectory $GHdownloads

Write-Host "Acquiring DELL G-Series Storage Drivers from GitHub repository..." -ForegroundColor Green

Save-WebFile -SourceUrl $OSDCloudGSeriesDELL_IRST_Storage1_URL -DestinationDirectory $GHdownloads

Write-Host "Acquiring VMWare ESXI Drivers from GitHub repository..." -ForegroundColor Green

Save-WebFile -SourceUrl $OSDCloudESXIURL -DestinationDirectory $VMGHdownloads

Write-Host "Acquiring VBS Scripting Support files from GitHub repository..." -ForegroundColor Green

Save-WebFile -SourceUrl $UPBR_URL -DestinationDirectory $OSDCloudGHdownloads

Write-Host "Acquiring User Profile Backup and Restore program file from GitHub repository..." -ForegroundColor Green

Save-WebFile -SourceUrl $VBSScriptSupport_URL -DestinationDirectory $OSDCloudGHdownloads

Write-Host "Acquiring OSDCloud wallpaper from GitHub repository..." -ForegroundColor Green

Save-WebFile -SourceUrl $OSDCloudWallpaperURL -DestinationDirectory $OSDCloudGHdownloads


Write-Host "Extracting DELL G-Series Network Card, WiFi and Bluetooth Drivers..." -ForegroundColor Cyan

Expand-Archive -Path "$GHdownloads\G-Series-OSDCloud-DellAirplaneMode.zip" -DestinationPath $GSeriesOSDCloudAPM_Extract
Expand-Archive -Path "$GHdownloads\G-Series-OSDCloud-IntelNIC.zip" -DestinationPath $GSeriesOSDCloudIntelDrivers1_Extract

Expand-Archive -Path "$GHdownloads\G-Series-OSDCloud-KillerNIC-1000MB-GB.zip" -DestinationPath $GSeriesOSDCloudKillerNICDrivers1_Extract
Expand-Archive -Path "$GHdownloads\G-Series-OSDCloud-KillerNIC-100MB.zip" -DestinationPath $GSeriesOSDCloudKillerNICDrivers2_Extract

Expand-Archive -Path "$GHdownloads\G-Series-OSDCloud-KillerNIC-BT%20UWD-1.zip" -DestinationPath $GSeriesOSDCloudKillerBTDrivers3_Extract
Expand-Archive -Path "$GHdownloads\G-Series-OSDCloud-KillerNIC-BT%20UWD-2.zip" -DestinationPath $GSeriesOSDCloudKillerBTDrivers3_Extract

Expand-Archive -Path "$GHdownloads\G-Series-OSDCloud-Bluetooth.zip" -DestinationPath $GSeriesOSDCloudKillerBTDrivers4_Extract
Expand-Archive -Path "$GHdownloads\G-Series-OSDCloud-KillerNIC-WiFi1.zip" -DestinationPath $GSeriesOSDCloudKillerWiFiDrivers1_Extract

Expand-Archive -Path "$GHdownloads\G-Series-OSDCloud-KillerNIC-WiFi2.zip" -DestinationPath $GSeriesOSDCloudKillerWiFiDrivers2_Extract
Expand-Archive -Path "$GHdownloads\G-Series-OSDCloud-KillerNIC-WiFi3.zip" -DestinationPath $GSeriesOSDCloudKillerWiFiDrivers3_Extract

Expand-Archive -Path "$GHdownloads\G-Series-OSDCloud-KillerNIC-WiFi4.zip" -DestinationPath $GSeriesOSDCloudKillerWiFiDrivers4_Extract
Expand-Archive -Path "$GHdownloads\G-Series-OSDCloud-KillerNIC-100MB.zip" -DestinationPath $GSeriesOSDCloudKillerNICDrivers2_Extract

Expand-Archive -Path "$GHdownloads\G-Series-OSDCloud-MediaTekBluetooth.zip" -DestinationPath $GSeriesOSDCloudMediaTekBTDrivers1_Extract
Expand-Archive -Path "$GHdownloads\G-Series-OSDCloud-MediaTekWiFi.zip" -DestinationPath $GSeriesOSDCloudKillerBTDrivers3_Extract

Expand-Archive -Path "$GHdownloads\G-Series-OSDCloud-Bluetooth.zip" -DestinationPath $GSeriesOSDCloudKillerBTDrivers4_Extract
Expand-Archive -Path "$GHdownloads\G-Series-OSDCloud-KillerNIC-WiFi1.zip" -DestinationPath $GSeriesOSDCloudMediaTekWiFiDrivers2_Extract

Expand-Archive -Path "$GHdownloads\G-Series-OSDCloud-QualcommBluetoothWiFi.zip" -DestinationPath $GSeriesOSDCloudQualcommWiFiDrivers1_Extract
Expand-Archive -Path "$GHdownloads\G-Series-OSDCloud-RealtekEthernet.zip" -DestinationPath $GSeriesOSDCloudRealtekDrivers1_Extract

Write-Host "Extracting DELL G-Series Storage Drivers..." -ForegroundColor Cyan

Expand-Archive -Path "$GHdownloads\G-Series-OSDCloud-StorageDrivers.zip" -DestinationPath $GSeriesOSDCloudIRSTDrivers1_Extract

Write-Host "Dell G-Series Network, WiFi, Bluetooth and Storage drivers successfully extracted..." -ForegroundColor Green

Write-Host "Extracting VBS Scripting Support files..." -ForegroundColor Cyan

Expand-Archive -Path "$OSDCloudGHdownloads\VBScriptCABFiles.zip" -DestinationPath $OSDCloudVBS_Extract

Write-Host "VBS Scripting Support files successfully extracted..." -ForegroundColor Green

Write-Host "Extracting VMWare ESXI Drivers..." -ForegroundColor Cyan

Expand-Archive -Path "$VMGHdownloads\ESXIDrivers.zip" -DestinationPath $OSDCloudESXI_Extract

Write-Host "VMWare ESXI Drivers successfully extracted..." -ForegroundColor Green

Write-Host "Creating OSDCloud Template..." -ForegroundColor Green
New-OSDCloudTemplate -WinRE WinRE KB5026372

Write-Host "Setting Workspace Path for Dell G-Series OSDCloud ISO..." -ForegroundColor Green
$OSDCloudWorkspace = "C:\OSDCloud\Dell\Laptops\GSeries"
Set-OSDCloudWorkspace -WorkspacePath $OSDCloudWorkspace
Get-OSDCloudWorkspace

Write-Host "Changing Wallpaper..." -ForegroundColor Green
Edit-OSDCloudWinPE -Wallpaper "$OSDCloudGHdownloads\winre-osdcloud.jpg"

Write-Host "Integrating DELL G-Series Network Card, WiFi and Bluetooth Drivers into OSDCloud..." -ForegroundColor Green
Edit-OSDCloudWinPE -DriverPath "C:\Drivers\OSDCloud\Dell\G-Series\Network"

Write-Host "Integrating DELL G-Series Storage Drivers into OSDCloud..." -ForegroundColor Green
Edit-OSDCloudWinPE -DriverPath "C:\Drivers\OSDCloud\Dell\G-Series\Storage"

Write-Host "Integrating VMWare ESXI Drivers into OSDCloud..." -ForegroundColor Green
Edit-OSDCloudWinPE -DriverPath "C:\Drivers\OSDCloud\ESXI"

Write-Host "Integrating OSDCloud Cloud Drivers..." -ForegroundColor Green
Edit-OSDCloudWinPE -CloudDriver *

Write-Host "Integrating VBS Scripting Support into OSDCloud..." -ForegroundColor Green
$VBSName1 = "Microsoft-Windows-VBSCRIPT-FoD-Package~31bf3856ad364e35~amd64~~.cab"
$VBSName2 = "Microsoft-Windows-VBSCRIPT-FoD-Package~31bf3856ad364e35~amd64~en-us~.cab"
$VBSName3 = "Microsoft-Windows-VBSCRIPT-FoD-Package~31bf3856ad364e35~wow64~~.cab"
$VBSName4 = "Microsoft-Windows-VBSCRIPT-FoD-Package~31bf3856ad364e35~wow64~en-us~.cab"

$VBS1 = "$OSDCloudVBS_Extract\Microsoft-Windows-VBSCRIPT-FoD-Package~31bf3856ad364e35~amd64~~.cab"
$VBS2 = "$OSDCloudVBS_Extract\Microsoft-Windows-VBSCRIPT-FoD-Package~31bf3856ad364e35~amd64~en-us~.cab"
$VBS3 = "$OSDCloudVBS_Extract\Microsoft-Windows-VBSCRIPT-FoD-Package~31bf3856ad364e35~wow64~~.cab"
$VBS4 = "$OSDCloudVBS_Extract\Microsoft-Windows-VBSCRIPT-FoD-Package~31bf3856ad364e35~wow64~en-us~.cab"

Get-OSDCloudMount

Write-Host "Processing Item: $VBSName1..."
Add-WindowsPackage -Path $mountdir -PackagePath $VBS1

Write-Host "Processing Item: $VBSName2..."
Add-WindowsPackage -Path $mountdir -PackagePath $VBS2

Write-Host "Processing Item: $VBSName3..."
Add-WindowsPackage -Path $mountdir -PackagePath $VBS3

Write-Host "Processing Item: $VBSName4..."
Add-WindowsPackage -Path $mountdir -PackagePath $VBS4

Write-Host "Processing item: Setting variables for User Profile Backup and Restore for OSDCloud..." -ForegroundColor Green

$UPBROrgFile = "C:\OSDCloud\GitHub\downloads\UserProfileBackupRestore.exe"
$UPBRNewName = "C:\OSDCloud\GitHub\downloads\UPBR.exe"
$UPBRDestination = "$mountdir\Utils"

Write-Host "Processing item: Renaming User Profile Backup and Restore for OSDCloud..." -ForegroundColor Green

Rename-Item -Path $UPBROrgFile -NewName $UPBRNewName

Get-OSDCloudMount

mkdir "$mountdir\Utils"

Write-Host "Processing item: Copying User Profile Backup and Restore for OSDCloud..." -ForegroundColor Green

Copy-item -Path $UPBRNewName -Destination $UPBRDestination


Get-OSDCloudDismount


