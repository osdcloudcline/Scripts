Write-Host 'Welcome to the Dell Alienware Software Download Script ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                       ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host 'This script downloads the following:                   ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '    Alienware Control Center                           ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '    Dell Digital Delivery Manager                      ' -ForegroundColor DarkBlue -BackgroundColor White

$AW1 = "Alienware Control Center"
$AW2 = "Dell Digital Delivery Manager"


# Alienware Command Center - Full Installer

$AWCC1URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/Dell%20/Laptops/Alienware/Command%20Center/DellAlienwareCommandCenter.7z.001"
$AWCC2URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/Dell%20/Laptops/Alienware/Command%20Center/DellAlienwareCommandCenter.7z.002"
$AWCC3URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/Dell%20/Laptops/Alienware/Command%20Center/DellAlienwareCommandCenter.7z.003"
$AWCC4URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/Dell%20/Laptops/Alienware/Command%20Center/DellAlienwareCommandCenter.7z.004"
$AWCC5URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/Dell%20/Laptops/Alienware/Command%20Center/DellAlienwareCommandCenter.7z.005"
$AWCC6URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/Dell%20/Laptops/Alienware/Command%20Center/DellAlienwareCommandCenter.7z.006"
$AWCC7URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/Dell%20/Laptops/Alienware/Command%20Center/DellAlienwareCommandCenter.7z.007"
$AWCC8URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/Dell%20/Laptops/Alienware/Command%20Center/DellAlienwareCommandCenter.7z.008"
$AWCC9URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/Dell%20/Laptops/Alienware/Command%20Center/DellAlienwareCommandCenter.7z.009"
$AWCC10URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/Dell%20/Laptops/Alienware/Command%20Center/DellAlienwareCommandCenter.7z.010"
$AWCC11URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/Dell%20/Laptops/Alienware/Command%20Center/DellAlienwareCommandCenter.7z.011"
$AWCC12URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/Dell%20/Laptops/Alienware/Command%20Center/DellAlienwareCommandCenter.7z.012"
$AWCC13URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/Dell%20/Laptops/Alienware/Command%20Center/DellAlienwareCommandCenter.7z.013"
$AWCC14URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/Dell%20/Laptops/Alienware/Command%20Center/DellAlienwareCommandCenter.7z.014"
$AWCC15URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/Dell%20/Laptops/Alienware/Command%20Center/DellAlienwareCommandCenter.7z.015"
$AWCC16URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/Dell%20/Laptops/Alienware/Command%20Center/DellAlienwareCommandCenter.7z.016"
$AWCC17URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/Dell%20/Laptops/Alienware/Command%20Center/DellAlienwareCommandCenter.7z.017"
$AWCC18URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/Dell%20/Laptops/Alienware/Command%20Center/DellAlienwareCommandCenter.7z.018"
$AWCC19URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/Dell%20/Laptops/Alienware/Command%20Center/DellAlienwareCommandCenter.7z.019"
$AWCC20URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/Dell%20/Laptops/Alienware/Command%20Center/DellAlienwareCommandCenter.7z.020"
$AWCC21URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/Dell%20/Laptops/Alienware/Command%20Center/DellAlienwareCommandCenter.7z.021"
$AWCC22URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/Dell%20/Laptops/Alienware/Command%20Center/DellAlienwareCommandCenter.7z.022"
$AWCC23URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/Dell%20/Laptops/Alienware/Command%20Center/DellAlienwareCommandCenter.7z.023"
$AWCC24URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/Dell%20/Laptops/Alienware/Command%20Center/DellAlienwareCommandCenter.7z.024"
$AWCC25URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/Dell%20/Laptops/Alienware/Command%20Center/DellAlienwareCommandCenter.7z.025"
$AWCC26URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/Dell%20/Laptops/Alienware/Command%20Center/DellAlienwareCommandCenter.7z.026"
$AWCC27URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/Dell%20/Laptops/Alienware/Command%20Center/DellAlienwareCommandCenter.7z.027"
$AWCC28URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/Dell%20/Laptops/Alienware/Command%20Center/DellAlienwareCommandCenter.7z.028"
$AWCC29URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/Dell%20/Laptops/Alienware/Command%20Center/DellAlienwareCommandCenter.7z.029"
$AWCC30URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/Dell%20/Laptops/Alienware/Command%20Center/DellAlienwareCommandCenter.7z.030"
$AWCC31URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/Dell%20/Laptops/Alienware/Command%20Center/DellAlienwareCommandCenter.7z.031"
$AWCC32URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/Dell%20/Laptops/Alienware/Command%20Center/DellAlienwareCommandCenter.7z.032"
$AWCC33URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/Dell%20/Laptops/Alienware/Command%20Center/DellAlienwareCommandCenter.7z.033"
$AWCC34URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/Dell%20/Laptops/Alienware/Command%20Center/DellAlienwareCommandCenter.7z.034"
$AWCC35URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/Dell%20/Laptops/Alienware/Command%20Center/DellAlienwareCommandCenter.7z.035"
$AWCC36URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/Dell%20/Laptops/Alienware/Command%20Center/DellAlienwareCommandCenter.7z.036"
$AWCC37URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/Dell%20/Laptops/Alienware/Command%20Center/DellAlienwareCommandCenter.7z.037"
$AWCC38URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/Dell%20/Laptops/Alienware/Command%20Center/DellAlienwareCommandCenter.7z.038"

