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
Write-Host " 1. Uninstall Web Browser Software"
Write-Host " 2. Uninstall Cloud Backup Software"
Write-Host " 3. Uninstall File Transfer Software"
Write-Host " 4. Uninstall Gaming Software"
Write-Host " 5. Uninstall Media Software"
Write-Host " 6. Uninstall Productivity Software"
Write-Host " 7. Uninstall Programming Software"
Write-Host " 8. Uninstall Utilities Software"
Write-Host " 9. Uninstall VDI/Remote Desktop Software"
Write-Host " 10. Uninstall Virtualization Software"
Write-Host " 11. Uninstall Windows Store Apps"
Write-Host " 12. Exit PowerShell"
do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
        Show-WebMenu
        }
  '2' { cls
        
        }
  '3' { cls
        
        }
  '4' { cls
        
        }
  '5' { cls
        
        }
  '6' { cls
       
        }
  '7' { cls
        
        }
  '8' { cls
        
        }
  '9' { cls
        
        }
  '10' { cls
        
        }
  '11' { cls
        
        }
  '12' { exit
        }

    }
    }
    until ($selection -eq '12'){exit}
    }

Function Show-WebMenu(){
    [CmdletBinding()]
    param(
    [string]$Title = 'OSD Cloud -  Software Uninstall Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)
cls

Clear-Host
Write-Host "======= $Title ======"
Write-Host " 1. Uninstall Chrome and Firefox"
Write-Host " 2. Uninstall Chrome and Edge"
Write-Host " 3. Uninstall Firefox and Edge"
Write-Host " 4. Uninstall Chrome"
Write-Host " 5. Uninstall Microsoft Edge"
Write-Host " 6. Uninstall Firefox"
Write-Host " 7. Return to Main Menu"

do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {
'1' { cls
      $Chrome = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Uninstall/Browsers/Chrome.ps1")
      Invoke-Expression $($Chrome.Content)

      $Firefox = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Uninstall/Browsers/Firefox.ps1")
      Invoke-Expression $($Firefox.Content)
      }
'2' {cls
    $Edge = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Uninstall/Browsers/Edge.ps1")
    Invoke-Expression $($Edge.Content)

    $Chrome = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Uninstall/Browsers/Chrome.ps1")
    Invoke-Expression $($Chrome.Content)
    }
'3' {cls
     $Firefox = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Uninstall/Browsers/Firefox.ps1")
     Invoke-Expression $($Firefox.Content)

    $Edge = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Uninstall/Browsers/Edge.ps1")
    Invoke-Expression $($Edge.Content)
}
'4'{cls
    $Chrome = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Uninstall/Browsers/Chrome.ps1")
    Invoke-Expression $($Chrome.Content)
    }
'5'{cls
    $Edge = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Uninstall/Browsers/Edge.ps1")
    Invoke-Expression $($Edge.Content)
    }
'6'{cls
    $Firefox = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Uninstall/Browsers/Firefox.ps1")
    Invoke-Expression $($Firefox.Content)
    }
'7'{cls
    Show-MainMenu
    }
    
    }
    }
    until ($selection -eq '7'){Show-MainMenu}
    }
Show-MainMenu
