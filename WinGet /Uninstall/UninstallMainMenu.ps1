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
        Show-CloudMenu
        }
  '3' { cls
        Show-FTPMenu
        }
  '4' { cls
        $Steam = Invoke-WebRequest("")
        Invoke-Expression $($Steam.Content)
        Show-MainMenu
        }
  '5' { cls
        Show-MediaMenu
        }
  '6' { cls
        Show-ProduvtivityMenu
        }
  '7' { cls
        Show-ProgrammingMenu
        }
  '8' { cls
        
        }
  '9' { cls
        Show-VDIMenu
        }
  '10' { cls
        $VMWareWSPro = Invoke-WebRequest
        Invoke-Expression $($VMWareWSPro.Content)
        Show-MainMenu
        }
  '11' { cls
        Show-StoreAppsMenu
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
    [string]$Title = 'OSD Cloud -  Web Browser Uninstall Main Menu',
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

Function Show-CloudMenu(){
     [CmdletBinding()]
    param(
    [string]$Title = 'OSD Cloud -  Cloud Backup Uninstall Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)
cls

Clear-Host
Write-Host "======= $Title ======"
Write-Host " 1. Uninstall DropBox and Google Drive"
Write-Host " 2. Uninstall Google Drive and Next Cloud"
Write-Host " 3. Uninstall DropBox and Next Cloud"
Write-Host " 4. Uninstall DropBox and iCloud"
Write-Host " 5. Uninstall Google Drive and iCloud"
Write-Host " 6. Uninstall NextCloud and iCloud"
Write-Host " 7. Uninstall DropBox, Next Cloud, and Google Drive"
Write-Host " 8. Uninstall One Drive and DropBox"
Write-Host " 9. Uninstall One Drive and Google Drive"
Write-Host " 10. Uninstall One Drive and Next Cloud"
Write-Host " 11. Uninstall One Drive, Google Drive, and DropBox"
Write-Host " 12. Uninstall One Drive, Google Drive, and Next Cloud"
Write-Host " 13. Uninstall One Drive, DropBox, and Next Cloud"
Write-Host " 14. Uninstall One Drive, Google Drive, and iCloud"
Write-Host " 15. Uninstall One Drive, iCloud, and Next Cloud"
Write-Host " 16. Uninstall One Drive, DropBox, and iCloud"
Write-Host " 17. Uninstall One Drive"
Write-Host " 18. Uninstall DropBox"
Write-Host " 19. Uninstall Google Drive"
Write-Host " 20. Uninstall Next Cloud"
Write-Host " 21. Uninstall iCloud"
Write-Host " 22. Return to Main Menu"

do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {
'1' { cls
      Write-Host "OneDrive, Next Cloud and iCloud will REMAIN INSTALLED" -ForegroundColor DarkRed -BackgroundColor White
      $DropBox = Invoke-WebRequest("")
      Invoke-Expression $($DropBox.Content)

      $GDrive = Invoke-WebRequest("")
      Invoke-Expression $($GDrive.Content)
    }
'2' { cls
     Write-Host "OneDrive, DropBox and iCloud will REMAIN INSTALLED" -ForegroundColor DarkRed -BackgroundColor White
      $GDrive = Invoke-WebRequest("")
      Invoke-Expression $($GDrive.Content)

      $NextCloud = Invoke-WebRequest("")
      Invoke-Expression $($NextCloud.Content)
    }
'3' { cls
      Write-Host "OneDrive, Google Drive, and iCloud will REMAIN INSTALLED" -ForegroundColor DarkRed -BackgroundColor White
      $DropBox = Invoke-WebRequest("")
      Invoke-Expression $($DropBox.Content)

      $NextCloud = Invoke-WebRequest("")
      Invoke-Expression $($NextCloud.Content)
    }
'4'{ cls
      Write-Host "OneDrive, Next Cloud and Google Drive will REMAIN INSTALLED" -ForegroundColor DarkRed -BackgroundColor White
      $DropBox = Invoke-WebRequest("")
      Invoke-Expression $($DropBox.Content)

      $iCloud = Invoke-WebRequest("")
      Invoke-Expression $($iCloud.Content)
      }
'5'{ cls
     Write-Host "OneDrive, Next Cloud and DropBox will REMAIN INSTALLED" -ForegroundColor DarkRed -BackgroundColor White
     $GDrive = Invoke-WebRequest("")
     Invoke-Expression $($GDrive.Content)

     $iCloud = Invoke-WebRequest("")
     Invoke-Expression $($iCloud.Content)
    }
'6'{ cls
     Write-Host "OneDrive, Google Drive and DropBox will REMAIN INSTALLED" -ForegroundColor DarkRed -BackgroundColor White
     $NextCloud = Invoke-WebRequest("")
     Invoke-Expression $($NextCloud.Content)

     $iCloud = Invoke-WebRequest("")
     Invoke-Expression $($iCloud.Content)
    }
'7' { cls
      Write-Host "OneDrive and iCloud will REMAIN INSTALLED" -ForegroundColor DarkRed -BackgroundColor White
      $DropBox = Invoke-WebRequest("")
      Invoke-Expression $($DropBox.Content)

      $NextCloud = Invoke-WebRequest("")
      Invoke-Expression $($NextCloud.Content)

      $GDrive = Invoke-WebRequest("")
      Invoke-Expression $($GDrive.Content)
      
    }
'8' { cls
      Write-Host "Next Cloud, Google Drive and iCloud will REMAIN INSTALLED" -ForegroundColor DarkRed -BackgroundColor White
      $OneDrive = Invoke-WebRequest("")
      Invoke-Expression $($OneDrive.Content)

      $DropBox = Invoke-WebRequest("")
      Invoke-Expression $($DropBox.Content)
    }
'9' { cls
      Write-Host "Next Cloud, DropBox and iCloud will REMAIN INSTALLED" -ForegroundColor DarkRed -BackgroundColor White
      $OneDrive = Invoke-WebRequest("")
      Invoke-Expression $($OneDrive.Content)

      $GDrive = Invoke-WebRequest("")
      Invoke-Expression $($GDrive.Content)
    }
'10' { cls
      Write-Host "Google Drive, DropBox and iCloud will REMAIN INSTALLED" -ForegroundColor DarkRed -BackgroundColor White
      $OneDrive = Invoke-WebRequest("")
      Invoke-Expression $($OneDrive.Content)

      $NextCloud = Invoke-WebRequest("")
      Invoke-Expression $($NextCloud.Content)
    }
'11' { cls
      Write-Host "Next Cloud and iCloud will REMAIN INSTALLED" -ForegroundColor DarkRed -BackgroundColor White
      $OneDrive = Invoke-WebRequest("")
      Invoke-Expression $($OneDrive.Content)

      $GDrive = Invoke-WebRequest("")
      Invoke-Expression $($GDrive.Content)

      $DropBox = Invoke-WebRequest("")
      Invoke-Expression $($DropBox.Content)
    }
'12' { cls
      Write-Host "DropBox and iCloud will REMAIN INSTALLED" -ForegroundColor DarkRed -BackgroundColor White
      $OneDrive = Invoke-WebRequest("")
      Invoke-Expression $($OneDrive.Content)

      $GDrive = Invoke-WebRequest("")
      Invoke-Expression $($GDrive.Content)

      $NextCloud = Invoke-WebRequest("")
      Invoke-Expression $($NextCloud.Content)
    }
'13' { cls
       Write-Host "Google Drive and iCloud will REMAIN INSTALLED" -ForegroundColor DarkRed -BackgroundColor White
       $OneDrive = Invoke-WebRequest("")
       Invoke-Expression $($OneDrive.Content)

       $DropBox = Invoke-WebRequest("")
       Invoke-Expression $($DropBox.Content)

       $NextCloud = Invoke-WebRequest("")
       Invoke-Expression $($NextCloud.Content)
    }
'14' { cls
       Write-Host "Next Cloud and DropBox will REMAIN INSTALLED" -ForegroundColor DarkRed -BackgroundColor White
       $OneDrive = Invoke-WebRequest("")
       Invoke-Expression $($OneDrive.Content)

       $GDrive = Invoke-WebRequest("")
       Invoke-Expression $($GDrive.Content)

       $iCloud = Invoke-WebRequest("")
       Invoke-Expression $($iCloud.Content)
     }
'15' { cls
       Write-Host "Google Drive and DropBox will REMAIN INSTALLED" -ForegroundColor DarkRed -BackgroundColor White
       $OneDrive = Invoke-WebRequest("")
       Invoke-Expression $($OneDrive.Content)

       $iCloud = Invoke-WebRequest("")
       Invoke-Expression $($iCloud.Content)

       $NextCloud = Invoke-WebRequest("")
       Invoke-Expression $($NextCloud.Content)
     }
'16' { cls
       Write-Host "Google Drive and Next Cloud will REMAIN INSTALLED" -ForegroundColor DarkRed -BackgroundColor White
       $OneDrive = Invoke-WebRequest("")
       Invoke-Expression $($OneDrive.Content)

       $DropBox = Invoke-WebRequest("")
       Invoke-Expression $($DropBox.Content)

       $iCloud = Invoke-WebRequest("")
       Invoke-Expression $($iCloud.Content)       
     }
'17' { cls
       Write-Host "ALL BUT OneDrive will REMAIN INSTALLED" -ForegroundColor DarkRed -BackgroundColor White
       $OneDrive = Invoke-WebRequest("")
       Invoke-Expression $($OneDrive.Content)
    }
'18' { cls
       Write-Host "ALL BUT DropBox will REMAIN INSTALLED" -ForegroundColor DarkRed -BackgroundColor White
       $DropBox = Invoke-WebRequest("")
       Invoke-Expression $($DropBox.Content)
    }
'19' { cls
       Write-Host "ALL BUT Google Drive will REMAIN INSTALLED" -ForegroundColor DarkRed -BackgroundColor White
       $GDrive = Invoke-WebRequest("")
       Invoke-Expression $($GDrive.Content)
    }
'20' { cls
       Write-Host "ALL BUT NextCloud will REMAIN INSTALLED" -ForegroundColor DarkRed -BackgroundColor White
       $NextCloud = Invoke-WebRequest("")
       Invoke-Expression $($NextCloud.Content)
    }
'21' { cls
       Write-Host "ALL BUT iCloud will REMAIN INSTALLED" -ForegroundColor DarkRed -BackgroundColor White
       $iCloud = Invoke-WebRequest("")
       Invoke-Expression $($iCloud.Content)
    }
'22' { cls
       Show-MainMenu
    }
    
    }
    }
    until ($selection -eq '22'){Show-MainMenu}
    }

Function Show-FTPMenu(){
     [CmdletBinding()]
    param(
    [string]$Title = 'OSD Cloud -  File Transfer Uninstall Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)
cls

Clear-Host
Write-Host "======= $Title ======"
Write-Host " 1. Uninstall FileZilla and PuTTY"
Write-Host " 2. Uninstall PuTTY and WinSCP"
Write-Host " 3. Uninstall FileZilla and WinSCP"
Write-Host " 4. Uninstall FileZilla"
Write-Host " 5. Uninstall PuTTY"
Write-Host " 6. Uninstall WinSCP"
Write-Host " 7. Return to Main Menu"
do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {
'1' { cls
      Write-Host " WinSCP will REMAIN INSTALLED" -ForegroundColor DarkRed -BackgroundColor White
      $FileZilla = Invoke-WebRequest("")
      Invoke-Expression $($FileZilla.Content)

      $PuTTY = Invoke-WebRequest("")
      Invoke-Expression $($PuTTY.Content)  
    }
'2' { cls
     Write-Host "FileZilla will REMAIN INSTALLED" -ForegroundColor DarkRed -BackgroundColor White
     $PuTTY = Invoke-WebRequest("")
     Invoke-Expression $($PuTTY.Content)

     $WinSCP = Invoke-WebRequest("")
     Invoke-Expression $($WinSCP.Content)
    }
'3' { cls
      Write-Host "PuTTY will REMAIN INSTALLED" -ForegroundColor DarkRed -BackgroundColor White
      $FileZilla = Invoke-WebRequest("")
      Invoke-Expression $($FileZilla.Content)

      $WinSCP = Invoke-WebRequest("")
      Invoke-Expression $($WinSCP.Content)
    }
'4'{ cls
      Write-Host "PuTTY and WinSCP will REMAIN INSTALLED" -ForegroundColor DarkRed -BackgroundColor White
      $FileZilla = Invoke-WebRequest("")
      Invoke-Expression $($FileZilla.Content)
      }
'5'{ cls
     Write-Host "FileZilla and WinSCP will REMAIN INSTALLED" -ForegroundColor DarkRed -BackgroundColor White
     $PuTTY = Invoke-WebRequest("")
     Invoke-Expression $($PuTTY.Content)
    }
'6'{ cls
     Write-Host "FileZilla and PuTTY will REMAIN INSTALLED" -ForegroundColor DarkRed -BackgroundColor White
     $WinSCP = Invoke-WebRequest("")
     Invoke-Expression $($WinSCP.Content)
    }
'7' {cls
     Show-MainMenu
     }
     
    }
    }
    until ($selection -eq '7'){Show-MainMenu}
    }

Function Show-MediaMenu(){
     [CmdletBinding()]
    param(
    [string]$Title = 'OSD Cloud -  Media Uninstall Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)
cls

Clear-Host
Write-Host "======= $Title ======"
Write-Host " 1. Uninstall ALL but VLC Player and MediaInfo"
Write-Host " 2. Uninstall ALL Media creation software"
Write-Host " 3. Uninstall Home Theater software, including Kodi"
Write-Host " 4. Return to Main Menu"
do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {
'1' { cls
      Write-Host "Only VLC Player and MediaInfo WILL REMAIN INSTALLED" -ForegroundColor DarkRed BackgroundColor White
      $AudacityFFMPEG = Invoke-WebRequest("")
      Invoke-Expression $($AudacityFFMPEG.Content)

      $GIMP = Invoke-WebRequest("")
      Invoke-Expression $($GIMP.Content)

      $HDVideo = Invoke-WebRequest("")
      Invoke-Expression $($HDVideo.Content)

      $Handbrake = Invoke-WebRequest("")
      Invoke-Expression $($Handbrake.Content)

      $Kodi = Invoke-WebRequest("")
      Invoke-Expression $($Kodi.Content)

      $MKVToolnix = Invoke-WebRequest("")
      Invoke-Expression $($MKVToolnix.Content)

      $MakeMKV = Invoke-WebRequest("")
      Invoke-Expression $($MakeMKV.Content)

      $MyHarmony = Invoke-WebRequest("")
      Invoke-Expression $($MyHarmony.Content)

      $PowerISO = Invoke-WebRequest("")
      Invoke-Expression $($PowerISO.Content)

      $iTunes = Invoke-WebRequest("")
      Invoke-Expression $($iTunes.Content)
 }
 '2'{ cls
      Write-Host "Only Kodi, VLC Player, MyHarmony, PowerISO, iTunes and MediaInfo WILL REMAIN INSTALLED" -ForegroundColor DarkRed BackgroundColor White
      $AudacityFFMPEG = Invoke-WebRequest("")
      Invoke-Expression $($AudacityFFMPEG.Content)

      $GIMP = Invoke-WebRequest("")
      Invoke-Expression $($GIMP.Content)

      $HDVideo = Invoke-WebRequest("")
      Invoke-Expression $($HDVideo.Content)

      $Handbrake = Invoke-WebRequest("")
      Invoke-Expression $($Handbrake.Content)

      $MKVToolnix = Invoke-WebRequest("")
      Invoke-Expression $($MKVToolnix.Content)
      
      $MakeMKV = Invoke-WebRequest("")
      Invoke-Expression $($MakeMKV.Content)
  }
'3'{ cls
     Write-Host "Only VLC Player, Audacity/FFMPEG, PowerISO, GIMP, HD Video Converter Pro, MakeMKV, Handbrake, MKVToolnix, iTunes and MediaInfo WILL REMAIN INSTALLED" -ForegroundColor DarkRed BackgroundColor White
     $Kodi = Invoke-WebRequest("")
     Invoke-Expression $($Kodi.Content)

     $MyHarmony = Invoke-WebRequest("")
     Invoke-Expression $($MyHarmony.Content)
}
'4'{ cls
     Show-MainMenu
     }

    }
    }
    until ($selection -eq '4'){Show-MainMenu}
    } 

Function Show-ProduvtivityMenu(){
     [CmdletBinding()]
    param(
    [string]$Title = 'OSD Cloud -  Productivity Uninstall Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)
cls

Clear-Host
Write-Host "======= $Title ======"
Write-Host " 1. Uninstall Office 2021"
Write-Host " 2. Uninstall Office 2024"
Write-Host " 3. Uninstall Office 365"
Write-Host " 4. Uninstall Acrobat Reader"
Write-Host " 5. Return to Main Menu"
do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {
'1' { cls
     
      $Office2021 = Invoke-WebRequest("")
      Invoke-Expression $($Office2021.Content)

 }
 '2'{ cls
      
      $Office2024 = Invoke-WebRequest("")
      Invoke-Expression $($Office2024.Content)
  }
'3'{ cls
     
     $Office365 = Invoke-WebRequest("")
     Invoke-Expression $($Office365.Content)

}
'4'{ cls
     
     $AcrobatReader = Invoke-WebRequest("")
     Invoke-Expression $($AcrobatReader.Content)

}
'5'{ cls
     Show-MainMenu
     }

    }
    }
    until ($selection -eq '5'){Show-MainMenu}
    } 

 Function Show-ProgrammingMenu(){
     [CmdletBinding()]
    param(
    [string]$Title = 'OSD Cloud -  Productivity Uninstall Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)
cls

Clear-Host
Write-Host "======= $Title ======"
Write-Host " 1. Uninstall AI Coder"
Write-Host " 2. Uninstall VS Code"
Write-Host " 3. Uninstall Visual Studio 2022"
Write-Host " 4. Uninstall ALL Programming"
Write-Host " 5. Return to Main Menu"
do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {
'1' { cls
     
      $AICoder = Invoke-WebRequest("")
      Invoke-Expression $($AICoder.Content)

 }
 '2'{ cls
      
      $VSCode = Invoke-WebRequest("")
      Invoke-Expression $($VSCode.Content)
  }
'3'{ cls
     
     $VisualStudio2022 = Invoke-WebRequest("")
     Invoke-Expression $($VisualStudio2022.Content)

}
'4'{ cls
     
     $AICoder = Invoke-WebRequest("")
     Invoke-Expression $($AICoder.Content)

     $VSCode = Invoke-WebRequest("")
     Invoke-Expression $($VSCode.Content)

     $VisualStudio2022 = Invoke-WebRequest("")
     Invoke-Expression $($VisualStudio2022.Content)

}
'5'{ cls
     Show-MainMenu
     }

    }
    }
    until ($selection -eq '5'){Show-MainMenu}
    } 

Function Show-UtilitiesMenu(){}

Function Show-VDIMenu(){
    [CmdletBinding()]
    param(
    [string]$Title = 'OSD Cloud -  VDI Uninstall Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)
cls

Clear-Host
Write-Host "======= $Title ======"
Write-Host " 1. Uninstall Microsoft Remote Desktop"
Write-Host " 2. Uninstall VMWare Horizon"
Write-Host " 3. Uninstall Windows 365 App"
Write-Host " 4. Uninstall ALL"
Write-Host " 5. Return to Main Menu"
do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {
'1' { cls
     
      $MSRemoteDesktop = Invoke-WebRequest("")
      Invoke-Expression $($MSRemoteDesktop.Content)

 }
 '2'{ cls
      
      $VMWareHorizon = Invoke-WebRequest("")
      Invoke-Expression $($VMWareHorizon.Content)
  }
'3'{ cls
     
     $Windows365 = Invoke-WebRequest("")
     Invoke-Expression $($VWindows365.Content)

}
'4'{ cls
     
     $MSRemoteDesktop = Invoke-WebRequest("")
     Invoke-Expression $($MSRemoteDesktop.Content)

     $VMWareHorizon = Invoke-WebRequest("")
     Invoke-Expression $($VMWareHorizon.Content)

     $Windows365 = Invoke-WebRequest("")
     Invoke-Expression $($VWindows365.Content)

}
'5'{ cls
     Show-MainMenu
     }

    }
    }
    until ($selection -eq '5'){Show-MainMenu}
    } 


Function Show-StoreAppsMenu(){
    [CmdletBinding()]
    param(
    [string]$Title = 'OSD Cloud -  Microsoft Store Apps Uninstall Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)
cls

Clear-Host
Write-Host "======= $Title ======"
Write-Host " 1. Uninstall Business Apps"
Write-Host " 2. Uninstall Development Tools Apps"
Write-Host " 3. Uninstall Entertainment Apps"
Write-Host " 4. Uninstall Network Tools Apps"
Write-Host " 5. Uninstall OS SYSTEM Tools Apps"
Write-Host " 6. Uninstall ALL"
Write-Host " 7. Uninstall Individual Store Apps"
Write-Host " 8. Return to Main Menu"
do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {
'1' { cls
     
      $BusinessApps = Invoke-WebRequest("")
      Invoke-Expression $($BusinessApps.Content)
 }
 '2'{ cls
      
      $DevToolsApps = Invoke-WebRequest("")
      Invoke-Expression $($DevToolsApps.Content)
  }
'3'{ cls
     
     $EntertainmentApps = Invoke-WebRequest("")
     Invoke-Expression $($EntertainmentApps.Content)
}
'4'{ cls
     
     $NetworkToolsApps = Invoke-WebRequest("")
     Invoke-Expression $($NetworkToolsApps.Content)
}
'5'{ cls
     
     $OSSYSTEMApps = Invoke-WebRequest("")
     Invoke-Expression $($OSSYSTEMApps.Content)
}
'6'{ cls

     $BusinessApps = Invoke-WebRequest("")
     Invoke-Expression $($BusinessApps.Content)

     $DevToolsApps = Invoke-WebRequest("")
     Invoke-Expression $($DevToolsApps.Content)

     $EntertainmentApps = Invoke-WebRequest("")
     Invoke-Expression $($EntertainmentApps.Content)

     $NetworkToolsApps = Invoke-WebRequest("")
     Invoke-Expression $($NetworkToolsApps.Content)
     
     $OSSYSTEMApps = Invoke-WebRequest("")
     Invoke-Expression $($OSSYSTEMApps.Content)
}
'7'{ cls
     Show-StoreAppsSubMenu
     }
'8'{ cls
     Show-MainMenu
     }

    }
    }
    until ($selection -eq '8'){Show-MainMenu}

}

Function Show-StoreAppsSubMenu(){
    [CmdletBinding()]
    param(
    [string]$Title = 'OSD Cloud -  Microsoft Store Apps Uninstall Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)
cls

Clear-Host
Write-Host "======= $Title ======"
Write-Host " 1. Uninstall Microsoft 365 (Office)"
Write-Host " 2. Uninstall Company Portal"
Write-Host " 3. Uninstall Python 3.12"
Write-Host " 4. Uninstall Netflix"
Write-Host " 5. Uninstall ESPN"
Write-Host " 6. Uninstall Amazon Prime Video"
Write-Host " 7. Uninstall Disney +"
Write-Host " 8. Uninstall Hulu"
Write-Host " 9. Uninstall Apple TV +"
Write-Host " 10. Uninstall Paramount +"
Write-Host " 11. Uninstall Peacock TV"

Write-Host " 8. Return to Store Apps Main Menu"
do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {
'1' { cls
     
      $BusinessApps = Invoke-WebRequest("")
      Invoke-Expression $($BusinessApps.Content)
 }
 '2'{ cls
      
      $DevToolsApps = Invoke-WebRequest("")
      Invoke-Expression $($DevToolsApps.Content)
  }
'3'{ cls
     
     $EntertainmentApps = Invoke-WebRequest("")
     Invoke-Expression $($EntertainmentApps.Content)
}
'4'{ cls
     
     $NetworkToolsApps = Invoke-WebRequest("")
     Invoke-Expression $($NetworkToolsApps.Content)
}
'5'{ cls
     
     $OSSYSTEMApps = Invoke-WebRequest("")
     Invoke-Expression $($OSSYSTEMApps.Content)
}
'6'{ cls

     $BusinessApps = Invoke-WebRequest("")
     Invoke-Expression $($BusinessApps.Content)

     $DevToolsApps = Invoke-WebRequest("")
     Invoke-Expression $($DevToolsApps.Content)

     $EntertainmentApps = Invoke-WebRequest("")
     Invoke-Expression $($EntertainmentApps.Content)

     $NetworkToolsApps = Invoke-WebRequest("")
     Invoke-Expression $($NetworkToolsApps.Content)
     
     $OSSYSTEMApps = Invoke-WebRequest("")
     Invoke-Expression $($OSSYSTEMApps.Content)
}
'7'{ cls
     
     }
'8'{ cls
     Show-MainMenu
     }

    }
    }
    until ($selection -eq '8'){Show-MainMenu}

}
Show-MainMenu
