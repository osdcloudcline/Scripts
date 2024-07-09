$CloudBackups1 = "Google Drive"

Write-Verbose "Checking for and processing update: $CloudBackups1 on $env:computername..." -Verbose
winget upgrade --id Google.GoogleDrive
