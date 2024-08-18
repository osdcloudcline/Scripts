Start-Transcript -Path "C:\Logs\Powershell\Advanced\Cloud Backup\GUI\$env:computername-OneDrive.log"

winget install --id Microsoft.OneDrive --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
