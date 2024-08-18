Start-Transcript -Path "C:\Logs\Powershell\Advanced\Media\GUI\$env:computername-MKVToolNixInstall.log"

winget install --id MoritzBunkus.MKVToolNix --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
