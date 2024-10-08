##########################################################
# Main Menu
##########################################################
Function Show-MainMenu{
    [CmdletBinding()]
    param(
    [string]$Title = 'OSD Cloud - Dell Laptop Computers Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)

Clear-Host
Write-Host "======= $Title ======"
Write-Host " 1. Dell Alienware Laptops"
Write-Host " 2. Dell G-Series Laptops"
Write-Host " 3. Dell Inspiron Laptops"
Write-Host " 4. Dell Latitude Laptops"
Write-Host " 5. Dell Vostro Laptops"
Write-Host " 6. Dell XPS Laptops"
Write-Host " 7. ALL DELL Laptops"
Write-Host " 8. Return to Main Menu"
Write-Host " 9. Exit PowerShell"
do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
        $AlienwareOSDCloudConfigScript = Invoke-WebRequest "https://github.com/osdcloudcline/Scripts/raw/main/OSD%20Cloud/ISO%20Files%20/Laptops/Dell%20/Alienware.ps1"
        Invoke-Expression $($AlienwareOSDCloudConfigScript.Content)
        }
  '2' { cls
        $GSeriesOSDCloudConfigScript = Invoke-WebRequest "https://github.com/osdcloudcline/Scripts/raw/main/OSD%20Cloud/ISO%20Files%20/Laptops/Dell%20/GSeries.ps1"
        Invoke-Expression $($GSeriesOSDCloudConfigScript.Content)
        }
  '3' { cls
        $InspironOSDCloudConfigScript = Invoke-WebRequest "https://github.com/osdcloudcline/Scripts/raw/main/OSD%20Cloud/ISO%20Files%20/Laptops/Dell%20/Inspiron.ps1"
        Invoke-Expression $($InspironOSDCloudConfigScript.Content)
        }
  '4' { cls
        $LatitudeOSDCloudConfigScript = Invoke-WebRequest "https://github.com/osdcloudcline/Scripts/raw/main/OSD%20Cloud/ISO%20Files%20/Laptops/Dell%20/Latitude.ps1"
        Invoke-Expression $($LatitudeOSDCloudConfigScript.Content)
        }
  '5' { cls
        $VostroOSDCloudConfigScript = Invoke-WebRequest "https://github.com/osdcloudcline/Scripts/raw/main/OSD%20Cloud/ISO%20Files%20/Laptops/Dell%20/Vostro.ps1"
        Invoke-Expression $($VostroOSDCloudConfigScript.Content)
        }
  '6' { cls
        $XPSOSDCloudConfigScript = Invoke-WebRequest "https://github.com/osdcloudcline/Scripts/raw/main/OSD%20Cloud/ISO%20Files%20/Laptops/Dell%20/XPS.ps1"
        Invoke-Expression $($XPSOSDCloudConfigScript.Content)
        }
  '7' { cls
        $ALLDellOSDCloudConfigScript = Invoke-WebRequest "https://github.com/osdcloudcline/Scripts/raw/main/OSD%20Cloud/ISO%20Files%20/Laptops/Dell%20/ALLDell.ps1"
        Invoke-Expression $($ALLDellOSDCloudConfigScript.Content)
        }
   '8'{}
   '9'{exit}
    }
    }
    until ($selection -eq '9'){}
    }

    Show-MainMenu
