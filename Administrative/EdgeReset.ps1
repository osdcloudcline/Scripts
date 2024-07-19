$EdgeResetLog = "C:\OSDCloud\DeploymentLogs\Edge\ResetBrowser.log"

Start-Transcript -Path $EdgeResetLog

Get-Date

Write-Verbose "Killing MS Edge Browser Running Tasks..." -Verbose

Get-Process -Name "*Edge*" | Stop-Process

Write-Verbose "Resetting Microsoft Edge to OOBE mode.." -Verbose

$EdgeSettingsPath = "$env:userprofile\AppData\Local\Microsoft\Edge"

cd $EdgeSettingsPath

$UserData1 = "$env:userprofile\AppData\Local\Microsoft\Edge\User Data"


Write-Verbose "Deleting Edge User Data directories..." -Verbose
rd $UserData1
md $UserData1

Write-Verbose "Edge Browser Reset is complete. Any corruption is fixed" -Verbose

Stop-Transcript 
