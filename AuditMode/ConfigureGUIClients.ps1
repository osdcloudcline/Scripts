##########################################################
# Main Menu
##########################################################
Function Show-MainMenu{
    [CmdletBinding()]
    param(
    [string]$Title = 'Software Installation Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)

Clear-Host
Write-Host "======= $Title ======"
Write-Host " 1. Install Standard Software Configuration"
Write-Host " 2. Install Advanced Software Configuration"
Write-Host " 3. Install Corporate Software Configuration"
Write-Host " 4. Install Client VDI Software Configuration"
Write-Host " 5. Install Server VDI Software Configuration"
Write-Host " 6. Install Management PC Software Configuration"
Write-Host " 7. Install Honeypot Configuration"
Write-Host " 8. Install IT Tech Configuration"
Write-Host " 9. Return to OSD Main Menu"
Write-Host " 10. Exit PowerShell"

do
{ 
$selection = Read-Host 'Please choose an option'
  switch($selection)
  {

 '1' {cls
      Install-Script -Name Start-SplashScreen
      $GUIStandard = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Custom%20Configurations/Standard/Standard.ps1")
      Invoke-Expression $($GUIStandard.Content)
       }
 '2'{cls
      Install-Script -Name Start-SplashScreen
      $GUIAdvanced = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/OOBE%20Splash%20Screen/Advanced/ADVSplashScreen.ps1")
      Invoke-Expression $($GUIAdvanced.Content)
     }
 '3'{cls
     Install-Script -Name Start-SplashScreen
     $GUICorporate = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Custom%20Configurations/Corporate/Corporate.ps1")
     Invoke-Expression $($GUICorporate.Content)
    }
 '4'{cls
    Install-Script -Name Start-SplashScreen
    $GUIClientVDI = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Custom%20Configurations/VDI/ClientVirtualDesktopInterface.ps1")
    Invoke-Expression $($GUIClientVDI.Content)
    }
 '5'{cls
    Install-Script -Name Start-SplashScreen
    $GUIServerVDI = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Custom%20Configurations/VDI/ServerVirtualDesktopInterface.ps1")
    Invoke-Expression $($GUIServerVDI.Content)
    } 
 '6'{cls
    Install-Script -Name Start-SplashScreen
    $GUIManagementPC = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Custom%20Configurations/Management%20PC/ManagementPC.ps1")
    Invoke-Expression $($GUIManagementPC.Content)
     }
 '7'{cls
    Install-Script -Name Start-SplashScreen
    $GUIHoneypot = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Custom%20Configurations/Honeypot/Honeypot.ps1")
    Invoke-Expression $($GUIHoneypot.Content)
    }
 '8'{cls
    Install-Script -Name Start-SplashScreen
    $GUIITTech = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Custom%20Configurations/IT%20Tech/ITTech.ps1")
    Invoke-Expression $($GUIITTech.Content)
    }
 '9'{cls
     $OSDMain = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/WinGetMain.ps1")
     Invoke-Expression $($OSDMain.Content)
    }
'10'{exit}
 }
 }
 until ($selection -eq '10'){exit}
}
Show-MainMenu 
