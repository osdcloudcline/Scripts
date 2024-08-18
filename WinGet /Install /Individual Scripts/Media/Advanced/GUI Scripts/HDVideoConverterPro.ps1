Start-Transcript -Path "C:\Logs\Powershell\Advanced\Media\GUI\$env:computername-HDVideoConverterInstall.log"

$HDVideoSource = "https://us.videoconverterfactory.com/download/hd-video-converter-pro.exe"
$HDVideoDestination = "C:\OSDCloud\GitHub\downloads"
$HDVideoSetup = "C:\OSDCloud\GitHub\downloads\hd-video-converter-pro.exe"
Save-WebFile -SourceUrl $HDVideoSource  -DestinationDirectory $HDVideoDestination

Stop-Transcript
