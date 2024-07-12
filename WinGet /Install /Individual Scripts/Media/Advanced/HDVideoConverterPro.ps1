Start-Transcript -Path "C:\Logs\Powershell\Advanced\$env:computername-AdvancedMedia-HDVideoConverterInstall.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "HD Video Converter Factory Pro"

Write-Verbose "Processing: $app1..." -Verbose
Write-Host 
Write-Host "Acquiring $app1 from vendor website..." -ForegroundColor Cyan
$HDVideoSource = "https://us.videoconverterfactory.com/download/hd-video-converter-pro.exe"
$HDVideoDestination = "C:\OSDCloud\GitHub\downloads"
$HDVideoSetup = "C:\OSDCloud\GitHub\downloads\hd-video-converter-pro.exe"
Save-WebFile -SourceUrl $HDVideoSource  -DestinationDirectory $HDVideoDestination

Write-Host ' ATTN: Manual install needed!  ' -ForegroundColor DarkRed -BackgroundColor White

Stop-Transcript
