Start-Transcript -Path "C:\Logs\Powershell\Installs\Standard\Browsers\GUI\$env:computername-Firefox.log"

winget install --id Mozilla.Firefox --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
