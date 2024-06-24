##########################################################
# Main Menu
##########################################################
Function Show-MainMenu{
    [CmdletBinding()]
    param(
    [string]$Title = 'OSD Cloud -  Audit Mode Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)
cls

Clear-Host
Write-Host "======= $Title ======"
Write-Host " 1. Configure Client Desktops/Laptops/Thin Clients"
Write-Host " 2. Configure Servers"
Write-Host " 3. Install Software"
Write-Host " 4. Update Windows"
Write-Host " 5. Update Software"
Write-Host " 6. System Maintenance"
Write-Host " 7. Exit PowerShell"
do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
        $Clients = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/AuditMode/ConfigureClients.ps1")
        Invoke-Expression $($Clients.Content)
        }
  '2'{cls

        }
  '3' { cls
        Show-SoftwareMainMenu
        }
  '4' { cls
        $OSUpdate = "ms-settings:windowsupdate"
        Start-Process $OSUpdate
        }
  '5' { cls
        $WinGetUpdateMain = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/WinGetUpdateMain.ps1")
        Invoke-Expression $($WinGetUpdateMain.Content)
        }
  '6' { cls
        $sfc = "C:\Windows\System32\sfc.exe"
        Write-Host "Scanning computer for corrupted system files..." -ForegroundColor Cyan
        Start-Process -FilePath "C:\Windows\System32\sfc.exe" -ArgumentList "/scannow"
        }
  '7' { exit
        }

    }
    }
    until ($selection -eq '7'){exit}
    }

 Function Show-SoftwareMainMenu(){

    [CmdletBinding()]
    param(
    [string]$Title = 'OSD Cloud -  Audit Mode Software Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)
cls

Clear-Host
Write-Host "======= $Title ======"
Write-Host " 1. Install Standard Software"
Write-Host " 2. Install Advanced Software"
Write-Host " 3. Install Corporate Software"
Write-Host " 4. Install VDI Software"
Write-Host " 5. Install IT Tech Software"
Write-Host " 6. Install Management PC Software"
Write-Host " 7. Install Honeypot Software"
Write-Host " 8. Return to Audit Mode Main Menu"
do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
        $Standard = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Audit%20Mode%20Install/STD.ps1")
        Invoke-Expression $($Standard.Content)
        }
  '2' { cls
        $Advanced = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Audit%20Mode%20Install/ADV.ps1")
        Invoke-Expression $($Advanced.Content)
        }
  '3' { cls
        $Corporate = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Audit%20Mode%20Install/Corporate.ps1")
        Invoke-Expression $($Corporate.Content)
        }
  '4' { cls
        $VDI = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Audit%20Mode%20Install/VDI.ps1")
        Invoke-Expression $($VDI.Content)
        }
  '5' { cls
        $ITTech = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Audit%20Mode%20Install/ITTech.ps1")
        Invoke-Expression $($ITTech.Content)
        }
  '6' { cls
        $ManagementPC = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Audit%20Mode%20Install/ManagementPC.ps1")
        Invoke-Expression $($ManagementPC.Content)
        }
  '7'{ cls
       $Honeypot = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Audit%20Mode%20Install/Honeypot.ps1")
       Invoke-Expression $($Honeypot.Content)
  }
  '8' { Show-MainMenu
        }
  
    }
    }
    until ($selection -eq '8'){}
    }

Show-MainMenu
 
 
