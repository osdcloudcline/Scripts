##########################################################
# Main Menu
##########################################################
Function Show-MainMenu{
    [CmdletBinding()]
    param(
    [string]$Title = 'Post-Installation Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)

Clear-Host
Write-Host "======= $Title ======"
Write-Host " 1. Windows 11 Start Menu Customization"
Write-Host " 2. Windows 12 Start Menu Customization"
Write-Host " 3. Debloat Operating System"
Write-Host " 4. Change Computer Name"
Write-Host " 5. Install OEM Manufacturer Specific Software"
Write-Host " 6. Exit PowerShell"
do
{
$selection = Read-Host 'Please choose an option'
  switch($selection)
  {
  '1' {cls
       $W11StartMenu = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/Start%20Menu%20Configurations/SMConfigMain.ps1")
       Invoke-Expression $($W11StartMenu.Content)
       }
 '2' {cls
       $W12StartMenu = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/Start%20Menu%20Configurations/SMConfigMain.ps1")
       Invoke-Expression $($W12StartMenu.Content)
       }
 '3'{cls
      $Debloat = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/PostInstall/OSDebloat/OSDebloatMain.ps1")
      Invoke-Expression $($Debloat.Content)
     }
 '4'{cls
      $ChangePCName = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/PostInstall/PC%20Name/ChangePCName.ps1")
      Invoke-Expression $($ChangePCName.Content)
 }
 '5'{$Manufacturer = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/ManufacturerMain.ps1")
     Invoke-Expression $($Manufacturer.Content)
    }
 '6'{exit}
 }
 }
 until ($selection -eq '6'){exit}
}

Show-MainMenu 
