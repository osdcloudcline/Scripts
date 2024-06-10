$EdgeResetLog = "C:\OSDCloud\DeploymentLogs\Edge\ResetBrowser.log"

Start-Transcript -Path $EdgeResetLog

Get-Date

Write-Verbose "Renaming Edge User Data File to reset MS Edge Browser..." -Verbose

Rename-Item -Path "C:\Users\$env:username\AppData\Local\Microsoft\Edge\User Data" -NewName "C:\Users\$env:username\AppData\Local\Microsoft\Edge\User Data0" -Force 

$EdgeEXE = "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"

Start-Process -FilePath $EdgeEXE

Write-Verbose "Edge Browser Reset is complete. Any corruption is fixed" -Verbose

Stop-Transcript 
