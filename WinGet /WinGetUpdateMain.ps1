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
Write-Host " 8. Individual Update Scripts"
Write-Host " 9. Return to Main Menu" 
Write-Host " 10. Exit PowerShell"
do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
        $WinGetSTDSoftwareScript = Invoke-WebRequest ""
        Invoke-Expression $($WinGetSTDSoftwareScript.Content)
        }
  '2' { cls
        $WinGetADVSoftwareScript = Invoke-WebRequest "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/System-LOB%20Specific/UpdateADVSoftware.ps1"
        Invoke-Expression $($WinGetADVSoftwareScript.Content)
        }
  '3' { cls
        $WinGetCORPSoftwareScript = Invoke-WebRequest ""
        Invoke-Expression $($WinGetCORPSoftwareScript.Content)
        }
  '4' { cls
        $WinGetVDISoftwareScript = Invoke-WebRequest ""
        Invoke-Expression $($WinGetVDISoftwareScript.Content)
        }
  '5' { cls
        $WinGetManagementPCSoftwareScript = Invoke-WebRequest ""
        Invoke-Expression $($WinGetManagementPCSoftwareScript.Content)
        }
  '6' { cls
        $WinGetHoneypotSoftwareScript = Invoke-WebRequest ""
        Invoke-Expression $($WinGetHoneypotSoftwareScript.Content)
        }
  '7' { cls
        $WinGetITTechSoftwareScript = Invoke-WebRequest ""
        Invoke-Expression $($WinGetITTechSoftwareScript.Content)
        }
  '8' { cls
        $WinGetIndividualScripts = Invoke-WebRequest ""
        Invoke-Expression $($WinGetIndividualScripts.Content)
        }
  '9' { cls
        $WinGetMainMenuScript = Invoke-WebRequest "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/WinGetMain.ps1"
        Invoke-Expression $($WinGetMainMenuScript.Content)
        }
'10'{exit}
    }
    }
    until ($selection -eq '10'){}
    }


      
    Show-MainMenu
