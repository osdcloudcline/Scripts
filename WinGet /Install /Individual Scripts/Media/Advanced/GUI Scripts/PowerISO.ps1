Start-Transcript -Path "C:\Logs\Powershell\Advanced\Media\GUI\$env:computername-PowerISOInstall.log"

winget install --id PowerSoftware.PowerISO --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
