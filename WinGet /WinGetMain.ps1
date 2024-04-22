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
       $Standard = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/System-LOB%20Specific/STD.ps1")
       Invoke-Expression $($Standard.Content)
       }
 '2'{cls
     $Advanced = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/System-LOB%20Specific/ADV.ps1")
     Invoke-Expression $($Advanced.Content)
     }
 '3'{cls
        $Corporate = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/System-LOB%20Specific/CORPORATE.ps1")
        Invoke-Expression $($Corporate.Content)
    }
 '4'{cls
        $VDI = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/System-LOB%20Specific/VDI.ps1")
        Invoke-Expression $($VDI.Content)
    }
 '5'{cls
        $ManagementPC = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/System-LOB%20Specific/ManagementPC.ps1")
        Invoke-Expression $($ManagementPC.Content)
 }
 '6'{cls
        $Honeypot = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/System-LOB%20Specific/Honeypot.ps1")
        Invoke-Expression $($Honeypot.Content)
    }
 '7'{cls
        $ITTech = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/System-LOB%20Specific/ITTech.ps1")
        Invoke-Expression $($ITTech.Content)
    }
 '8'{cls
        $Individual = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/WinGetIndivScriptsMain.ps1")
        Invoke-Expression $($Individual.Content)
    }
 '9'{cls
        $Upgrade = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/WinGetUpdateMain.ps1")
        Invoke-Expression $($Upgrade.Content)
  }
 '10'{exit}
 }
 }
 until ($selection -eq '10'){exit}
}
Show-MainMenu 
