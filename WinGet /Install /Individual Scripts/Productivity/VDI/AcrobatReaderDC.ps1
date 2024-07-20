Start-Transcript -Path "C:\Logs\Powershell\Virtual Desktop Interface\Productivity\$env:computername-AcrobatReaderDCInstall.log"

$app1 = "Adobe Acrobat Reader"

Write-Host "Processing: $app1..." -ForegroundColor Cyan
winget install --id Adobe.Acrobat.Reader.64-bit --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
