Start-Transcript -Path "C:\Logs\Powershell\Advanced\Productivity\GUI\$env:computername-AcrobatReaderDCInstall.log"

winget install --id Adobe.Acrobat.Reader.64-bit --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
