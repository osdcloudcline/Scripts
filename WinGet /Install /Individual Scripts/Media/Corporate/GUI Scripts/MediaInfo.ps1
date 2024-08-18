Start-Transcript -Path "C:\Logs\Powershell\Corporate\Media\GUI\$env:computername-MediaInfoInstall.log"

winget install --id MediaArea.MediaInfo.GUI --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
