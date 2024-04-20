Function Get-OSDCloudMount(){
$OSDCloudMountQues = Read-Host -Prompt 'Is the OSD Cloud boot.wim already mounted?'
If(($OSDCloudMountQues -eq "Y") -or ($OSDCloudMountQues -eq "y") -or ($OSDCloudMountQues -eq "Yes") -or ($OSDCloudMountQues -eq "yes")){
$OSDCloudMountDir = Read-Host -Prompt 'Please provide current mount directory'
}
ElseIf(($OSDCloudMountQues -eq "N") -or ($OSDCloudMountQues -eq "n") -or ($OSDCloudMountQues -eq "No") -or ($OSDCloudMountQues -eq "no")){
$OSDCloudWIM = Read-Host 'Please Specify the location of your OSDCloud boot.wim file'
$mountdir = Read-Host 'Please specify the mount point'
Write-Host "Mounting OSDCloud boot.wim..." 
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
###########         OSDCloud VBS Script EXTRACTION LOCATION            ################
#######################################################################################

$OSDCloudVBS_Extract = "C:\OSDCloud\GitHub\downloads\VBSScript"

#######################################################################################
####               DELL ALIENWARE NETWORK DRIVER URLS                 #################
#######################################################################################

$OSDCloudAWDELLAPM_URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/Dell%20/Laptops%20/Alienware/Alienware-OSDCloud-AirplaneMode.zip"

$OSDCloudAWDELLIntel1_URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/Dell%20/Laptops%20/Alienware/Alienware-OSDCloud-IntelDrivers1.zip"
$OSDCloudAWDELLIntel2_URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/Dell%20/Laptops%20/Alienware/Alienware-OSDCloud-IntelDrivers2.zip"
$OSDCloudAWDELLIntel3_URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/Dell%20/Laptops%20/Alienware/Alienware-OSDCloud-IntelDrivers3.zip"

$OSDCloudAWDELLKiller1_URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/Dell%20/Laptops%20/Alienware/Alienware-OSDCloud-KillerNICDrivers1.zip"
$OSDCloudAWDELLKiller2_URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/Dell%20/Laptops%20/Alienware/Alienware-OSDCloud-KillerNICDrivers2.zip"
$OSDCloudAWDELLKiller3A_URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/Dell%20/Laptops%20/Alienware/Alienware-OSDCloud-KillerNICDrivers3A.zip"
$OSDCloudAWDELLKiller3B_URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/Dell%20/Laptops%20/Alienware/Alienware-OSDCloud-KillerNICDrivers3B.zip"
$OSDCloudAWDELLKiller4_URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/Dell%20/Laptops%20/Alienware/Alienware-OSDCloud-KillerNICDrivers4.zip"

$OSDCloudAWDELLKillerWiFi1_URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/Dell%20/Laptops%20/Alienware/Alienware-OSDCloud-KillerWiFi1.zip"
$OSDCloudAWDELLKillerWiFi2_URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/Dell%20/Laptops%20/Alienware/Alienware-OSDCloud-KillerWiFi2.zip"
$OSDCloudAWDELLKillerWiFi3_URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/Dell%20/Laptops%20/Alienware/Alienware-OSDCloud-KillerWiFi3.zip"
$OSDCloudAWDELLKillerWiFi4_URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/Dell%20/Laptops%20/Alienware/Alienware-OSDCloud-KillerWiFi4.zip"
$OSDCloudAWDELLKillerWiFi5_URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/Dell%20/Laptops%20/Alienware/Alienware-OSDCloud-KillerWiFi5.zip"

$OSDCloudAWDELLMediaTek1_URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/Dell%20/Laptops%20/Alienware/Alienware-OSDCloud-MediaTek-NIC1Drivers.zip"
$OSDCloudAWDELLMediaTek2_URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/Dell%20/Laptops%20/Alienware/Alienware-OSDCloud-MediaTek-NIC2Drivers.zip"

$OSDCloudAWDELLQualcommWiFi1_URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/Dell%20/Laptops%20/Alienware/Alienware-OSDCloud-QualcommBTWiFi1.zip"
$OSDCloudAWDELLQualcommWiFi2_URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/Dell%20/Laptops%20/Alienware/Alienware-OSDCloud-QualcommBTWiFi2.zip"
$OSDCloudAWDELLQualcommWiFi3_URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/Dell%20/Laptops%20/Alienware/Alienware-OSDCloud-QualcommWiFi1.zip"

$OSDCloudAWDELLRealtek1_URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/Dell%20/Laptops%20/Alienware/Alienware-OSDCloud-RealtekUSB-GB-NICDrivers.zip"



#######################################################################################
####               DELL ALIENWARE STORAGE DRIVER URLS                 #################
#######################################################################################

$OSDCloudAWDELL_IRST_Storage1_URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/Dell%20/Laptops%20/Alienware/Alienware-OSDCloud-StorageDrivers.zip"

#######################################################################################
####            OSDCloud Downloads, ESXI and DELL ALIENWARE GITHUB DOWNLOADS      #####
#######################################################################################

$GHdownloads = "C:\Drivers\OSDCloud\Dell\Alienware\GitHub\downloads"
$VMGHdownloads = "C:\Drivers\OSDCloud\VMWare\ESXI\GitHub\downloads"
$OSDCloudGHdownloads = "C:\OSDCloud\GitHub\downloads"

#######################################################################################
####               VBS SCRIPT SUPPORT URL                             #################
#######################################################################################

$VBSScriptSupport_URL = "https://github.com/osdcloudcline/OSDCloud/raw/main/Scripting%20Support/VBScriptCABFiles.zip"

######################################################################################
####    USER PROFILE BACKUP AND RESTORE URL                                    #######
######################################################################################

$UPBR_URL = "https://github.com/osdcloudcline/OSDCloud/raw/main/User%20Profile%20Backup%20Restore/UserProfileBackupRestore.exe"
$UPBRFilePath = "C:\OSDCloud\GitHub\downloads\UserProfileBackupRestore.exe"

Start-Transcript -Path "C:\OSDCloud\Logs\Dell\Laptops\Alienware.log"

Write-Host "Configuring OSD PowerShell Modules..." -ForegroundColor Green

Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck -Verbose
Import-Module -Name OSD -Force

Write-Host "Acquiring DELL Alienware Network Card, WiFi and Bluetooth Drivers from GitHub repository..." -ForegroundColor Green
Save-WebFile -SourceUrl $OSDCloudAWDELLAPM_URL -DestinationDirectory $GHdownloads
Save-WebFile -SourceUrl $OSDCloudAWDELLIntel1_URL -DestinationDirectory $GHdownloads
Save-WebFile -SourceUrl $OSDCloudAWDELLIntel2_URL -DestinationDirectory $GHdownloads
Save-WebFile -SourceUrl $OSDCloudAWDELLIntel3_URL -DestinationDirectory $GHdownloads

Save-WebFile -SourceUrl $OSDCloudAWDELLKiller1_URL -DestinationDirectory $GHdownloads
Save-WebFile -SourceUrl $OSDCloudAWDELLKiller2_URL -DestinationDirectory $GHdownloads
Save-WebFile -SourceUrl $OSDCloudAWDELLKiller3A_URL -DestinationDirectory $GHdownloads
Save-WebFile -SourceUrl $OSDCloudAWDELLKiller3B_URL -DestinationDirectory $GHdownloads
Save-WebFile -SourceUrl $OSDCloudAWDELLKiller4_URL -DestinationDirectory $GHdownloads

Save-WebFile -SourceUrl $OSDCloudAWDELLKillerWiFi1_URL -DestinationDirectory $GHdownloads
Save-WebFile -SourceUrl $OSDCloudAWDELLKillerWiFi2_URL -DestinationDirectory $GHdownloads
Save-WebFile -SourceUrl $OSDCloudAWDELLKillerWiFi3_URL -DestinationDirectory $GHdownloads
Save-WebFile -SourceUrl $OSDCloudAWDELLKillerWiFi4_URL -DestinationDirectory $GHdownloads
Save-WebFile -SourceUrl $OSDCloudAWDELLKillerWiFi5_URL -DestinationDirectory $GHdownloads

Save-WebFile -SourceUrl $OSDCloudAWDELLMediaTek1_URL -DestinationDirectory $GHdownloads
Save-WebFile -SourceUrl $OSDCloudAWDELLMediaTek2_URL -DestinationDirectory $GHdownloads

Save-WebFile -SourceUrl $OSDCloudAWDELLQualcommWiFi1_URL -DestinationDirectory $GHdownloads
Save-WebFile -SourceUrl $OSDCloudAWDELLQualcommWiFi2_URL -DestinationDirectory $GHdownloads
Save-WebFile -SourceUrl $OSDCloudAWDELLQualcommWiFi3_URL -DestinationDirectory $GHdownloads

Save-WebFile -SourceUrl $OSDCloudAWDELLRealtek1_URL -DestinationDirectory $GHdownloads

Write-Host
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host "Acquiring DELL Alienware Storage Drivers from GitHub repository..." -ForegroundColor Green

Save-WebFile -SourceUrl $OSDCloudAWDELL_IRST_Storage1_URL -DestinationDirectory $GHdownloads

Write-Host "DELL Alienware downloads completed..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host "Extracting DELL Alienware Network Card, WiFi and Bluetooth Drivers..." -ForegroundColor Green

Expand-Archive -Path "$GHdownloads\Alienware-OSDCloud-AirplaneMode.zip" -DestinationPath "$AWOSDCloudAPM_Extract" 
Expand-Archive -Path "$GHdownloads\Alienware-OSDCloud-IntelDrivers1.zip" -DestinationPath "$AWOSDCloudIntelDrivers1_Extract"
Expand-Archive -Path "$GHdownloads\Alienware-OSDCloud-IntelDrivers2.zip" -DestinationPath "$AWOSDCloudIntelDrivers2_Extract"
Expand-Archive -Path "$GHdownloads\Alienware-OSDCloud-IntelDrivers3.zip" -DestinationPath "$AWOSDCloudIntelDrivers3_Extract"
Expand-Archive -Path "$GHdownloads\Alienware-OSDCloud-KillerNICDrivers1.zip" -DestinationPath "$AWOSDCloudKillerNICDrivers1_Extract"
Expand-Archive -Path "$GHdownloads\Alienware-OSDCloud-KillerNICDrivers2.zip" -DestinationPath "$AWOSDCloudKillerNICDrivers2_Extract"
Expand-Archive -Path "$GHdownloads\Alienware-OSDCloud-KillerNICDrivers3A.zip" -DestinationPath "$AWOSDCloudKillerNICDrivers3A_Extract"
Expand-Archive -Path "$GHdownloads\Alienware-OSDCloud-KillerNICDrivers3B.zip" -DestinationPath "$AWOSDCloudKillerNICDrivers3B_Extract"
Expand-Archive -Path "$GHdownloads\Alienware-OSDCloud-KillerNICDrivers4.zip" -DestinationPath "$AWOSDCloudKillerNICDrivers4_Extract"
Expand-Archive -Path "$GHdownloads\Alienware-OSDCloud-KillerWiFi1.zip" -DestinationPath "$AWOSDCloudKillerWiFiDrivers1_Extract"
Expand-Archive -Path "$GHdownloads\Alienware-OSDCloud-KillerWiFi2.zip" -DestinationPath "$AWOSDCloudKillerWiFiDrivers2_Extract" 
Expand-Archive -Path "$GHdownloads\Alienware-OSDCloud-KillerWiFi3.zip" -DestinationPath "$AWOSDCloudKillerWiFiDrivers3_Extract"
Expand-Archive -Path "$GHdownloads\Alienware-OSDCloud-KillerWiFi4.zip" -DestinationPath "$AWOSDCloudKillerWiFiDrivers4_Extract"
Expand-Archive -Path "$GHdownloads\Alienware-OSDCloud-KillerWiFi5.zip" -DestinationPath "$AWOSDCloudKillerWiFiDrivers5_Extract"
Expand-Archive -Path "$GHdownloads\Alienware-OSDCloud-MediaTek-NIC1Drivers.zip" -DestinationPath "$AWOSDCloudMediaTekNICDrivers1_Extract"
Expand-Archive -Path "$GHdownloads\Alienware-OSDCloud-MediaTek-NIC2Drivers.zip" -DestinationPath "$AWOSDCloudMediaTekNICDrivers2_Extract"
Expand-Archive -Path "$GHdownloads\Alienware-OSDCloud-QualcommBTWiFi1.zip" -DestinationPath "$AWOSDCloudQualcommWiFiDrivers1_Extract"
Expand-Archive -Path "$GHdownloads\Alienware-OSDCloud-QualcommBTWiFi2.zip" -DestinationPath "$AWOSDCloudQualcommWiFiDrivers2_Extract"
Expand-Archive -Path "$GHdownloads\Alienware-OSDCloud-QualcommWiFi1.zip" -DestinationPath "$AWOSDCloudQualcommWiFiDrivers3_Extract"
Expand-Archive -Path "$GHdownloads\Alienware-OSDCloud-RealtekUSB-GB-NICDrivers.zip" -DestinationPath "$AWOSDCloudRealtekDrivers1_Extract"


Write-Host "Extracting DELL Alienware Storage Drivers..." -ForegroundColor Green

Expand-Archive -Path "$GHdownloads\Alienware-OSDCloud-StorageDrivers.zip" -DestinationPath "$AWOSDCloudIRSTDrivers1_Extract"

Write-Host "Acquiring VBS Script Support CAB Files from GitHub repository..." -ForegroundColor Green
Save-WebFile -SourceUrl $VBSScriptSupport_URL -DestinationDirectory $OSDCloudGHdownloads

Write-Host "Extracting VBS Script Support CAB Files from ZIP file..." -ForegroundColor Green
Expand-Archive -Path "$OSDCloudGHdownloads\VBScriptCABFiles.zip" -DestinationPath $OSDCloudVBS_Extract

Write-Host "Creating OSDCloud Template..." -ForegroundColor Green
New-OSDCloudTemplate -WinRE WinRE KB5026372

Write-Host "Setting Workspace Path for Dell Alienware OSDCloud ISO..." -ForegroundColor Green
$OSDCloudWorkspace = "C:\OSDCloud\Dell\Laptops\Alienware"
Set-OSDCloudWorkspace -WorkspacePath $OSDCloudWorkspace
Get-OSDCloudWorkspace

Write-Host "Acquiring User Profile Backup and Restore from GitHub repository..." -ForegroundColor Green
Save-WebFile -SourceUrl $UPBR_URL -DestinationDirectory $OSDCloudGHdownloads
Rename-Item -Path $UPBRFilePath -NewName "C:\OSDCloud\GitHub\downloads\UPBR.exe"
Get-OSDCloudMount
Copy-Item -Path $UPBRFilePath -Destination $mountdir 
Get-OSDCloudDismount

Write-Host "Integrating DELL Alienware Network Card, WiFi and Bluetooth Drivers into OSDCloud..." -ForegroundColor Green
Edit-OSDCloudWinPE -DriverPath "C:\Drivers\OSDCloud\Dell\Alienware\Network"

Write-Host "Integrating DELL Alienware Storage Drivers into OSDCloud..." -ForegroundColor Green
Edit-OSDCloudWinPE -DriverPath "C:\Drivers\OSDCloud\Dell\Alienware\Storage"

Write-Host "Integrating VMWare ESXI Drivers into OSDCloud..." -ForegroundColor Green
Edit-OSDCloudWinPE -DriverPath "C:\Drivers\OSDCloud\VMWare\ESXI"

Write-Host "Changing OSDCloud wallpaper..." -ForegroundColor Green
$OSDCloudWallpaperURL = "https://github.com/osdcloudcline/OSDCloud/blob/main/Wallpaper/winre-osdcloud.jpg"
Save-WebFile -SourceUrl $OSDCloudWallpaperURL -DestinationDirectory $OSDCloudGHdownloads
Edit-OSDCloudWinPE -Wallpaper "$OSDCloudGHdownloads\winre-osdcloud.jpg"

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

Get-OSDCloudDismount

New-OSDCloudISO

Stop-Transcript
