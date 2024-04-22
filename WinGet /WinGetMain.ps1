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
       $StandardSoftwareScript = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/System-LOB%20Specific/STD.ps1")
       Invoke-Expression $($StandardSoftwareScript.Content)
       }
 '2'{cls
     $AdvancedSoftwareScript = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/System-LOB%20Specific/ADV.ps1")
     Invoke-Expression $($AdvancedSoftwareScript.Content)
     }
 '3'{cls
        $CORPSoftwareScript = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/System-LOB%20Specific/CORPORATE.ps1")
        Invoke-Expression $($CORPSoftwareScript.Content)
    }
 '4'{cls
        $VDISoftwareScript = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/System-LOB%20Specific/VDI.ps1")
        Invoke-Expression $($VDISoftwareScript.Content)
    }
 '5'{cls
        $ManagementPCSoftwareScript = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/System-LOB%20Specific/ManagementPC.ps1")
        Invoke-Expression $($ManagementPCSoftwareScript.Content)
 }
 '6'{cls
        $HoneypotSoftwareScript = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/System-LOB%20Specific/Honeypot.ps1")
        Invoke-Expression $($HoneypotSoftwareScript.Content)
    }
 '7'{cls
        $ITTechSoftwareScript = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/System-LOB%20Specific/ITTech.ps1")
        Invoke-Expression $($ITTechSoftwareScript.Content)
    }
 '8'{cls
        $IndividualScripts = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/WinGetIndivScriptsMain.ps1")
        Invoke-Expression $($IndividualScripts.Content)
    }
 '9'{cls
        $UpgradeScripts = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/WinGetUpdateMain.ps1")
        Invoke-Expression $($UpgradeScripts.Content)
  }
 '10'{exit}
 }
 }
 until ($selection -eq '10'){exit}
}
Show-MainMenu 
