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

Write-Verbose "Updating Media-related software..." -Verbose
Write-Host
Write-Host "Processing: $app1..." -ForegroundColor Cyan
winget upgrade --id VideoLAN.VLC

Write-Host "Processing: $app2..." -ForegroundColor Cyan
winget upgrade --id MediaArea.MediaInfo.GUI

Write-Host "Processing: $app3..." -ForegroundColor Cyan
winget upgrade --id MoritzBunkus.MKVToolNix

Write-Host "Processing: $app4..." -ForegroundColor Cyan
winget upgrade --id Apple.iTunes

Write-Host "Processing: $app5..." -ForegroundColor Cyan
winget upgrade --id GuinpinSoft.MakeMKV

Write-Host "Processing: $app6..." -ForegroundColor Cyan
winget upgrade --id HandBrake.HandBrake

Write-Host "Processing: $app7..." -ForegroundColor Cyan
winget upgrade --id PowerSoftware.PowerISO 

Write-Host "Processing: $app8..." -ForegroundColor Cyan
winget upgrade --id Audacity.Audacity
choco upgrade audacity-ffmpeg -y

Write-Host "Processing: $app9..." -ForegroundColor Cyan
winget upgrade --id Logitech.MyHarmony

Write-Host "Processing: $app10..." -ForegroundColor Cyan
winget upgrade --id GIMP.GIMP

Write-Host "Processing: $app11..." -ForegroundColor Cyan
winget install --id XBMCFoundation.Kodi

Write-Host "Processing: $app12..." -Verbose
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
