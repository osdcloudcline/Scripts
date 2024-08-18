Start-Transcript -Path "C:\Logs\Powershell\Advanced\Media\GUI\$env:computername-HandbrakeInstall.log"

winget install --id HandBrake.HandBrake --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
