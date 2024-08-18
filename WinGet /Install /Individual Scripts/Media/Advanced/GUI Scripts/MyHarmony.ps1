Start-Transcript -Path "C:\Logs\Powershell\Advanced\Media\GUI\$env:computername-MyHarmonyInstall.log"

winget install --id Logitech.MyHarmony --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
