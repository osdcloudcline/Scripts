Start-Transcript -Path "C:\Logs\Powershell\IT\Cloud Backup\GUI\$env:computername-GDriveInstall.log"

winget install --id Google.GoogleDrive --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
