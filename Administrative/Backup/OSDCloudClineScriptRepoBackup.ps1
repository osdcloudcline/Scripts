##########################################################
# Main Menu
##########################################################
Function Show-MainMenu{
    [CmdletBinding()]
    param(
    [string]$Title = 'OSD Cloud -  Script Backup Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)
cls

Clear-Host
Write-Host "======= $Title ======"
Write-Host " 1. Backup Administrative Scripts"
Write-Host " 2. Backup OS Integration Scripts"
Write-Host " 3. Backup Audit Mode Scripts"
Write-Host " 4. Backup Management PC Scripts"
Write-Host " 5. Backup OS Downloads Scripts"
Write-Host " 6. Backup OSD Cloud Scripts"
Write-Host " 7. Backup OSD Builder Scripts"
Write-Host " 8. Backup PowerShell Modules Scripts"
Write-Host " 9. Backup Post-Install Scripts"
Write-Host " 10. Backup Registry Files Scripts"
Write-Host " 11. Backup Start Menu Configuration Scripts"
Write-Host " 12. Backup WinGet Scripts"
Write-Host " 13. Backup ALL Scripts"
Write-Host " 14. Exit PowerShell"
do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
        $AdminBackupLog = "C:\OSD Cloud\Logs\Script Backups\Administrative.log"
        Start-Transcript $AdminBackupLog
        Get-Date
        Write-Host 
        Write-Host "Preparing script backup..." -ForegroundColor Cyan 
        Write-Host 
        Write-Verbose "Installing and Importing OSD Module..." -Verbose
        Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck
        Import-Module -Name OSD -Force
        Write-Host 
        Write-Verbose "Downloading Administrative PowerShell Scripts from OSDCloudCline GitHub Repo..." -Verbose
        $AdminScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/Administrative/AdminMainMenu.ps1"
        $AdminBackupDestination = "C:\scripts\backup\GitHubRepo\Administrative"
        Save-WebFile -SourceUrl $AdminScriptURL -DestinationDirectory $AdminBackupDestination
        Write-Host
        Write-Host "Script Backup Successfully..." -ForegroundColor Green
        Stop-Transcript
        Show-MainMenu
        }
  '2' { cls
        $OSIntegrationLog = "C:\OSD Cloud\Logs\Script Backups\OSIntegration.log"
        Start-Transcript $OSIntegrationLog
        Write-Host 
        Write-Host "Preparing script backup..." -ForegroundColor Cyan 
        Write-Host 
        Write-Verbose "Installing and Importing OSD Module..." -Verbose
        Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck
        Import-Module -Name OSD -Force
        Write-Host 
        Write-Verbose "Downloading OS Integration PowerShell Scripts from OSDCloudCline GitHub Repo..." -Verbose
        $DriversScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/Administrative/OS%20Integration/Drivers.ps1"
        $RegistryScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/Administrative/OS%20Integration/Registry.ps1"
        $UpdatesScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/Administrative/OS%20Integration/Updates.ps1"
        $OSIntegrationDestination = "C:\scripts\backup\GitHubRepo\OS Integration"
        Save-WebFile -SourceUrl $DriversScriptURL -DestinationDirectory $OSIntegrationDestination
        Save-WebFile -SourceUrl $RegistryScriptURL -DestinationDirectory $OSIntegrationDestination
        Save-WebFile -SourceUrl $UpdatesScriptURL -DestinationDirectory $OSIntegrationDestination
        Write-Host
        Write-Host "Script Backup Successfully..." -ForegroundColor Green
        Stop-Transcript
        Show-MainMenu
        }
  '3' { cls
        $AuditModeLog = "C:\OSD Cloud\Logs\Script Backups\AuditMode.log
        Start-Transcript $AuditModeLog
        Write-Host 
        Write-Host "Preparing script backup..." -ForegroundColor Cyan 
        Write-Host 
        Write-Verbose "Installing and Importing OSD Module..." -Verbose
        Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck
        Import-Module -Name OSD -Force
        Write-Host 
        Write-Verbose "Downloading Audit Mode PowerShell Scripts from OSDCloudCline GitHub Repo..." -Verbose
        $ConfigureScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/AuditMode/Configure.ps1"
        $MainMenuScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/AuditMode/MainMenu.ps1"
        $AuditModeDestination = "C:\scripts\backup\GitHubRepo\Audit Mode"
        Save-WebFile -SourceUrl $ConfigureScriptURL -DestinationDirectory $AuditModeDestination
        Save-WebFile -SourceUrl $MainMenuScriptURL -DestinationDirectory $AuditModeDestination
        Write-Host
        Write-Host "Script Backup Successfully..." -ForegroundColor Green
        Stop-Transcript
        Show-MainMenu
        }
  '4' { cls
        $ManagementPCBackupLog = "C:\OSD Cloud\Logs\Script Backups\ManagementPC.log"
        Start-Transcript $ManagementPCBackupLog
        Get-Date
        Write-Host 
        Write-Host "Preparing script backup..." -ForegroundColor Cyan 
        Write-Host 
        Write-Verbose "Installing and Importing OSD Module..." -Verbose
        Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck
        Import-Module -Name OSD -Force
        Write-Host 
        Write-Verbose "Downloading Management PC PowerShell Scripts from OSDCloudCline GitHub Repo..." -Verbose
        $ManagementPCScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/Management%20PC/ManagementPC-OSDCloudInitialConfiguration.ps1"
        $ManagementPCDestination = "C:\scripts\backup\GitHubRepo\Administrative"
        Save-WebFile -SourceUrl $ManagementPCScriptURL -DestinationDirectory $ManagementPCBackupDestination
        Write-Host
        Write-Host "Script Backup Successfully..." -ForegroundColor Green
        Stop-Transcript
        Show-MainMenu
        }
  '5' { cls
        $ClientOSBackupLog = "C:\OSD Cloud\Logs\Script Backups\ClientOS.log"
        Start-Transcript $ClientOSBackupLog
        Get-Date
        Write-Host 
        Write-Host "Preparing script backup..." -ForegroundColor Cyan 
        Write-Host 
        Write-Verbose "Installing and Importing OSD Module..." -Verbose
        Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck
        Import-Module -Name OSD -Force
        Write-Host 
        Write-Verbose "Downloading Client OS PowerShell Scripts and ZIP Files from OSDCloudCline GitHub Repo..." -Verbose
        Write-Host 
        $Win1022H2ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%2010/22H2/22H2.ps1"
        $Win1022H2ZIPURL = "https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%2010/22H2/19045.4472_amd64_en-us_multi_39143328_convert_virtual.zip"
        $Win1022H2Destination = "C:\scripts\backup\GitHubRepo\Windows 10\22H2"

        $Win1121H2ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%2011/21H2/21H2.PS1"
        $Win1121H2ZIPURL = "https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%2011/21H2/22000.2960_amd64_en-us_multi_1843eef2_convert_virtual.zip"
        $Win1121H2Destination = "C:\scripts\backup\GitHubRepo\Windows 11\21H2"

        $Win1122H2ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%2011/22H2/22H2.ps1"
        $Win1122H2ZIPURL = "https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%2011/22H2/22621.3668_amd64_en-us_multi_354f5027_convert_virtual.zip"
        $Win1122H2Destination = "C:\scripts\backup\GitHubRepo\Windows 11\22H2"

        $Win1123H2ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%2011/23H2/23H2.ps1"
        $Win1123H2ZIPURL = "https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%2011/23H2/22631.3668_amd64_en-us_multi_593f698d_convert_virtual.zip"
        $Win1123H2Destination = "C:\scripts\backup\GitHubRepo\Windows 11\23H2"

        $Win1124H2ScriptURL = ""
        $Win1124H2ZIPURL = ""
        $Win1124H2Destination = "C:\scripts\backup\GitHubRepo\Windows 11\24H2"

        $Win1125H2ScriptURL = ""
        $Win1125H2ZIPURL = ""
        $Win1125H2Destination = "C:\scripts\backup\GitHubRepo\Windows 11\25H2"

        
        Write-Verbose "Downloading and Saving Windows 10 22H2 Files..."
        Save-WebFile -SourceUrl $Win1022H2ScriptURL -DestinationDirectory $Win1022H2Destination
        Save-WebFile -SourceUrl $Win1022H2ZIPURLURL -DestinationDirectory $Win1022H2Destination
        Write-Host
        Write-Host "Windows 10 22H2 ZIP File and Script Backup is Successful..." -ForegroundColor Green

        Write-Verbose "Downloading and Saving Windows 11 21H2 Files..."
        Save-WebFile -SourceUrl $Win1121H2ScriptURL -DestinationDirectory $Win1121H2Destination
        Save-WebFile -SourceUrl $Win1121H2ZIPURL -DestinationDirectory $Win1121H2Destination
        Write-Host
        Write-Host "Windows 11 21H2 ZIP File and Script Backup is Successful..." -ForegroundColor Green

        Write-Verbose "Downloading and Saving Windows 11 22H2 Files..."
        Save-WebFile -SourceUrl $Win1122H2ScriptURL -DestinationDirectory $Win1122H2Destination
        Save-WebFile -SourceUrl $Win1122H2ZIPURL -DestinationDirectory $Win1122H2Destination
        Write-Host
        Write-Host "Windows 11 22H2 ZIP File and Script Backup is Successful..." -ForegroundColor Green

        Write-Verbose "Downloading and Saving Windows 11 23H2 Files..."
        Save-WebFile -SourceUrl $Win1123H2ScriptURL -DestinationDirectory $Win1123H2Destination
        Save-WebFile -SourceUrl $Win1123H2ZIPURL -DestinationDirectory $Win1123H2Destination
        Write-Host
        Write-Host "Windows 11 23H2 ZIP File and Script Backup is Successful..." -ForegroundColor Green

        Write-Verbose "Downloading and Saving Windows 11 24H2 Files..."
        Save-WebFile -SourceUrl $Win1124H2ScriptURL -DestinationDirectory $Win1124H2Destination
        Save-WebFile -SourceUrl $Win1124H2ZIPURL -DestinationDirectory $Win1124H2Destination
        Write-Host
        Write-Host "Windows 11 24H2 ZIP File and Script Backup is Successful..." -ForegroundColor Green

        Write-Verbose "Downloading and Saving Windows 11 25H2 Files..."
        Save-WebFile -SourceUrl $Win1125H2ScriptURL -DestinationDirectory $Win1125H2Destination
        Save-WebFile -SourceUrl $Win1125H2ZIPURL -DestinationDirectory $Win1125H2Destination
        Write-Host
        Write-Host "Windows 11 23H2 ZIP File and Script Backup is Successful..." -ForegroundColor Green
        Stop-Transcript
        Show-MainMenu
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
  '12' { cls
       
        }
  '13' { cls
        
        }
  '14' { cls
        
        exit
        }
  
    }
    }
    until ($selection -eq '6'){}
    }

Show-MainMenu
