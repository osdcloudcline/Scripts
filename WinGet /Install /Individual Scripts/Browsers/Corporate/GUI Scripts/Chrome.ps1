Start-Transcript -Path "C:\Logs\Powershell\Corporate\GUI\$env:computername-Chrome.log"

winget install --id Google.Chrome --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
