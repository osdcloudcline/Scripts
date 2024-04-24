##########################################################
# Main Menu
##########################################################
Function Show-MainMenu{
    [CmdletBinding()]
    param(
    [string]$Title = 'OSD Cloud Initial Setup and Custimizations - Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)
}
Write-Host " 1. Dell Laptops"
Write-Host " 2. Dell Desktops"
Write-Host " 3. Custom Built Desktops + ASUS AMD/Intel Motherboards"
Write-Host " 4. HP Laptops"
Write-Host " 5. ASUS Laptops"
Write-Host " 6. Acer Laptops"
Write-Host " 7. Lenovo Laptops"
Write-Host " 8. Virtual Machines"
Write-Host " 9. MS Surface Devices"
Write-Host " 10. Return to Main Menu"

do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
        $DellLaptopsOSDCloudConfigScript = Invoke-WebRequest "https://github.com/osdcloudcline/Scripts/raw/main/OSD%20Cloud/ISO%20Files%20/Laptops/Dell%20/DELLConfigureOSDCloudMain.ps1"
        Invoke-Expression $($DellLaptopsOSDCloudConfigScript.Content)
        }
  '2' { cls
        $DellDesktopsOSDCloudConfigScript = Invoke-WebRequest ""
        Invoke-Expression $($DellDesktopsOSDCloudConfigScript.Content)
        }
  '3' { cls
        $CustomPCOSDCloudConfigScript = Invoke-WebRequest ""
        Invoke-Expression $($CustomPCOSDCloudConfigScript.Content)
        }
  '4' { cls
        $HPLaptopsOSDCloudConfigScript = Invoke-WebRequest ""
        Invoke-Expression $($HPLaptopsOSDCloudConfigScript.Content)
        }
  '5' { cls
        $ASUSLaptopsOSDCloudConfigScript = Invoke-WebRequest ""
        Invoke-Expression $($ASUSLaptopsOSDCloudConfigScript.Content)
        }
  '6' { cls
        $AcerLaptopsOSDCloudConfigScript = Invoke-WebRequest ""
        Invoke-Expression $($AcerLaptopsOSDCloudConfigScript.Content)
        }
  '7' { cls
        $LenovoLaptopsOSDCloudConfigScript = Invoke-WebRequest ""
        Invoke-Expression $($LenovoLaptopsOSDCloudConfigScript.Content)
        }
  '8' { cls
         $ESXIVMOSDCloudConfigScript = Invoke-WebRequest ""
        Invoke-Expression $($ESXIVMOSDCloudConfigScript.Content)
        }
  '9' { cls
        $MSSurfaceOSDCloudConfigScript = Invoke-WebRequest ""
        Invoke-Expression $($MSSurfaceOSDCloudConfigScript.Content)
        }
   '10'{cls
        $PCMain = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/OSD%20Cloud/PCMainMenu.ps1")
        Invoke-Expression $($PCMain.Content)
       }
    }
     until ($selection -eq '10'){Invoke-Expression $($PCMain.Content)}
    }

    
Show-MainMenu
