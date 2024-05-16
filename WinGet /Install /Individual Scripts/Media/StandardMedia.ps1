$app1 = "VLC Media Player"
$app2 = "MediaInfo"
$app3 = "MKVToolNix"
$app4 = "Apple iTunes"

# Media-related software
Write-Host "Installing Media Applications..." -ForegroundColor Green
Write-Host
Write-Verbose "Processing: $app1..." -Verbose
Write-Host
Write-Host "Installing $app1..." -ForegroundColor Cyan

winget install --id VideoLAN.VLC --exact --accept-source-agreements  --accept-source-agreements --force


Write-Verbose "Processing: $app2..." -Verbose
Write-Host
Write-Host "Installing $app1..." -ForegroundColor Cyan


Write-Verbose "Processing: $app3..." -Verbose
Write-Host
Write-Host "Installing $app1..." -ForegroundColor Cyan


Write-Verbose "Processing: $app4..." -Verbose
Write-Host
Write-Host "Installing $app1..." -ForegroundColor Cyan

