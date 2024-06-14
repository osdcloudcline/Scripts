##########################################################
# Main Menu
##########################################################
Function Show-MainMenu{
    [CmdletBinding()]
    param(
    [string]$Title = 'Software Installation Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)

Clear-Host
Write-Host "======= $Title ======"
Write-Host " 1. Install Software - Main Menu"
Write-Host " 2. Upgrade Software - Main Menu"
Write-Host " 3. Uninstall Software - Main Menu" 
Write-Host " 4. Return to Main Menu"
Write-Host " 5. Exit PowerShell"
do
{
$selection = Read-Host 'Please choose an option'
  switch($selection)
  {
  '1' {cls
       $Install = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/InstallMain.ps1")
       Invoke-Expression $($Install.Content)
       }
 '2'{cls
      $Update = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/UpdateMain.ps1")
      Invoke-Expression $($Update.Content)
     }
 '3'{cls
       $Corporate = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/System-LOB%20Specific/CORPORATE.ps1")
       Invoke-Expression $($Corporate.Content)
    }
'4'{cls
       $PostInstall = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/PostInstall/PostInstallMain.ps1")
       Invoke-Expression $($PostInstall.Content)
 }
 '5'{exit}
 }
 }
 until ($selection -eq '5'){exit}
}
Show-MainMenu 
