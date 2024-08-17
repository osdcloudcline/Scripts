Start-Transcript -Path "C:\Logs\Powershell\Advanced\Cloud Backup\GUI\$env:computername-NextCloudClient.log"

winget install --id Nextcloud.NextcloudDesktop --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
