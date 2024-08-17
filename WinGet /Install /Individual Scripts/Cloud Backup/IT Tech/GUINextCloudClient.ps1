Start-Transcript -Path "C:\Logs\Powershell\IT\Cloud Backup\GUI\$env:computername-NextCloudClient.log"

winget install --id Nextcloud.NextcloudDesktop --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
