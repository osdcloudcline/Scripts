Start-Transcript -Path "C:\Logs\Powershell\Standard\Media\GUI\$env:computername-iTunesInstall.log"

winget install --id Apple.iTunes --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
