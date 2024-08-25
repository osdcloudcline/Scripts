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
Write-Host " 4. Search for packages with WinGet Package Manager"
Write-Host " 5. Apply Windows 11 Start Menu Configurations - Main Menu" 
Write-Host " 6. Return to Main Menu"
Write-Host " 7. Exit PowerShell"
do
{
$selection = Read-Host 'Please choose an option'
  switch($selection)
  {
  '1' {cls
       $Install = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/InstallMain.ps1")
       Invoke-Expression $($Install.Content)
       }
 '2'{cls
      $Update = Invoke-WebRequest("https://github.com/osdcloudcline/Update-Scripts/raw/main/UpdateMain.ps1")
      Invoke-Expression $($Update.Content)
     }
 '3'{cls
     $Uninstall = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Uninstall/UninstallMainMenu.ps1")
     Invoke-Expression $($Uninstall.Content)
    }
'4'{cls
    $WingetPackage = Read-Host -Prompt 'Please enter a keyword or company name, EG: Adobe or Microsoft, that you want to search for'
    winget search $WingetPackage
    pause
    Show-MainMenu
    }
'5'{cls
    $SMMain = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/Start%20Menu%20Configurations/SMConfigMain.ps1")
    Invoke-Expression $($SMMain.Content)
    }
'6'{cls
    $Main = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/OSDMain.ps1")
    Invoke-Expression $($Main.Content)
 }
 '7'{exit}
 }
 }
 until ($selection -eq '7'){exit}
}
Show-MainMenu 
