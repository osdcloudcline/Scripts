Start-Transcript -Path "C:\Logs\Powershell\Advanced\GUI\$env:computername-Firefox.log"

winget install --id Mozilla.Firefox --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
