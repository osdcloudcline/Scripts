Start-Transcript -Path "C:\Logs\Powershell\IT\Media\GUI\$env:computername-MediaInfoInstall.log"

winget install --id MediaArea.MediaInfo.GUI --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
