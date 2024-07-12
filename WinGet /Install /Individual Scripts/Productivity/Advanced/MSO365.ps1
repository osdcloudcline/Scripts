Start-Transcript -Path "C:\Logs\Powershell\Advanced\$env:computername-AdvancedProductivity-MSO365Install.log"



$app1 = "Microsoft 365 (Office)"

Write-Host "Processing: $app1..." -ForegroundColor Cyan
winget install --id Adobe.Acrobat.Reader.64-bit --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
