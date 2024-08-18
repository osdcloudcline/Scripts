Start-Transcript -Path "C:\Logs\Powershell\Advanced\Media\GUI\$env:computername-MakeMKVInstall.log"

winget install --id GuinpinSoft.MakeMKV --exact --accept-source-agreements  --accept-source-agreements --force


Stop-Transcript
