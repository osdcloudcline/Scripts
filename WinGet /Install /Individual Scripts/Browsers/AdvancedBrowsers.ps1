$app1 = "Google Chrome for Enterprise"
$app2 = "Mozilla Firefox"


Write-Host "Installing Web Browsing Applications..." -ForegroundColor Green
Write-Host
Write-Verbose "Processing: $app1..." -Verbose
Write-Host
Write-Host "Installing $app1..." -ForegroundColor Cyan

winget install --id Google.Chrome --exact --accept-source-agreements  --accept-source-agreements --force

Write-Verbose "Processing: $app2..." -Verbose
Write-Host
Write-Host "Installing $app2..." -ForegroundColor Cyan
