$OSDUtilitiesSoftwareLogs = "C:\OSDCloud\DeploymentLogs\ADV\$env:computername-OSDUtilitiesSoftware.log"
Start-Transcript -Path $OSDUtilitiesSoftwareLogs

# Utilities Software

Write-Host
Write-Host
Write-Host "Step 3 : Sytem Utilities Software" -ForegroundColor Cyan
Write-Host
Write-Host

$Utilitiesapp1 = "AIDA64 Engineer"
$Utilitiesapp2 = "7-Zip"
$Utilitiesapp3 = "CCleaner"
$Utilitiesapp4 = "IObit Driver Booster"
$Utilitiesapp5 = "Wise Registry Cleaner"
$Utilitiesapp6 = "Windows Admin Center"
$Utilitiesapp7 = "Windows 11 22H2 SDK"
$Utilitiesapp8 = "Windows 11 22H2 ADK"
$Utilitiesapp9 = "Windows 11 22H2 ADK PE Add-On"
$Utilitiesapp10 = "Starwind V2V Converter"
$Utilitiesapp11 = "Cinebench 2024"
$Utilitiesapp12 = "Lian Li L-Connect 3"
$Utilitiesapp13 = "Fan Control"
$Utilitiesapp14 = "Samsung Magician"
$Utilitiesapp15 = "3DMark Professional"
$Utilitiesapp16 = "PCMark 10"
$Utilitiesapp17 = "Elgato Stream Deck"
$Utilitiesapp18 = "G.Skill WigiDash"
$Utilitiesapp19 = "G.Skill Trident Z and Z5 Lighting Control Software"
$Utilitiesapp20 = "Sapphire TriXX Video Card Software"
$Utilitiesapp21 = "Display Driver Uninstaller"
$Utilitiesapp22 = "Rufus"
$Utilitiesapp23 = "Sonos"
$Utilitiesapp24 = "SoundBlaster Command"
$Utilitiesapp25 = "Cystal Disk Info"
$Utilitiesapp26 = "Crystal DiskMark"
$Utilitiesapp27 = "Logitech Unifying Software"
$Utilitiesapp28 = "Logitech Options"

Write-Host "Installing System Utilities Applications on $env:computername..." -ForegroundColor Green

Write-Host "Installing System Utilities Software 1 of 28..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Utilitiesapp1 on $env:computername..." -Verbose
winget install --id FinalWire.AIDA64.Engineer --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing System Utilities Software 2 of 28..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Utilitiesapp2..." -Verbose
winget install --id 7zip.7zip --exact --accept-source-agreements --accept-source-agreements --force

Write-Host "Installing System Utilities Software 3 of 28..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Utilitiesapp3..." -Verbose
winget install --id Piriform.CCleaner --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing System Utilities Software 4 of 28..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Utilitiesapp4..." -Verbose
winget install --id IObit.DriverBooster --exact --accept-source-agreements --accept-source-agreements --force

Write-Host "Installing System Utilities Software 5 of 28..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Utilitiesapp5..." -Verbose
winget install --id XPDLS1XBTXVPP4 --exact --accept-source-agreements --accept-source-agreements --force

Write-Host "Installing System Utilities Software 6 of 28..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Utilitiesapp6..." -Verbose
winget install --id Microsoft.WindowsAdminCenter --exact --accept-source-agreements --accept-source-agreements --force

Write-Host "Installing System Utilities Software 7 of 28..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Acquiring $Utilitiesapp7 setup file from OSDCloudCline GitHub OSDCloud\OS Kits repository...." -Verbose 
$OSDCloudGHdownloads = "C:\OSDCloud\GitHub\downloads"
$Win11_22H2SDK = "C:\OSDCloud\GitHub\downloads\winsdksetup.exe"
$Win11_22H2SDKUrl = 'https://github.com/osdcloudcline/OSDCloud/raw/main/OS%20Kits/winsdksetup.exe'
Write-Verbose "Processing and Downloading: $Utilitiesapp7 Setup File..." -Verbose
Save-WebFile -SourceUrl $Win11_22H2SDKUrl -DestinationDirectory $OSDCloudGHdownloads

