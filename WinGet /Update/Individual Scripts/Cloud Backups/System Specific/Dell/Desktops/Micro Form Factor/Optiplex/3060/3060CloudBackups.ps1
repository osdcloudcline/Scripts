$CloudBackups1 = "Google Drive"

Write-Verbose "Updating $CloudBackups1 on $env:computername..." -Verbose
winget upgrade --id Google.GoogleDrive
