Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSD -Force

##########################################################
# Main Menu
##########################################################
Function Show-MainMenu{
    [CmdletBinding()]
    param(
    [string]$Title = 'De-Bloating OS Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)

Clear-Host
Write-Host "======= $Title ======"
Write-Host " 1. Windows 10"
Write-Host " 2. Windows 11 23H2"
Write-Host " 3. Windows 11 24H1"
Write-Host " 4. Windows 11 24H2"
Write-Host " 5. Windows 11 25H1
Write-Host " 6. Windows 11 25H2"
Write-Host " 7. Windows 12 RTM"
Write-Host " 8. Return to Post-Install Main Menu"
Write-Host " 9. Return to Main Menu"
Write-Host " 10. Exit PowerShell"
do
{
$selection = Read-Host 'Please choose an option'
  switch($selection)
  {
  '1' {cls
       $W11StartMenu = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/Start%20Menu%20Configurations/SMConfigMain.ps1")
       Invoke-Expression $($W11StartMenu.Content)
       }
 '2'{cls
      $DebloatOS = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/System-LOB%20Specific/ADV.ps1")
      Invoke-Expression $($DebloatOS.Content)
     }
 '3'{cls
      $ClientFeatures = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/System-LOB%20Specific/CORPORATE.ps1")
      Invoke-Expression $($ClientFeatures.Content)
    }
 '4'{cls
      $ServerRolesFeatures = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/System-LOB%20Specific/VDI.ps1")
      Invoke-Expression $($ServerRolesFeatures.Content)
    }
 '5'{cls
      $ChangePCName = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/System-LOB%20Specific/ManagementPC.ps1")
      Invoke-Expression $($ChangePCName.Content)
 '6' {cls
       $W11StartMenu = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/Start%20Menu%20Configurations/SMConfigMain.ps1")
       Invoke-Expression $($W11StartMenu.Content)
       }
 '7'{cls
      $DebloatOS = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/System-LOB%20Specific/ADV.ps1")
      Invoke-Expression $($DebloatOS.Content)
     }
 '8'{cls
      $ClientFeatures = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/System-LOB%20Specific/CORPORATE.ps1")
      Invoke-Expression $($ClientFeatures.Content)
    }
 '9'{cls
      $ServerRolesFeatures = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/System-LOB%20Specific/VDI.ps1")
      Invoke-Expression $($ServerRolesFeatures.Content)
    }
 '10'{exit}
 }
 }
 until ($selection -eq '10'){exit}
}

Show-MainMenu 
