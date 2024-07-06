##########################################################
# Main Menu
##########################################################
Function Show-MainMenu{
    [CmdletBinding()]
    param(
    [string]$Title = 'Software Update -  Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)

Clear-Host
Write-Host "======= $Title ======"
Write-Host " 1. Update Standard Software Configuration"
Write-Host " 2. Update Advanced Software Configuration"
Write-Host " 3. Update Corporate Software Configuration"
Write-Host " 4. Update VDI Software Configuration"
Write-Host " 5. Update Management PC Software Configuration"
Write-Host " 6. Update Honeypot Configuration"
Write-Host " 7. Update IT Tech Configuration"
Write-Host " 8. Individual Computer Update Scripts"
Write-Host " 9. Individual Software Update Scripts"
Write-Host " 10. Return to Main Menu" 
Write-Host " 11. Exit PowerShell"
do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
        $WinGetSTDSoftwareScript = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Custom%20Configurations/Standard/UpdateStandard.ps1")
        Invoke-Expression $($WinGetSTDSoftwareScript.Content)
        }
  '2' { cls
        $WinGetADVSoftwareScript = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Custom%20Configurations/Advanced/UpdateAdvanced.ps1")
        Invoke-Expression $($WinGetADVSoftwareScript.Content)
        }
  '3' { cls
        $WinGetCORPSoftwareScript = Invoke-WebRequest ("")
        Invoke-Expression $($WinGetCORPSoftwareScript.Content)
        }
  '4' { cls
        $WinGetVDISoftwareScript = Invoke-WebRequest ("")
        Invoke-Expression $($WinGetVDISoftwareScript.Content)
        }
  '5' { cls
        $WinGetManagementPCSoftwareScript = Invoke-WebRequest ("")
        Invoke-Expression $($WinGetManagementPCSoftwareScript.Content)
        }
  '6' { cls
        $WinGetHoneypotSoftwareScript = Invoke-WebRequest ("")
        Invoke-Expression $($WinGetHoneypotSoftwareScript.Content)
        }
  '7' { cls
        $WinGetITTechSoftwareScript = Invoke-WebRequest ("")
        Invoke-Expression $($WinGetITTechSoftwareScript.Content)
        }
  '8' { cls
        Show-PCUpdateMain
        }
 '9' { cls
        $WinGetIndividualSoftwareScripts = Invoke-WebRequest ("")
        Invoke-Expression $($WinGetIndividualSoftwareScripts.Content)
        }
  '10' { cls
        $WinGetMainMenuScript = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/WinGetMain.ps1")
        Invoke-Expression $($WinGetMainMenuScript.Content)
        }
'11'{exit}
    }
    }
    until ($selection -eq '11'){}
    }

##########################################################
# Main Menu
##########################################################
Function Show-PCUpdateMain{
    [CmdletBinding()]
    param(
    [string]$Title = 'Software Update -  Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)

Clear-Host
Write-Host "======= $Title ======"
Write-Host " 1. Update Jenn 2nd PC - Optiplex 3060"
Write-Host " 2. Update Chris 2nd PC - Optiplex 7010"
Write-Host " 3. Update Jess Laptop"
Write-Host " 4. Update Bryan Desktop"
Write-Host " 5. Update Bryan Laptop"
Write-Host " 6. Update "
Write-Host " 7. Update "
Write-Host " 8. "
Write-Host " 9. "
Write-Host " 10. Return to Main Menu" 
Write-Host " 11. Exit PowerShell"
do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
        $JennPC = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/System%20Specific/Dell/Desktops/Micro%20Form%20Factor/Optiplex3060.ps1")
        Invoke-Expression $($JennPC.Content)
        }
  '2' { cls
        $ChrisPC = Invoke-WebRequest ("")
        Invoke-Expression $($ChrisPC.Content)
        }
  '3' { cls
        $JessLaptop = Invoke-WebRequest ("")
        Invoke-Expression $($JessLaptop.Content)
        }
  '4' { cls
        $BryanDesktop = Invoke-WebRequest ("")
        Invoke-Expression $($BryanDesktop.Content)
        }
  '5' { cls
        $BryanLaptop = Invoke-WebRequest ("")
        Invoke-Expression $($BryanLaptop.Content)
        }
  '6' { cls
        $WinGetHoneypotSoftwareScript = Invoke-WebRequest ("")
        Invoke-Expression $($WinGetHoneypotSoftwareScript.Content)
        }
  '7' { cls
        $WinGetITTechSoftwareScript = Invoke-WebRequest ("")
        Invoke-Expression $($WinGetITTechSoftwareScript.Content)
        }
  '8' { cls
        $WinGetIndividualPCScripts = Invoke-WebRequest ("")
        Invoke-Expression $($WinGetIndividualPCScripts.Content)
        }
 '9' { cls
        $WinGetIndividualSoftwareScripts = Invoke-WebRequest ("")
        Invoke-Expression $($WinGetIndividualSoftwareScripts.Content)
        }
  '10' { cls
        $WinGetMainMenuScript = Invoke-WebRequest ("")
        Invoke-Expression $($WinGetMainMenuScript.Content)
        }
'11'{exit}
    }
    }
    until ($selection -eq '11'){}
    }
      
    Show-MainMenu
