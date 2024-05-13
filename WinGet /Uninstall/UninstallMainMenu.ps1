##########################################################
# Main Menu
##########################################################
Function Show-MainMenu{
    [CmdletBinding()]
    param(
    [string]$Title = 'OSD Cloud -  Software Uninstall Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)
cls

Clear-Host
Write-Host "======= $Title ======"
Write-Host " 1. List all installed software on local PC"
Write-Host " 2. List all installed Microsoft software"
Write-Host " 3. List all installed Media-related software"
Write-Host " 4. List all installed Programming-related software"
Write-Host " 5. System Maintenance"
Write-Host " 6. Exit PowerShell"
do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
        winget list | Out-File C:\WinGetPackages.txt
        $wingetpackages = "C:\WinGetPackages.txt"
        Start-Process -FilePath $wingetpackages
        }
  '2' { cls
        Show-SoftwareMainMenu
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
    until ($selection -eq '8'){}
    }
