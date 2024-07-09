$app1 = "Adobe Acrobat Reader"

Write-Host "Checking for and processing update: $app1..." -ForegroundColor Cyan
winget upgrade --id Adobe.Acrobat.Reader.64-bit

