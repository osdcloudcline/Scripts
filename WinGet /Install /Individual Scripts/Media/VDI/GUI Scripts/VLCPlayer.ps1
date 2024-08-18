Start-Transcript -Path "C:\Logs\Powershell\Virtual Desktop Interface\Media\GUI\$env:computername-VLCPlayerInstall.log"

winget install --id VideoLAN.VLC --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
