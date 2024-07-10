Start-Transcript -Path "C:\Logs\Powershell\Advanced\$env:computername-AdvancedMediaInstall.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "VLC Media Player"
$app2 = "MediaInfo"
$app3 = "MKVToolNix"
$app4 = "Apple iTunes"
$app5 = "MakeMKV"
$app6 = "Handbrake"
$app7 = "PowerISO"
$app8 = "Audacity and FFMPEG"
$app9 = "Logitech MyHarmony"
$app10 = "GIMP"
$app11 = "Kodi"
$app12 = "HD Video Converter Factory Pro"

# Media-related software

Write-Host
Write-Host "Installing $app1..." -ForegroundColor Cyan
winget install --id VideoLAN.VLC --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host
Write-Host "Installing $app2..." -ForegroundColor Cyan
winget install --id MediaArea.MediaInfo.GUI --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host
Write-Host "Installing $app3..." -ForegroundColor Cyan
winget install --id MoritzBunkus.MKVToolNix --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host
Write-Host "Installing $app4..." -ForegroundColor Cyan
winget install --id Apple.iTunes --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host
Write-Host "Installing $app5..." -ForegroundColor Cyan
winget install --id GuinpinSoft.MakeMKV --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host
Write-Host "Installing $app6..." -ForegroundColor Cyan
winget install --id HandBrake.HandBrake --exact --accept-source-agreements  --accept-source-agreements --force


Write-Host
Write-Host "Installing $app7..." -ForegroundColor Cyan
winget install --id PowerSoftware.PowerISO --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host
Write-Host "Installing $app8..." -ForegroundColor Cyan
winget install --id Audacity.Audacity --exact --accept-source-agreements  --accept-source-agreements --force
choco install audacity-ffmpeg -y

Write-Host
Write-Host "Installing $app9..." -ForegroundColor Cyan
winget install --id Logitech.MyHarmony --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host
Write-Host "Installing $app10..." -ForegroundColor Cyan
winget install --id GIMP.GIMP --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host
Write-Host "Installing $app11..." -ForegroundColor Cyan
winget install --id XBMCFoundation.Kodi --exact --accept-source-agreements  --accept-source-agreements --force

Write-Verbose "Processing: $app12..." -Verbose
Write-Host 
Write-Host "Acquiring $app12 from vendor website..." -ForegroundColor Cyan
$HDVideoSource = "https://us.videoconverterfactory.com/download/hd-video-converter-pro.exe"
$HDVideoDestination = "C:\OSDCloud\GitHub\downloads"
$HDVideoSetup = "C:\OSDCloud\GitHub\downloads\hd-video-converter-pro.exe"
Save-WebFile -SourceUrl $HDVideoSource  -DestinationDirectory $HDVideoDestination
Write-Host "Installing $app12..." -ForegroundColor Cyan
Start-Process -FilePath $HDVideoSetup
Stop-Transcript
