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
Write-Host " 5. List all installed MS Store Apps"
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
        winget list Microsoft
        }
  '3' { cls
        $WinTerminal = ""
        Start-Process -FilePath $WinTerminal
        winget list media
        }
  '4' { cls
        $WinTerminal = ""
        Start-Process -FilePath $WinTerminal
        winget list programming
        }
  '5' { cls
        winget list --source msstore
        }
  '6' { exit
        }

    }
    }
    until ($selection -eq '8'){}
    }
