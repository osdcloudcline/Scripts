Start-Transcript -Path "C:\Logs\Powershell\Advanced\GUI\$env:computername-UPBRInstall.log"

Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck -Verbose
Import-Module -Name OSD -Force

$UPBR = "https://github.com/osdcloudcline/OSDCloud/raw/main/User%20Profile%20Backup%20Restore/UserProfileBackupRestore.exe"
$UPBRFilePath = "C:\downloads\UserProfileBackupRestore.exe"
$UPBRFilePathNewName = "C:\downloads\UPBR.exe"
$UPBRDir = "C:\downloads"
Save-WebFile -SourceUrl $UPBR -DestinationDirectory $UPBRDir
Rename-Item -Path $UPBRFilePath  -NewName $UPBRFilePathNewName
$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("C:\ProgramData\Microsoft\Windows\Start Menu\Programs\UPBR.lnk")
$Shortcut.TargetPath = "C:\downloads\UPBR.exe"
$Shortcut.Save()

Stop-Transcript
