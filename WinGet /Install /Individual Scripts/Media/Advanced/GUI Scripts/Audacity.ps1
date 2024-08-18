Start-Transcript -Path "C:\Logs\Powershell\Advanced\Media\GUI\$env:computername-AudacityInstall.log"

winget install --id Audacity.Audacity --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
