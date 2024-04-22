##########################################################
# Main Menu
##########################################################
Function Show-MainMenu{
    [CmdletBinding()]
    param(
    [string]$Title = 'WinGet -  Software Installation Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)

Clear-Host
Write-Host "======= $Title ======"
Write-Host " 1. WinGet - Install Standard Software Configuration"
Write-Host " 2. WinGet - Install Advanced Software Configuration"
Write-Host " 3. WinGet - Install Corporate Software Configuration"
Write-Host " 4. WinGet - Install VDI Software Configuration"
Write-Host " 5. WinGet - Install Management PC Software Configuration"
Write-Host " 6. WinGet - Install Honeypot Configuration"
Write-Host " 7. WinGet - Install IT Tech Configuration"
Write-Host " 8. WinGet - Individual Install and Update Scripts"
Write-Host " 9. WinGet - Upgrade Software" 
Write-Host " 10. Exit PowerShell"
do

{
$selection = Read-Host 'Please choose an option'
  switch($selection)
  {
  '1' {cls
       $StandardSoftwareScript = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/System-LOB%Specific/STD.ps1)
       Invoke-Expression $($StandardSoftwareSCript.Content)
 '2'{cls
     $AdvancedSoftwareScript = Invoke-WebRequest("")
     Invoke-Expression $($AdvancedSoftwareScript.Content)
     }
 '3'{}
 '4'{}
 '5'{}
 '6'{}
 '7'{}
 '8'{}
 '9'{}
 '10'{}
 }
 }
 until ($selection -eq '10'){exit}
}
Show-MainMenu 
