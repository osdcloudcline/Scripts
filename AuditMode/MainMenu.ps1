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
Write-Host " 3. Update Windows"
Write-Host " 4. Update Software"
Write-Host " 5. System Maintenance"
Write-Host " 6. Exit PowerShell"
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
        $Servers = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/AuditMode/ConfigureServers.ps1")
        Invoke-Expression $($Servers.Content)
        }
  '3' { cls
        $OSUpdate = "ms-settings:windowsupdate"
        Start-Process $OSUpdate
        }
  '4' { cls
        $WinGetUpdateMain = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/WinGetUpdateMain.ps1")
        Invoke-Expression $($WinGetUpdateMain.Content)
        }
  '5' { cls
        $sfc = "C:\Windows\System32\sfc.exe"
        Write-Host "Scanning computer for corrupted system files..." -ForegroundColor Cyan
        Start-Process -FilePath "C:\Windows\System32\sfc.exe" -ArgumentList "/scannow"
        }
  '6' { exit
        }

    }
    }
    until ($selection -eq '7'){exit}
    }


Show-MainMenu
 
 
