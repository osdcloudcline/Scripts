Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSD -Force

Start-Transcript -Path "C:\Logs\Powershell\Advanced\$env:computername-AdvancedProductivity-Office2021Install.log"



$app1 = "Microsoft Office 2021 LTSC"

Write-Host "Processing: $app1..." -ForegroundColor Cyan
winget install --id Adobe.Acrobat.Reader.64-bit --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
