Start-Transcript -Path "C:\Logs\Powershell\Advanced\Cloud Backup\GUI\$env:computername-iCloud.log"

winget install --id Apple.iCloud --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
