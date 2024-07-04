$app1 = "FileZilla"

Write-Host "Uninstalling $app1..." -ForegroundColor Cyan

choco uninstall filezilla  -y
