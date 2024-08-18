Start-Transcript -Path "C:\Logs\Powershell\Advanced\Media\GUI\$env:computername-KodiInstall.log"

winget install --id XBMCFoundation.Kodi --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