Start-Process -FilePath $Win11_22H2SDK

pause

Write-Host "Installing System Utilities Software 8 of 28..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Acquiring $Utilitiesapp8 setup file from OSDCloudCline GitHub OSDCloud\OS Kits repository...." -Verbose 
$OSDCloudGHdownloads = "C:\OSDCloud\GitHub\downloads"
$Win11_22H2ADK = "C:\OSDCloud\GitHub\downloads\adksetup.exe"
$Win11_22H2ADKUrl = 'https://github.com/osdcloudcline/OSDCloud/raw/main/OS%20Kits/adksetup.exe'
Write-Verbose "Processing and Downloading: $Utilitiesapp8 Setup File..." -Verbose
Save-WebFile -SourceUrl $Win11_22H2ADKUrl -DestinationDirectory $OSDCloudGHdownloads

Start-Process -FilePath $Win11_22H2ADK

pause

Write-Host "Installing System Utilities Software 9 of 28..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Acquiring $Utilitiesapp7 setup file from OSDCloudCline GitHub OSDCloud\OS Kits repository...." -Verbose
$OSDCloudGHdownloads = "C:\OSDCloud\GitHub\downloads"
$Win11_22H2PEADK = "C:\OSDCloud\GitHub\downloads\adkwinpesetup.exe"
$Win11_22H2PEADKUrl = 'https://github.com/osdcloudcline/OSDCloud/raw/main/OS%20Kits/adkwinpesetup.exe'
Write-Verbose "Processing and Downloading: $Utilitiesapp9 Setup File..." -Verbose
Save-WebFile -SourceUrl $Win11_22H2PEADKUrl -DestinationDirectory $OSDCloudGHdownloads

Start-Process -FilePath $Win11_22H2PEADK 

pause

Write-Host "Installing System Utilities Software 10 of 28..." -ForegroundColor Cyan
Write-Host
$OSDCloudGHdownloads = "C:\OSDCloud\GitHub\downloads"
$StarwindV2VConverterURL = "https://www.starwindsoftware.com/tmplink/starwindconverter.exe"
$V2VConverter = "C:\OSDCloud\GitHub\downloads\starwindconverter.exe"
Write-Verbose "Acquiring $Utilitiesapp10 setup file from the internet...." -Verbose
Save-WebFile -SourceUrl $StarwindV2VConverterURL -DestinationDirectory $OSDCloudGHdownloads
Write-Verbose "Installing $Utilitiesapp10..." -Verbose
Start-Process -FilePath $V2VConverter

pause

Write-Host "Installing System Utilities Software 11 of 28..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Utilitiesapp11..." -Verbose
choco install cinebench -y

Write-Host "Installing System Utilities Software 12 of 28..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Utilitiesapp12..." -Verbose
winget install --id LianLi.LConnect3 --exact --accept-source-agreements  --accept-package-agreements --force

Write-Host "Installing System Utilities Software 13 of 28..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Utilitiesapp13..." -Verbose
winget install --id Rem0o.FanControl --exact --accept-source-agreements  --accept-package-agreements --force

Write-Host "Installing System Utilities Software 14 of 28..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Utilitiesapp14..." -Verbose
winget install --id Samsung.SamsungMagician --exact --accept-source-agreements  --accept-package-agreements --force

Write-Host "Installing System Utilities Software 15 of 28..." -ForegroundColor Cyan
Write-Host
$3DMarkLocation = "C:\OSDCloud\downloads\3DMark\3dmark-setup.exe"
Write-Verbose "Installing $Utilitiesapp15..." -Verbose
Start-Process -FilePath $3DMarkLocation

pause

