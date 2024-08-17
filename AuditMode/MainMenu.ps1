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
Write-Host " 1. Configure Client Desktops/Laptops/Thin Clients via CLI"
Write-Host " 2. Configure Client Desktops/Laptops/Thin Clients via GUI"
Write-Host " 3. Configure Servers"
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
        $CLIClients = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/AuditMode/ConfigureCLIClients.ps1")
        Invoke-Expression $($CLIClients.Content)
        }
 '2' { cls
        $GUIClients = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/AuditMode/ConfigureGUIClients.ps1")
        Invoke-Expression $($GUIClients.Content)
        }   
  '3'{cls
        $Servers = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/AuditMode/ConfigureServers.ps1")
        Invoke-Expression $($Servers.Content)
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


Show-MainMenu
 
 
