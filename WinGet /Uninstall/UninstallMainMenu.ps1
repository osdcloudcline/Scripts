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
        $chrome = "Google Chrome" -or "Chrome" -or "chrome"
        $edge = "Microsoft Edge" -or "Edge" -or "edge"
        $firefox = "Mozilla Firefox" -or "Firefox" -or "firefox"

        $WebBrowsers = Read-Host -Prompt 'What browser do you want to remove?'
        If($WebBrowsers -eq $chrome){

        $GoogleChrome = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Uninstall/Browsers/Chrome.ps1")
        Invoke-Expression $($GoogleChrome.Content)
        }
        ElseIf($WebBrowsers -eq $edge){}
        ElseIf($WebBrowsers -eq $firefox){}
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
     
