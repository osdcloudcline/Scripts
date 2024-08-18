Start-Transcript -Path "C:\Logs\Powershell\Advanced\Media\GUI\$env:computername-GIMPInstall.log"

winget install --id GIMP.GIMP --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
