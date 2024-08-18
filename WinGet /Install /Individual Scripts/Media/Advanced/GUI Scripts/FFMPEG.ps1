Start-Transcript -Path "C:\Logs\Powershell\Advanced\Media\$env:computername-FFMPEGInstall.log"

choco install audacity-ffmpeg -y

Stop-Transcript
