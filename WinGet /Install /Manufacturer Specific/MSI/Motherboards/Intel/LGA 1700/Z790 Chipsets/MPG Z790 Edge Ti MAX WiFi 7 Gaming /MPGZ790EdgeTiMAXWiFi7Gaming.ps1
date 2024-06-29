Write-Host '                                                                                                           ' -BackgroundColor White 
Write-Host '  The following MSI Intel LGA 1700 MPG Z-790 Edge Ti WiFi 7 Gaming motherboard drivers will be downloaded: ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Onboard and dedicated Audio Drivers                                                                    ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Onboard and dedicated Video Drivers                                                                    ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Onboard Network Card Drivers                                                                           ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Storage Drivers                                                                                        ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - System and Chipset Drivers                                                                             ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Printer Drivers                                                                                        ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Latest UEFI BIOS File                                                                                  ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                                                           ' -BackgroundColor White 



####################################
##  Download File URLs 
####################################


### Onboard Audio

$OnboardAudio1URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Audio/On-board/MSI-USB-Audio-FW-Update-Tool_INTEL.zip"
$OnboardAudio2URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Audio/On-board/realtek_audio_USB_R.zip"

### Onboard Video

$OnboardVideo1URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Video/On-Board/Graphics.zip.001"
$OnboardVideo2URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Video/On-Board/Graphics.zip.002"
$OnboardVideo3URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Video/On-Board/Graphics.zip.003"
$OnboardVideo4URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Video/On-Board/Graphics.zip.004"
$OnboardVideo5URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Video/On-Board/Graphics.zip.005"
$OnboardVideo6URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Video/On-Board/Graphics.zip.006"
$OnboardVideo7URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Video/On-Board/Graphics.zip.007"
$OnboardVideo8URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Video/On-Board/Graphics.zip.008"
$OnboardVideo9URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Video/On-Board/Graphics.zip.009"
$OnboardVideo10URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Video/On-Board/Graphics.zip.010"
$OnboardVideo11URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Video/On-Board/Graphics.zip.011"
$OnboardVideo12URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Video/On-Board/Graphics.zip.012"
$OnboardVideo13URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Video/On-Board/Graphics.zip.013"
$OnboardVideo14URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Video/On-Board/Graphics.zip.014"
$OnboardVideo15URL = ""
$OnboardVideo16URL = ""
$OnboardVideo17URL = ""
$OnboardVideo18URL = ""
$OnboardVideo19URL = ""
$OnboardVideo20URL = ""
$OnboardVideo21URL = ""
$OnboardVideo22URL = ""
$OnboardVideo23URL = ""
$OnboardVideo24URL = ""
$OnboardVideo25URL = ""
$OnboardVideo26URL = ""
$OnboardVideo27URL = ""
$OnboardVideo28URL = ""
$OnboardVideo29URL = ""
$OnboardVideo30URL = ""
$OnboardVideo31URL = ""


### Onboard Network Card
$OnboardNIC1URL = ""
$OnboardNIC2URL = ""
$OnboardNIC3URL = ""

### Storage Drivers

$Storage1URL = ""


### System and Chipset Drivers

$SystemChipset1URL = ""

### Printer Drivers


### Dedicated Video card

$AMDRadeon1URL = ""
$AMDRadeon2URL = ""
$AMDRadeon3URL = ""
$AMDRadeon4URL = ""
$AMDRadeon5URL = ""
$AMDRadeon6URL = ""
$AMDRadeon7URL = ""
$AMDRadeon8URL = ""
$AMDRadeon9URL = ""
$AMDRadeon10URL = ""
$AMDRadeon11URL = ""
$AMDRadeon12URL = ""
$AMDRadeon13URL = ""
$AMDRadeon14URL = ""
$AMDRadeon15URL = ""
$AMDRadeon16URL = ""
$AMDRadeon17URL = ""
$AMDRadeon18URL = ""
$AMDRadeon19URL = ""
$AMDRadeon20URL = ""
$AMDRadeon21URL = ""
$AMDRadeon22URL = ""
$AMDRadeon23URL = ""
$AMDRadeon24URL = ""
$AMDRadeon25URL = ""
$AMDRadeon26URL = ""
$AMDRadeon27URL = ""
$AMDRadeon28URL = ""
$AMDRadeon29URL = ""
$AMDRadeon30URL = ""
$AMDRadeon31URL = ""
$AMDRadeon32URL = ""
$AMDRadeon33URL = ""
$AMDRadeon34URL = ""
$AMDRadeon35URL = ""
$AMDRadeon36URL = ""


### Dedicated Audio card

$SounblasterAudioURL = ""

### Monitor Drivers


#################################################
##  Extraction Locations
#################################################