# Dell Alienware Digital Delivery 

$AWDD1URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/Dell%20/Laptops/Alienware/Digital%20Delivery/AlienwareDigitalDelivery.7z.001"
$AWDD2URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/Dell%20/Laptops/Alienware/Digital%20Delivery/AlienwareDigitalDelivery.7z.002"
$AWDD3URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/Dell%20/Laptops/Alienware/Digital%20Delivery/AlienwareDigitalDelivery.7z.003"


# Dell Downloads Destination Directory

$DellAWDownloads = "C:\OSDCloud\downloads\Dell\Alienware\Control Center"
$DellAWDownloads1 = "C:\OSDCloud\downloads\Dell\Alienware\Digital Delivery"

Write-Host "Processing: $AW1 File 1 of 38" -ForegroundColor Cyan
Save-WebFile -SourceUrl $AWCC1URL -DestinationDirectory $DellAWDownloads
Write-Host "Processing: $AW1 File 2 of 38" -ForegroundColor Cyan
Save-WebFile -SourceUrl $AWCC2URL -DestinationDirectory $DellAWDownloads
Write-Host "Processing: $AW1 File 3 of 38" -ForegroundColor Cyan
Save-WebFile -SourceUrl $AWCC3URL -DestinationDirectory $DellAWDownloads
Write-Host "Processing: $AW1 File 4 of 38" -ForegroundColor Cyan
Save-WebFile -SourceUrl $AWCC4URL -DestinationDirectory $DellAWDownloads
Write-Host "Processing: $AW1 File 5 of 38" -ForegroundColor Cyan
Save-WebFile -SourceUrl $AWCC5URL -DestinationDirectory $DellAWDownloads
Write-Host "Processing: $AW1 File 6 of 38" -ForegroundColor Cyan
Save-WebFile -SourceUrl $AWCC6URL -DestinationDirectory $DellAWDownloads
Write-Host "Processing: $AW1 File 7 of 38" -ForegroundColor Cyan
Save-WebFile -SourceUrl $AWCC7URL -DestinationDirectory $DellAWDownloads
Write-Host "Processing: $AW1 File 8 of 38" -ForegroundColor Cyan
Save-WebFile -SourceUrl $AWCC8URL -DestinationDirectory $DellAWDownloads
Write-Host "Processing: $AW1 File 9 of 38" -ForegroundColor Cyan
Save-WebFile -SourceUrl $AWCC9URL -DestinationDirectory $DellAWDownloads
Write-Host "Processing: $AW1 File 10 of 38" -ForegroundColor Cyan
Save-WebFile -SourceUrl $AWCC10URL -DestinationDirectory $DellAWDownloads
Write-Host "Processing: $AW1 File 11 of 38" -ForegroundColor Cyan
Save-WebFile -SourceUrl $AWCC11URL -DestinationDirectory $DellAWDownloads
Write-Host "Processing: $AW1 File 12 of 38" -ForegroundColor Cyan
Save-WebFile -SourceUrl $AWCC12URL -DestinationDirectory $DellAWDownloads
Write-Host "Processing: $AW1 File 13 of 38" -ForegroundColor Cyan
Save-WebFile -SourceUrl $AWCC13URL -DestinationDirectory $DellAWDownloads
Write-Host "Processing: $AW1 File 14 of 38" -ForegroundColor Cyan
Save-WebFile -SourceUrl $AWCC14URL -DestinationDirectory $DellAWDownloads
Write-Host "Processing: $AW1 File 15 of 38" -ForegroundColor Cyan
Save-WebFile -SourceUrl $AWCC15URL -DestinationDirectory $DellAWDownloads
Write-Host "Processing: $AW1 File 16 of 38" -ForegroundColor Cyan
Save-WebFile -SourceUrl $AWCC16URL -DestinationDirectory $DellAWDownloads
Write-Host "Processing: $AW1 File 17 of 38" -ForegroundColor Cyan
Save-WebFile -SourceUrl $AWCC17URL -DestinationDirectory $DellAWDownloads
Write-Host "Processing: $AW1 File 18 of 38" -ForegroundColor Cyan
Save-WebFile -SourceUrl $AWCC18URL -DestinationDirectory $DellAWDownloads
Write-Host "Processing: $AW1 File 19 of 38" -ForegroundColor Cyan
Save-WebFile -SourceUrl $AWCC19URL -DestinationDirectory $DellAWDownloads
Write-Host "Processing: $AW1 File 20 of 38" -ForegroundColor Cyan
Save-WebFile -SourceUrl $AWCC20URL -DestinationDirectory $DellAWDownloads
Write-Host "Processing: $AW1 File 21 of 38" -ForegroundColor Cyan
Save-WebFile -SourceUrl $AWCC21URL -DestinationDirectory $DellAWDownloads
Write-Host "Processing: $AW1 File 22 of 38" -ForegroundColor Cyan
Save-WebFile -SourceUrl $AWCC22URL -DestinationDirectory $DellAWDownloads
Write-Host "Processing: $AW1 File 23 of 38" -ForegroundColor Cyan
Save-WebFile -SourceUrl $AWCC23URL -DestinationDirectory $DellAWDownloads
Write-Host "Processing: $AW1 File 24 of 38" -ForegroundColor Cyan
Save-WebFile -SourceUrl $AWCC24URL -DestinationDirectory $DellAWDownloads
Write-Host "Processing: $AW1 File 25 of 38" -ForegroundColor Cyan
Save-WebFile -SourceUrl $AWCC25URL -DestinationDirectory $DellAWDownloads
Write-Host "Processing: $AW1 File 26 of 38" -ForegroundColor Cyan
Save-WebFile -SourceUrl $AWCC26URL -DestinationDirectory $DellAWDownloads
Write-Host "Processing: $AW1 File 27 of 38" -ForegroundColor Cyan
Save-WebFile -SourceUrl $AWCC27URL -DestinationDirectory $DellAWDownloads
Write-Host "Processing: $AW1 File 28 of 38" -ForegroundColor Cyan
Save-WebFile -SourceUrl $AWCC28URL -DestinationDirectory $DellAWDownloads
Write-Host "Processing: $AW1 File 29 of 38" -ForegroundColor Cyan
Save-WebFile -SourceUrl $AWCC29URL -DestinationDirectory $DellAWDownloads
Write-Host "Processing: $AW1 File 30 of 38" -ForegroundColor Cyan
Save-WebFile -SourceUrl $AWCC30URL -DestinationDirectory $DellAWDownloads
Write-Host "Processing: $AW1 File 31 of 38" -ForegroundColor Cyan
Save-WebFile -SourceUrl $AWCC31URL -DestinationDirectory $DellAWDownloads
Write-Host "Processing: $AW1 File 32 of 38" -ForegroundColor Cyan
Save-WebFile -SourceUrl $AWCC32URL -DestinationDirectory $DellAWDownloads
Write-Host "Processing: $AW1 File 33 of 38" -ForegroundColor Cyan
Save-WebFile -SourceUrl $AWCC33URL -DestinationDirectory $DellAWDownloads
Write-Host "Processing: $AW1 File 34 of 38" -ForegroundColor Cyan
Save-WebFile -SourceUrl $AWCC34URL -DestinationDirectory $DellAWDownloads
Write-Host "Processing: $AW1 File 35 of 38" -ForegroundColor Cyan
Save-WebFile -SourceUrl $AWCC35URL -DestinationDirectory $DellAWDownloads
Write-Host "Processing: $AW1 File 36 of 38" -ForegroundColor Cyan
Save-WebFile -SourceUrl $AWCC36URL -DestinationDirectory $DellAWDownloads
Write-Host "Processing: $AW1 File 37 of 38" -ForegroundColor Cyan
Save-WebFile -SourceUrl $AWCC37URL -DestinationDirectory $DellAWDownloads
Write-Host "Processing: $AW1 File 38 of 38" -ForegroundColor Cyan
Save-WebFile -SourceUrl $AWCC38URL -DestinationDirectory $DellAWDownloads
Write-Host 
Write-Host "Processing: $AW1 File Extraction" -ForegroundColor Cyan
Write-Host 
Expand-7Zip -ArchiveFileName "$DellAWDownloads\DellAlienwareCommandCenter.7z.001" -TargetPath $DellAWDownloads -WarningAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$DellAWDownloads\DellAlienwareCommandCenter.7z.002" -TargetPath $DellAWDownloads -WarningAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$DellAWDownloads\DellAlienwareCommandCenter.7z.003" -TargetPath $DellAWDownloads -WarningAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$DellAWDownloads\DellAlienwareCommandCenter.7z.004" -TargetPath $DellAWDownloads -WarningAction SilentlyContinue
Expand-7Zip -ArchiveFileName "$DellAWDownloads\DellAlienwareCommandCenter.7z.005" -TargetPath $DellAWDownloads -WarningAction SilentlyContinue
Expand-7Zip -ArchiveFileName "$DellAWDownloads\DellAlienwareCommandCenter.7z.006" -TargetPath $DellAWDownloads -WarningAction SilentlyContinue
Expand-7Zip -ArchiveFileName "$DellAWDownloads\DellAlienwareCommandCenter.7z.007" -TargetPath $DellAWDownloads -WarningAction SilentlyContinue
Expand-7Zip -ArchiveFileName "$DellAWDownloads\DellAlienwareCommandCenter.7z.008" -TargetPath $DellAWDownloads -WarningAction SilentlyContinue
Expand-7Zip -ArchiveFileName "$DellAWDownloads\DellAlienwareCommandCenter.7z.009" -TargetPath $DellAWDownloads -WarningAction SilentlyContinue
Expand-7Zip -ArchiveFileName "$DellAWDownloads\DellAlienwareCommandCenter.7z.010" -TargetPath $DellAWDownloads -WarningAction SilentlyContinue
Expand-7Zip -ArchiveFileName "$DellAWDownloads\DellAlienwareCommandCenter.7z.011" -TargetPath $DellAWDownloads -WarningAction SilentlyContinue
Expand-7Zip -ArchiveFileName "$DellAWDownloads\DellAlienwareCommandCenter.7z.012" -TargetPath $DellAWDownloads -WarningAction SilentlyContinue
Expand-7Zip -ArchiveFileName "$DellAWDownloads\DellAlienwareCommandCenter.7z.013" -TargetPath $DellAWDownloads -WarningAction SilentlyContinue
Expand-7Zip -ArchiveFileName "$DellAWDownloads\DellAlienwareCommandCenter.7z.014" -TargetPath $DellAWDownloads -WarningAction SilentlyContinue
Expand-7Zip -ArchiveFileName "$DellAWDownloads\DellAlienwareCommandCenter.7z.015" -TargetPath $DellAWDownloads -WarningAction SilentlyContinue
Expand-7Zip -ArchiveFileName "$DellAWDownloads\DellAlienwareCommandCenter.7z.016" -TargetPath $DellAWDownloads -WarningAction SilentlyContinue
Expand-7Zip -ArchiveFileName "$DellAWDownloads\DellAlienwareCommandCenter.7z.017" -TargetPath $DellAWDownloads -WarningAction SilentlyContinue
Expand-7Zip -ArchiveFileName "$DellAWDownloads\DellAlienwareCommandCenter.7z.018" -TargetPath $DellAWDownloads -WarningAction SilentlyContinue
Expand-7Zip -ArchiveFileName "$DellAWDownloads\DellAlienwareCommandCenter.7z.019" -TargetPath $DellAWDownloads -WarningAction SilentlyContinue
Expand-7Zip -ArchiveFileName "$DellAWDownloads\DellAlienwareCommandCenter.7z.020" -TargetPath $DellAWDownloads -WarningAction SilentlyContinue
Expand-7Zip -ArchiveFileName "$DellAWDownloads\DellAlienwareCommandCenter.7z.021" -TargetPath $DellAWDownloads -WarningAction SilentlyContinue
Expand-7Zip -ArchiveFileName "$DellAWDownloads\DellAlienwareCommandCenter.7z.022" -TargetPath $DellAWDownloads -WarningAction SilentlyContinuea
Expand-7Zip -ArchiveFileName "$DellAWDownloads\DellAlienwareCommandCenter.7z.023" -TargetPath $DellAWDownloads -WarningAction SilentlyContinue
Expand-7Zip -ArchiveFileName "$DellAWDownloads\DellAlienwareCommandCenter.7z.024" -TargetPath $DellAWDownloads -WarningAction SilentlyContinue
Expand-7Zip -ArchiveFileName "$DellAWDownloads\DellAlienwareCommandCenter.7z.025" -TargetPath $DellAWDownloads -WarningAction SilentlyContinue
Expand-7Zip -ArchiveFileName "$DellAWDownloads\DellAlienwareCommandCenter.7z.026" -TargetPath $DellAWDownloads -WarningAction SilentlyContinue
Expand-7Zip -ArchiveFileName "$DellAWDownloads\DellAlienwareCommandCenter.7z.027" -TargetPath $DellAWDownloads -WarningAction SilentlyContinue
Expand-7Zip -ArchiveFileName "$DellAWDownloads\DellAlienwareCommandCenter.7z.028" -TargetPath $DellAWDownloads -WarningAction SilentlyContinue
Expand-7Zip -ArchiveFileName "$DellAWDownloads\DellAlienwareCommandCenter.7z.029" -TargetPath $DellAWDownloads -WarningAction SilentlyContinue
Expand-7Zip -ArchiveFileName "$DellAWDownloads\DellAlienwareCommandCenter.7z.030" -TargetPath $DellAWDownloads -WarningAction SilentlyContinue
Expand-7Zip -ArchiveFileName "$DellAWDownloads\DellAlienwareCommandCenter.7z.031" -TargetPath $DellAWDownloads -WarningAction SilentlyContinue
Expand-7Zip -ArchiveFileName "$DellAWDownloads\DellAlienwareCommandCenter.7z.032" -TargetPath $DellAWDownloads -WarningAction SilentlyContinue
Expand-7Zip -ArchiveFileName "$DellAWDownloads\DellAlienwareCommandCenter.7z.033" -TargetPath $DellAWDownloads -WarningAction SilentlyContinue
Expand-7Zip -ArchiveFileName "$DellAWDownloads\DellAlienwareCommandCenter.7z.034" -TargetPath $DellAWDownloads -WarningAction SilentlyContinue
Expand-7Zip -ArchiveFileName "$DellAWDownloads\DellAlienwareCommandCenter.7z.035" -TargetPath $DellAWDownloads -WarningAction SilentlyContinue
Expand-7Zip -ArchiveFileName "$DellAWDownloads\DellAlienwareCommandCenter.7z.036" -TargetPath $DellAWDownloads -WarningAction SilentlyContinue
Expand-7Zip -ArchiveFileName "$DellAWDownloads\DellAlienwareCommandCenter.7z.037" -TargetPath $DellAWDownloads -WarningAction SilentlyContinue
Expand-7Zip -ArchiveFileName "$DellAWDownloads\DellAlienwareCommandCenter.7z.038" -TargetPath $DellAWDownloads -WarningAction SilentlyContinue

