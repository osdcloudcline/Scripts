Start-Transcript -Path "C:\Logs\Powershell\Advanced\Productivity\GUI\$env:computername-MSO365AppsEnterpriseInstall.log"

winget install --id Microsoft.Office --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
