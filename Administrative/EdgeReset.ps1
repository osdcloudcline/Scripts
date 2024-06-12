$EdgeResetLog = "C:\OSDCloud\DeploymentLogs\Edge\ResetBrowser.log"

Start-Transcript -Path $EdgeResetLog

Get-Date

Write-Verbose "Killing MS Edge Browser Running Tasks..." -Verbose

Get-Process -Name "*Edge*" | Stop-Process

Write-Verbose "Renaming Edge User Data Folder to reset MS Edge Browser..." -Verbose

$EdgeSettingsPath = "$env:userprofile\AppData\Local\Microsoft\Edge"

cd $EdgeSettingsPath

$UserData1 = "$env:userprofile\AppData\Local\Microsoft\Edge\User Data"
$UserData2 = "$env:userprofile\AppData\Local\Microsoft\Edge\User Data0"

$UD1Test = (Test-Path -Path $UserData1 -IfValid)
$UD2Test = (Test-Path -Path $UserData2 -IsValid)

If($UD1Test -eq $true) -and ($UD2Test - $eq $true){

Write-Verbose "Deleting Edge User Data directories..." -Verbose
rd $UserData1
rd $UserData2
}
ElseIf($UD1Test -eq $false) -and ($UD2Test - $eq $false){
Write-Verbose "Creating Edge User Data directories..." -Verbose
md $UserData1
}

Rename-Item -Path "C:\Users\$env:username\AppData\Local\Microsoft\Edge\User Data" -NewName "C:\Users\$env:username\AppData\Local\Microsoft\Edge\User Data0" -Force 

$EdgeEXE = "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"

Start-Process -FilePath $EdgeEXE

Write-Verbose "Deleting Edge User Data Folder..." -Verbose

rd "C:\Users\$env:username\AppData\Local\Microsoft\Edge\User Data0" -Force

Write-Verbose "Edge Browser Reset is complete. Any corruption is fixed" -Verbose

Stop-Transcript 