Write-Host "Installing System Utilities Software 16 of 28..." -ForegroundColor Cyan
Write-Host
$PCMarkLocation = "C:\OSDCloud\downloads\PCMark10\INSTALL.exe"
Write-Verbose "Installing $Utilitiesapp16..." -Verbose
Start-Process -FilePath $PCMarkLocation

pause

Write-Host "Installing System Utilities Software 17 of 28..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Utilitiesapp17..." -Verbose
winget install --id Elgato.StreamDeck --exact --accept-source-agreements  --accept-package-agreements --force

Write-Host "Installing System Utilities Software 18 of 28..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Utilitiesapp18..." -Verbose
$GSkillWigiDashSoftwareURL = "https://github.com/osdcloudcline/OSDCloud/raw/main/Software/GSkill/WigiDash_Manager_Setup_v11889036668.zip"
$WigiDashAIDA64ThemeURL = "https://github.com/osdcloudcline/OSDCloud/raw/main/Software/GSkill/gskill_wigidash_aida64_sensorpanel_theme_v1.4.zip"
$WigiDashPDFURL = "https://github.com/osdcloudcline/OSDCloud/blob/main/Software/GSkill/wigidash-pc-command-panel-tutorial-guide-v2024.04.02i-eng.pdf"
$WigiDashGettingStartedURL = "https://github.com/osdcloudcline/OSDCloud/blob/main/Software/GSkill/wigidash-quick-start-guide.pdf"
$OSDCloudGSkillWigiDashSWdownloads = "C:\OSDCloud\downloads\GSkill\WigiDash\Software"
$WigiDashAIDA64Themedownloads = "C:\OSDCloud\downloads\GSkill\WigiDash\AIDA64\Theme"
$WigiDashPDF = "C:\OSDCloud\downloads\GSkill\WigiDash"
Write-Host "Downloading $Utilitiesapp18 Files from www.gskill.com..." -ForegroundColor Cyan
Write-Verbose "Downloading WigiDash Software..." -Verbose
Save-WebFile -SourceUrl $GSkillWigiDashSoftwareURL -DestinationDirectory $OSDCloudGSkillWigiDashSWdownloads
Write-Verbose "Downloading WigiDash AIDA64 Theme..." -Verbose
Save-WebFile -SourceUrl $WigiDashAIDA64ThemeURL -DestinationDirectory $WigiDashAIDA64Themedownloads
Write-Verbose "Downloading WigiDash en-US PDF Manual..." -Verbose
Save-WebFile -SourceUrl $WigiDashPDFURL -DestinationDirectory $WigiDashPDF
Write-Host
Write-Verbose "Downloading WigiDash en-US Getting Started PDF Manual..." -Verbose
Save-WebFile -SourceUrl $WigiDashGettingStartedURL -DestinationDirectory $WigiDashPDF
Write-Host
Write-Verbose "Expanding WigiDash Software ZIP file..." -Verbose
Expand-Archive -Path "$OSDCloudGSkillWigiDashSWdownloads\WigiDash_Manager_Setup_v11889036668.zip" -Destination $OSDCloudGSkillWigiDashSWdownloads
Write-Verbose "Expanding WigiDash AIDA64 Theme ZIP file..." -Verbose
Expand-Archive -Path "$WigiDashAIDA64Themedownloads\gskill_wigidash_aida64_sensorpanel_theme_v1.4.zip" -Destination $OSDCloudGSkillWigiDashSWdownloads


