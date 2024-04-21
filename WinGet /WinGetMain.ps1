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

  '1' { cls
        $WinGetSTDSoftwareScript = Invoke-WebRequest ""
        Invoke-Expression $($WinGetSTDSoftwareScript.Content)
        }
  '2' { cls
        $WinGetADVSoftwareScript = Invoke-WebRequest ""
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
        $WinGetUpgradeScripts = Invoke-WebRequest "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/WinGetUpdateMain.ps1"
        Invoke-Expression $($WinGetUpgradeScripts.Content)
        }
'10'{exit}
    }
    }
    until ($selection -eq '10'){}
    }


      
    Show-MainMenu
