##########################################################
# Main Menu
##########################################################
Function Show-MainMenu{
    [CmdletBinding()]
    param(
    [string]$Title = 'Windows 11 Start Menu Configurations - Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)

Clear-Host
Write-Host "======= $Title ======"
Write-Host " 1. Standard Configuration Start Menu"
Write-Host " 2. Advanced Configuration Start Menu"
Write-Host " 3. Corporate Configuration Start Menu"
Write-Host " 4. VDI Configuration Start Menu"
Write-Host " 5. Management PC Configuration Start Menu"
Write-Host " 6. IT Tech Configuration Start Menu"
Write-Host " 7. Honeypot Configuration Start Menu"
Write-Host " 8. Custom User Start Menu Configurations"
Write-Host " 9. Exit PowerShell"
do
{
$selection = Read-Host 'Please choose an option'
  switch($selection)
  {
  '1' {cls
       $StandardSM = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/Start%20Menu%20Configurations/Standard/StandardSM.ps1")
       Invoke-Expression $($StandardSM.Content)
       }
 '2'{cls
      $AdvancedSM = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/Start%20Menu%20Configurations/Advanced/AdvancedSM.ps1")
      Invoke-Expression $($AdvancedSM.Content)
     }
 '3'{cls
      $CorporateSM = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/Start%20Menu%20Configurations/Corporate/CorporateSM.ps1")
      Invoke-Expression $($CorporateSM.Content)
    }
 '4'{cls
      $VDISM = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/Start%20Menu%20Configurations/VDI/ClientOS-VDISM.ps1")
      Invoke-Expression $($VDISM.Content)
    }
 '5'{cls
      $ManagementPCSM = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/Start%20Menu%20Configurations/Management%20PC/ManagementPCSM.ps1")
      Invoke-Expression $($ManagementPCSM.Content)
 }
 '6'{cls
      $ITTechSM = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/Start%20Menu%20Configurations/IT%20Tech/ITTechSM.ps1")
      Invoke-Expression $($ITTechSM.Content)
    }
 '7'{cls
      $HoneypotSM = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/Start%20Menu%20Configurations/Honeypot/HoneypotSM.ps1")
      Invoke-Expression $($HoneypotSM.Content)
    }
 '8'{cls
     Show-CustomSMMain
     }
 '9'{exit}
 }
 }
 until ($selection -eq '9'){exit}
}

Function Show-CustomSMMain(){

    [CmdletBinding()]
    param(
    [string]$Title = 'Windows 11 Start Menu User Configurations - Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)

Clear-Host
Write-Host "======= $Title ======"
Write-Host " 1. Apply Start Menu Configuration for Bryan Desktop"
Write-Host " 2. Apply Start Menu Configuration for Bryan Laptop"
Write-Host " 3. Apply Start Menu Configuration for Jess Work Laptop"
Write-Host " 4. Apply Start Menu Configuration for Jenn Work 2nd Desktop"
Write-Host " 5. Apply Start Menu Configuration for Chris Work 2nd Desktop"
Write-Host " 6. Apply Start Menu Configuration for Billy Desktop"
Write-Host " 7. Apply Start Menu Configuration for Dad Desktop"
Write-Host " 8. Apply Start Menu Configuration for Mom Desktop"
Write-Host " 9. Return to Start Menu Configurations Main Menu"
Write-Host " 10. Exit PowerShell"
do
{
$selection = Read-Host 'Please choose an option'
  switch($selection)
  {
  '1' {cls
       $BTDesktop = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/Start%20Menu%20Configurations/Custom/Bryan-Desktop/BryanDesktopSM.ps1")
       Invoke-Expression $($BTDesktop.Content)
       }
 '2'{cls
      
     }
 '3'{cls
      
    }
 '4'{cls
      
    }
 '5'{cls
      
 }
 '6'{cls
      
    }
 '7'{cls
      
    }
 '8'{}
 '9'{cls
     Show-MainMenu
    }
 '10'{exit}
 }
 }
 until ($selection -eq '10'){exit}
} 
Show-MainMenu
