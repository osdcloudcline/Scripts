Start-Transcript -Path "C:\Logs\Powershell\Corporate\Cloud Backup\GUI\$env:computername-DropBoxInstall.log"

winget install --id Dropbox.Dropbox --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript