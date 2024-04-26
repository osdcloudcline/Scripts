##########################################################
# Main Menu
##########################################################
Function Show-MainMenu{
    [CmdletBinding()]
    param(
    [string]$Title = 'Manufacturer-Specific Software Installation Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)

Clear-Host
Write-Host "======= $Title ======"
Write-Host " 1. AMD Chipsets and Software"
Write-Host " 2. ASUS Computers"
Write-Host " 3. Acer Computers"
Write-Host " 4. Dell Computers"
Write-Host " 5. HP Computers"
Write-Host " 6. Intel Chipsets and Software"
Write-Host " 7. Lian-Li Software"
Write-Host " 8. Lenovo Computers"
Write-Host " 9. Return to Main"

do
{
$selection = Read-Host 'Please choose an option'
  switch($selection)
  {
  '1' {cls
       $AMD = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/AMD%20/AMD.ps1")
       Invoke-Expression $($AMD.Content)
       }
 '2'{cls
       $ASUS = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/ASUS/ASUSMain.ps1")
       Invoke-Expression $($ASUS.Content)
     }
 '3'{cls
       $Acer = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/Acer/Acer.ps1")
       Invoke-Expression $($Acer.Content)
    }
 '4'{cls
       $Dell = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/System-LOB%20Specific/VDI.ps1")
       Invoke-Expression $($Dell.Content)
    }
 '5'{cls
       $HP = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/System-LOB%20Specific/ManagementPC.ps1")
       Invoke-Expression $($HP.Content)
 }
 '6'{cls
       $Intel = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/System-LOB%20Specific/Honeypot.ps1")
       Invoke-Expression $($Intel.Content)
    }
 '7'{cls
       $LianLi = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/System-LOB%20Specific/ITTech.ps1")
       Invoke-Expression $($LianLi.Content)
    }
 '8'{cls
       $Lenovo = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/WinGetIndivScriptsMain.ps1")
       Invoke-Expression $($Lenovo.Content)
    }
'9'{cls
       $Main = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/ManufacturerMain.ps1")
       Invoke-Expression $($Main.Content)
    }
}
 }
 until ($selection -eq '9'){Invoke-Expression $($Main.Content)}
}
Show-MainMenu 
