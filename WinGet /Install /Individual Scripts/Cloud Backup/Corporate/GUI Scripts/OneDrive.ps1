Start-Transcript -Path "C:\Logs\Powershell\Corporate\Cloud Backup\GUI\$env:computername-OneDriveInstall.log"

winget install --id Microsoft.OneDrive --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
