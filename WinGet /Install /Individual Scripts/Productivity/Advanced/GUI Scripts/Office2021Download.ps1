Write-Host "Processing: $app1 download..." -ForegroundColor Cyan
$O21DLCMD = "C:\OSDCloud\GitHub\downloads\Office\OfficeCDNDownload.cmd"
Start-Process -FilePath $O21DLCMD
