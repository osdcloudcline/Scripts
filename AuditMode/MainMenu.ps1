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
Write-Host " 1. Install System Pre-Requisities"
Write-Host " 2. Install Software"
Write-Host " 3. Update Windows"
Write-Host " 4. Update Software"
Write-Host " 5. System Maintenance"
Write-Host " 6. Backup/Restore User Profile Data"
Write-Host " 7. OSD Builder"
Write-Host " 8. Exit PowerShell"
do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
        $SystemPreReqs = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/AuditMode/Configure.ps1")
        Invoke-Expression $($SystemPreReqs.Content)
        }
  '2' { cls
        Show-SoftwareMainMenu
        }
  '3' { cls
        $WinGetMain = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/WinGetMain.ps1")
        Invoke-Expression $($WinGetMain.Content)
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
  '6' { cls
        
        Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck
        Import-Module -Name OSD -Force
        $OSDCloudGHDownloads = "C:\OSDCloud\GitHub\downloads"
        $UPBR = "https://github.com/osdcloudcline/OSDCloud/raw/main/User%20Profile%20Backup%20Restore/UserProfileBackupRestore.exe"
        Write-Host "Downloading User Profile Backup and Restore..." -ForegroundColor Yellow
        Write-Output "Download URL: $UPBR" -Verbose
        Write-Output "Download Location: $OSDCloudGHDownloads" -Verbose
        Save-WebFile -SourceUrl $UPBR -DestinationDirectory $OSDCloudGHDownloads
        $UPBROrgName = "C:\OSDCloud\GitHub\downloads\UserProfileBackupRestore.exe"
        $UPBRNewName = "C:\OSDCloud\GitHub\downloads\UPBR.exe"
        Rename-Item -Path $UPBROrgName -NewName $UPBRNewName
        Start-Process -FilePath "C:\OSDCloud\GitHub\downloads\UPBR.exe"
        Show-MainMenu
        }
  '7'{Write-Verbose "Installing and Importing OSDBuilder PowerShell Module..." -Verbose
      Install-Module -Name OSDBuilder -Force -AllowClobber -SkipPublisherCheck
      Import-Module -Name OSDBuilder -Force
  }
  '8' { exit
        }
  
    }
    }
    until ($selection -eq '8'){}
    }

 Function Show-SoftwareMainMenu(){

    [CmdletBinding()]
    param(
    [string]$Title = 'OSD Cloud -  Audit Mode Software Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)
cls

Clear-Host
Write-Host "======= $Title ======"
Write-Host " 1. Install Standard Software"
Write-Host " 2. Install Advanced Software"
Write-Host " 3. Install Corporate Software"
Write-Host " 4. Install VDI Software"
Write-Host " 5. Install IT Tech Software"
Write-Host " 6. Install Management PC Software"
Write-Host " 7. Install Honeypot Software"
Write-Host " 8. Return to Audit Mode Main Menu"
do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
        $Standard = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/System-LOB%20Specific/STD.ps1")
        Invoke-Expression $($Standard.Content)
        }
  '2' { cls
        $Advanced = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/System-LOB%20Specific/ADV.ps1")
        Invoke-Expression $($Advanced.Content)
        }
  '3' { cls
        $Corporate = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/System-LOB%20Specific/CORPORATE.ps1")
        Invoke-Expression $($Corporate.Content)
        }
  '4' { cls
        $VDI = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/System-LOB%20Specific/VDI.ps1")
        Invoke-Expression $($VDI.Content)
        }
  '5' { cls
        $ITTech = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/System-LOB%20Specific/ITTech.ps1")
        Invoke-Expression $($ITTech.Content)
        }
  '6' { cls
        $ManagementPC = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/System-LOB%20Specific/ManagementPC.ps1")
        Invoke-Expression $($ManagementPC.Content)
        }
  '7'{Write-Verbose "Installing and Importing OSDBuilder PowerShell Module..." -Verbose
      Install-Module -Name OSDBuilder -Force -AllowClobber -SkipPublisherCheck
      Import-Module -Name OSDBuilder -Force
  }
  '8' { exit
        }
  
    }
    }
    until ($selection -eq '8'){}
    }

Show-MainMenu
 
 