Write-Host "Installing System Utilities Software 19 of 28..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Utilitiesapp19..." -Verbose
$GSkillRAMLightingSoftwareURL = "https://github.com/osdcloudcline/OSDCloud/raw/main/Software/GSkill/G.SKILL-Trident-Z-Lighting-Control-v1.00.35.zip"
$GSkillRAMLightingPDFURL = "https://github.com/osdcloudcline/OSDCloud/blob/main/Software/GSkill/Trident_Z_Lighting_Control_Software_Guide_1.19g.pdf"
$OSDCloudGSkillRAMLightingSWdownloads = "C:\OSDCloud\downloads\GSkill\RAM Lighting\Software"
$RAMLightinghPDF = "C:\OSDCloud\downloads\GSkill\RAM Lighting"
Write-Host "Downloading $Utilitiesapp19 Files from www.gskill.com..." -ForegroundColor Cyan
Write-Verbose "Downloading $Utilitiesapp19..." -Verbose
Save-WebFile -SourceUrl $GSkillRAMLightingSoftwareURL -DestinationDirectory $OSDCloudGSkillRAMLightingSWdownloads
Write-Verbose "Downloading $Utilitiesapp19 en-US PDF Manual..." -Verbose
Save-WebFile -SourceUrl $GSkillRAMLightingPDFURL -DestinationDirectory $RAMLightinghPDF
Write-Host
Write-Verbose "Expanding $Utilitiesapp19 ZIP file..." -Verbose
Expand-Archive -Path "$OSDCloudGSkillRAMLightingSWdownloads\G.SKILL-Trident-Z-Lighting-Control-v1.00.35.zip" -Destination $OSDCloudGSkillRAMLightingSWdownloads

Write-Host "Installing System Utilities Software 20 of 28..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Utilitiesapp20..." -Verbose
$SapphireTRIXXURL = "https://cdn.sapphiretech.global/assets/software/TRIXX_9.7.0.zip"
$OSDCloudSapphiredownloads = "C:\OSDCloud\downloads\Sapphire\VideoCards"
Write-Host "Downloading $Utilitiesapp20 Files from www.sapphiretech.com/en/software..." -ForegroundColor Cyan
Write-Verbose "Downloading $Utilitiesapp20..." -Verbose
Save-WebFile -SourceUrl $SapphireTRIXXURL -DestinationDirectory $OSDCloudSapphiredownloads
Write-Host
Write-Verbose "Expanding $Utilitiesapp20 ZIP file..." -Verbose
Expand-Archive -Path "$OSDCloudSapphiredownloads\TRIXX_9.7.0.zip" -Destination $OSDCloudSapphiredownloads

Write-Host "Installing System Utilities Software 21 of 28..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Utilitiesapp21..." -Verbose
winget install --id Wagnardsoft.DisplayDriverUninstaller --exact --accept-source-agreements  --accept-package-agreements --force

Write-Host "Installing System Utilities Software 22 of 28..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Utilitiesapp22..." -Verbose
winget install --id Rufus.Rufus --exact --accept-source-agreements  --accept-package-agreements --force

Write-Host "Installing System Utilities Software 23 of 28..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Utilitiesapp23..." -Verbose
winget install --id Sonos.Controller --exact --accept-source-agreements  --accept-package-agreements --force

Write-Host "Installing System Utilities Software 24 of 28..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Utilitiesapp24..." -Verbose
winget install --id CreativeTechnology.SoundBlasterCommand --exact --accept-source-agreements  --accept-package-agreements --force

Write-Host "Installing System Utilities Software 25 of 28..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Utilitiesapp25..." -Verbose
winget install --id CrystalDewWorld.CrystalDiskInfo --exact --accept-source-agreements  --accept-package-agreements --force

Write-Host "Installing System Utilities Software 26 of 28..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Utilitiesapp26..." -Verbose
winget install --id CrystalDewWorld.CrystalDiskMark --exact --accept-source-agreements  --accept-package-agreements --force

Write-Host "Installing System Utilities Software 27 of 28..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Utilitiesapp27..." -Verbose
winget install --id Logitech.UnifyingSoftware --exact --accept-source-agreements  --accept-package-agreements --force

Write-Host "Installing System Utilities Software 28 of 28..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Utilitiesapp28..." -Verbose
winget install --id Logitech.Options --exact --accept-source-agreements  --accept-package-agreements --force

Write-Host "All System Utility software successfully installed" -ForegroundColor Green

Stop-Transcript