Write-Host "Deleting all Compressed Files..." -ForegroundColor Yellow

Remove-Item -Path "$DellAWDownloads\*.7z.001" -Force -Recurse
Remove-Item -Path "$DellAWDownloads\*.7z.002" -Force -Recurse 
Remove-Item -Path "$DellAWDownloads\*.7z.003" -Force -Recurse
Remove-Item -Path "$DellAWDownloads\*.7z.004" -Force -Recurse 
Remove-Item -Path "$DellAWDownloads\*.7z.005" -Force -Recurse
Remove-Item -Path "$DellAWDownloads\*.7z.006" -Force -Recurse 
Remove-Item -Path "$DellAWDownloads\*.7z.007" -Force -Recurse
Remove-Item -Path "$DellAWDownloads\*.7z.008" -Force -Recurse 
Remove-Item -Path "$DellAWDownloads\*.7z.009" -Force -Recurse
Remove-Item -Path "$DellAWDownloads\*.7z.010" -Force -Recurse 
Remove-Item -Path "$DellAWDownloads\*.7z.011" -Force -Recurse
Remove-Item -Path "$DellAWDownloads\*.7z.012" -Force -Recurse 
Remove-Item -Path "$DellAWDownloads\*.7z.013" -Force -Recurse
Remove-Item -Path "$DellAWDownloads\*.7z.014" -Force -Recurse 
Remove-Item -Path "$DellAWDownloads\*.7z.015" -Force -Recurse
Remove-Item -Path "$DellAWDownloads\*.7z.016" -Force -Recurse 
Remove-Item -Path "$DellAWDownloads\*.7z.017" -Force -Recurse
Remove-Item -Path "$DellAWDownloads\*.7z.018" -Force -Recurse 
Remove-Item -Path "$DellAWDownloads\*.7z.019" -Force -Recurse
Remove-Item -Path "$DellAWDownloads\*.7z.020" -Force -Recurse 
Remove-Item -Path "$DellAWDownloads\*.7z.021" -Force -Recurse
Remove-Item -Path "$DellAWDownloads\*.7z.022" -Force -Recurse 
Remove-Item -Path "$DellAWDownloads\*.7z.023" -Force -Recurse
Remove-Item -Path "$DellAWDownloads\*.7z.024" -Force -Recurse 
Remove-Item -Path "$DellAWDownloads\*.7z.025" -Force -Recurse
Remove-Item -Path "$DellAWDownloads\*.7z.026" -Force -Recurse 
Remove-Item -Path "$DellAWDownloads\*.7z.027" -Force -Recurse
Remove-Item -Path "$DellAWDownloads\*.7z.028" -Force -Recurse 
Remove-Item -Path "$DellAWDownloads\*.7z.029" -Force -Recurse
Remove-Item -Path "$DellAWDownloads\*.7z.030" -Force -Recurse 
Remove-Item -Path "$DellAWDownloads\*.7z.031" -Force -Recurse
Remove-Item -Path "$DellAWDownloads\*.7z.032" -Force -Recurse
Remove-Item -Path "$DellAWDownloads\*.7z.033" -Force -Recurse
Remove-Item -Path "$DellAWDownloads\*.7z.034" -Force -Recurse 
Remove-Item -Path "$DellAWDownloads\*.7z.035" -Force -Recurse
Remove-Item -Path "$DellAWDownloads\*.7z.036" -Force -Recurse 
Remove-Item -Path "$DellAWDownloads\*.7z.037" -Force -Recurse
Remove-Item -Path "$DellAWDownloads\*.7z.038" -Force -Recurse 
Write-Host
Write-Host "Completed Processing: $AW1" -ForegroundColor Cyan
Write-Host

