
$21H2OSDBuildLog = "C:\Logs\OSDBuilder\OS\Clients\Windows11\21H2.log"

Start-Transcript

$ISOPath = "C:\ISOs\OS\Clients\Win11\21H2\22000.2960.240504-2041.CO_RELEASE_SVC_PROD1_CLIENTMULTI_X64FRE_EN-US.iso"
$ISODrive = Get-DiskImage -ImagePath $ISOPath
$ISOLetter = ($ISODrive | Get-Volume).DriveLetter

Mount-DiskImage -ImagePath $ISOPath 
$ISOLetter

Write-Host "Importing OSD Media...." -ForegroundColor Cyan
Import-OSMedia

Write-Host "Updating the imported media..." -ForegroundColor Cyan 
OSDBuilder -Download OneDrive
Update-OSMedia -Download -Execute



Write-Host "Creating new ISO..." -ForegroundColor Cyan 
New-MediaISO
