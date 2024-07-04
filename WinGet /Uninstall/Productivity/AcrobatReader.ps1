$app1 = "Adobe Acrobat Reader"

Write-Host "Processing unistallation: $app1..." -ForegroundColor Cyan
winget uninstall --id Adobe.Acrobat.Reader.64-bit
