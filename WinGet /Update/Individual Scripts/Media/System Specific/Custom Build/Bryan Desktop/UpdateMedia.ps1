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


Write-Host "Checking for and processing update: $app1..." -ForegroundColor Cyan
winget upgrade --id VideoLAN.VLC

Write-Host "Checking for and processing update: $app2..." -ForegroundColor Cyan
winget upgrade --id MediaArea.MediaInfo.GUI

Write-Host "Checking for and processing update: $app3..." -ForegroundColor Cyan
winget upgrade --id MoritzBunkus.MKVToolNix

Write-Host "Checking for and processing update: $app4..." -ForegroundColor Cyan
winget upgrade --id Apple.iTunes

Write-Host "Checking for and processing update: $app5..." -ForegroundColor Cyan
winget upgrade --id GuinpinSoft.MakeMKV

Write-Host "Checking for and processing update: $app6..." -ForegroundColor Cyan
winget upgrade --id HandBrake.HandBrake

Write-Host "Checking for and processing update: $app7..." -ForegroundColor Cyan
winget upgrade --id PowerSoftware.PowerISO 

Write-Host "Checking for and processing update: $app8..." -ForegroundColor Cyan
winget upgrade --id Audacity.Audacity
choco upgrade audacity-ffmpeg -y

Write-Host "Checking for and processing update: $app9..." -ForegroundColor Cyan
winget upgrade --id Logitech.MyHarmony

Write-Host "Checking for and processing update: $app10..." -ForegroundColor Cyan
winget upgrade --id GIMP.GIMP

Write-Host "Checking for and processing update: $app11..." -ForegroundColor Cyan
winget install --id XBMCFoundation.Kodi

Write-Host "Checking for and processing update: $app12..." -Verbose
Write-Host 
Write-Host "Acquiring $app12 from vendor website..." -ForegroundColor Cyan
$HDVideoSource = "https://us.videoconverterfactory.com/download/hd-video-converter-pro.exe"
$HDVideoDestination = "C:\OSDCloud\GitHub\downloads"
$HDVideoSetup = "C:\OSDCloud\GitHub\downloads\hd-video-converter-pro.exe"
$HDVideoSetupTP = [System.IO.File]::Exists("C:\OSDCloud\GitHub\downloads\hd-video-converter-pro.exe")
If($HDVideoSetupTP -eq $false){
Save-WebFile -SourceUrl $HDVideoSource  -DestinationDirectory $HDVideoDestination
Write-Host "Installing $app12..." -ForegroundColor Cyan
Start-Process -FilePath $HDVideoSetup
}
ElseIf($HDVideoSetupTP -eq $true){
Remove-Item -Path $HDVideoSetup -Force
Save-WebFile -SourceUrl $HDVideoSource  -DestinationDirectory $HDVideoDestination
Write-Host "Installing $app12..." -ForegroundColor Cyan
Start-Process -FilePath $HDVideoSetup
}