Write-Host "Processing: $AW2 File 1 of 3" -ForegroundColor Cyan
Save-WebFile -SourceUrl $AWDD1URL -DestinationDirectory $DellAWDownloads1
Write-Host "Processing: $AW2 File 2 of 3" -ForegroundColor Cyan
Save-WebFile -SourceUrl $AWDD2URL -DestinationDirectory $DellAWDownloads1
Write-Host "Processing: $AW2 File 3 of 3" -ForegroundColor Cyan
Save-WebFile -SourceUrl $AWDD3URL -DestinationDirectory $DellAWDownloads1
Write-Host 
Write-Host "Processing: $AW2 File Extraction" -ForegroundColor Cyan
Write-Host
Expand-7Zip -ArchiveFileName "$DellAWDownloads1\AlienwareDigitalDelivery.7z.001" -TargetPath $DellAWDownloads1 -WarningAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$DellAWDownloads1\AlienwareDigitalDelivery.7z.002" -TargetPath $DellAWDownloads1 -WarningAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$DellAWDownloads1\AlienwareDigitalDelivery.7z.003" -TargetPath $DellAWDownloads1 -WarningAction SilentlyContinue 
Write-Host 
Write-Host "Deleting all Compressed Files..." -ForegroundColor Yellow
Write-Host
Remove-Item -Path "$DellAWDownloads1\*.7z.001" -Force -Recurse
Remove-Item -Path "$DellAWDownloads1\*.7z.002" -Force -Recurse 
Remove-Item -Path "$DellAWDownloads1\*.7z.003" -Force -Recurse
Write-Host
Write-Host "Completed Processing: $AW2" -ForegroundColor Cyan
Write-Host
Write-Host "Determining Central Processing Unit..." -ForegroundColor Cyan



$CPU = (Get-CimInstance -Class Win32_Processor).Manufacturer
$CPUName = (Get-CimInstance -Class Win32_Processor).Name

If($CPU -eq "AuthenticAMD"){
Write-Host      "This PC has an $CPU $CPUName" -ForegroundColor DarkBlue -BackgroundColor White
$AMD = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/AMD%20/AMD.ps1")
Invoke-Expression $($AMD.Content)
}
ElseIf($CPU -eq "GenuineIntel"){
Write-Host      "This PC has an $CPU $CPUName" -ForegroundColor DarkBlue -BackgroundColor White
$Intel = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/Intel/Intel.ps1")
Invoke-Expression $($Intel.Content)
}
