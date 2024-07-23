$app1 = "HD Video Converter Factory Pro"

Write-Host "Checking for and processing update: $app1..." -Verbose
Write-Host 
Write-Host "Acquiring $app1 from vendor website..." -ForegroundColor Cyan
$HDVideoSource = "https://us.videoconverterfactory.com/download/hd-video-converter-pro.exe"
$HDVideoDestination = "C:\OSDCloud\GitHub\downloads"
$HDVideoSetup = "C:\OSDCloud\GitHub\downloads\hd-video-converter-pro.exe"
$HDVideoSetupTP = [System.IO.File]::Exists("C:\OSDCloud\GitHub\downloads\hd-video-converter-pro.exe")
If($HDVideoSetupTP -eq $false){
Save-WebFile -SourceUrl $HDVideoSource  -DestinationDirectory $HDVideoDestination
Write-Host "Installing $app1..." -ForegroundColor Cyan
Start-Process -FilePath $HDVideoSetup
}
ElseIf($HDVideoSetupTP -eq $true){
Remove-Item -Path $HDVideoSetup -Force
Save-WebFile -SourceUrl $HDVideoSource  -DestinationDirectory $HDVideoDestination
Write-Host "Installing $app1..." -ForegroundColor Cyan
Start-Process -FilePath $HDVideoSetup
}
