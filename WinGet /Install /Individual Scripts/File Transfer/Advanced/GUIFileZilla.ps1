Start-Transcript -Path "C:\Logs\Powershell\Install\Advanced\File Transfer\GUI\$env:computername-FileZilla.log"

choco install filezilla  -y

Stop-Transcript
