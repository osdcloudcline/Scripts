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
        $Win1022H2Destination = "C:\scripts\backup\GitHubRepo\OS\Client\Windows 10\22H2"

        $Win1121H2ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%2011/21H2/21H2.PS1"
        $Win1121H2ZIPURL = "https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%2011/21H2/22000.2960_amd64_en-us_multi_1843eef2_convert_virtual.zip"
        $Win1121H2Destination = "C:\scripts\backup\GitHubRepo\OS\Client\Windows 11\21H2"

        $Win1122H2ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%2011/22H2/22H2.ps1"
        $Win1122H2ZIPURL = "https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%2011/22H2/22621.3668_amd64_en-us_multi_354f5027_convert_virtual.zip"
        $Win1122H2Destination = "C:\scripts\backup\GitHubRepo\OS\Client\Windows 11\22H2"

        $Win1123H2ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%2011/23H2/23H2.ps1"
        $Win1123H2ZIPURL = "https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%2011/23H2/22631.3668_amd64_en-us_multi_593f698d_convert_virtual.zip"
        $Win1123H2Destination = "C:\scripts\backup\GitHubRepo\OS\Client\Windows 11\23H2"

        $Win1124H2ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%2011/24H2/24H2.ps1"
        $Win1124H2ZIPURL = "https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%2011/24H2/26100.712_amd64_en-us_multi_0c393b5f_convert_virtual.zip"
        $Win1124H2Destination = "C:\scripts\backup\GitHubRepo\OS\Client\Windows 11\24H2"

        $Win1125H2ScriptURL = ""
        $Win1125H2ZIPURL = ""
        $Win1125H2Destination = "C:\scripts\backup\GitHubRepo\OS\Client\Windows 11\25H2"

        $Win11ALLScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%2011/ALLWin11.ps1"
        $Win11ALLNetworkScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%2011/ALLWin11-Network.ps1"
        $Win11ALLDestination = "C:\scripts\backup\GitHubRepo\OS\Client\Windows 11"

        $Win12RTMScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%2012/RTM/RTM.ps1"
        $Win12RTMZIPURL = ""
        $Win12RTMDestination = "C:\scripts\backup\GitHubRepo\OS\Client\Windows 12\RTM"

        $Win13RTMScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%2013/RTM/RTM.ps1"
        $Win13RTMZIPURL = ""
        $Win13RTMDestination = "C:\scripts\backup\GitHubRepo\OS\Client\Windows 13\RTM"

        $Win14RTMScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%2014/RTM/RTM.ps1"
        $Win14RTMZIPURL = ""
        $Win14RTMDestination = "C:\scripts\backup\GitHubRepo\OS\Client\Windows 14\RTM"

        $Win15RTMScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%2015/RTM/RTM.ps1"
        $Win15RTMZIPURL = ""
        $Win15RTMDestination = "C:\scripts\backup\GitHubRepo\OS\Client\Windows 15\RTM"

        $Win16RTMScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%2016/RTM/RTM.ps1"
        $Win16RTMZIPURL = ""
        $Win16RTMDestination = "C:\scripts\backup\GitHubRepo\OS\Client\Windows 16\RTM"

        $OSScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/OS.ps1"
        $OSScriptDestination = "C:\scripts\backup\GitHubRepo\OS"
        
        Write-Verbose "Downloading and Saving Windows 10 22H2 Files..." -Verbose
        Save-WebFile -SourceUrl $Win1022H2ScriptURL -DestinationDirectory $Win1022H2Destination
        Save-WebFile -SourceUrl $Win1022H2ZIPURLURL -DestinationDirectory $Win1022H2Destination
        Write-Host
        Write-Host "Windows 10 22H2 ZIP File and Script Backup is Successful..." -ForegroundColor Green
        Write-Host 

        Write-Verbose "Downloading and Saving Windows 11 21H2 Files..." -Verbose
        Save-WebFile -SourceUrl $Win1121H2ScriptURL -DestinationDirectory $Win1121H2Destination
        Save-WebFile -SourceUrl $Win1121H2ZIPURL -DestinationDirectory $Win1121H2Destination
        Write-Host
        Write-Host "Windows 11 21H2 ZIP File and Script Backup is Successful..." -ForegroundColor Green
        Write-Host 

        Write-Verbose "Downloading and Saving Windows 11 22H2 Files..." -Verbose
        Save-WebFile -SourceUrl $Win1122H2ScriptURL -DestinationDirectory $Win1122H2Destination
        Save-WebFile -SourceUrl $Win1122H2ZIPURL -DestinationDirectory $Win1122H2Destination
        Write-Host
        Write-Host "Windows 11 22H2 ZIP File and Script Backup is Successful..." -ForegroundColor Green
        Write-Host 

        Write-Verbose "Downloading and Saving Windows 11 23H2 Files..." -Verbose
        Save-WebFile -SourceUrl $Win1123H2ScriptURL -DestinationDirectory $Win1123H2Destination
        Save-WebFile -SourceUrl $Win1123H2ZIPURL -DestinationDirectory $Win1123H2Destination
        Write-Host
        Write-Host "Windows 11 23H2 ZIP File and Script Backup is Successful..." -ForegroundColor Green
        Write-Host 

        Write-Verbose "Downloading and Saving Windows 11 24H2 Files..." -Verbose
        Save-WebFile -SourceUrl $Win1124H2ScriptURL -DestinationDirectory $Win1124H2Destination
        Save-WebFile -SourceUrl $Win1124H2ZIPURL -DestinationDirectory $Win1124H2Destination
        Write-Host
        Write-Host "Windows 11 24H2 ZIP File and Script Backup is Successful..." -ForegroundColor Green
        Write-Host 

        Write-Verbose "Downloading and Saving Windows 11 25H2 Files..." -Verbose
        Save-WebFile -SourceUrl $Win1125H2ScriptURL -DestinationDirectory $Win1125H2Destination
        Save-WebFile -SourceUrl $Win1125H2ZIPURL -DestinationDirectory $Win1125H2Destination
        Write-Host
        Write-Host "Windows 11 23H2 ZIP File and Script Backup is Successful..." -ForegroundColor Green
        Write-Host 
        
        Write-Verbose "Downloading and Saving Windows 11 Master Scripts..." -Verbose
        Save-WebFile -SourceUrl $Win11ALLScriptURL -DestinationDirectory $Win11ALLDestination
        Save-WebFile -SourceUrl $Win11ALLNetworkScriptURL -DestinationDirectory $Win11ALLDestination
        Write-Host
        Write-Host "Windows 11 Master Scripts Backup is Successful..." -ForegroundColor Green
        Write-Host 

        Write-Verbose "Downloading and Saving Windows 12 RTM Files..." -Verbose
        Save-WebFile -SourceUrl $Win12RTMScriptURL -DestinationDirectory $Win12RTMDestination
        Save-WebFile -SourceUrl $Win12RTMZIPURL -DestinationDirectory $Win12RTMDestination
        Write-Host
        Write-Host "Windows 12 RTM ZIP File and Script Backup is Successful..." -ForegroundColor Green
        Write-Host 

        Write-Verbose "Downloading and Saving Windows 13 RTM Files..." -Verbose
        Save-WebFile -SourceUrl $Win13RTMScriptURL -DestinationDirectory $Win13RTMDestination
        Save-WebFile -SourceUrl $Win13RTMZIPURL -DestinationDirectory $Win13RTMDestination
        Write-Host
        Write-Host "Windows 13 RTM ZIP File and Script Backup is Successful..." -ForegroundColor Green
        Write-Host 

        Write-Verbose "Downloading and Saving Windows 14 RTM Files..." -Verbose
        Save-WebFile -SourceUrl $Win14RTMScriptURL -DestinationDirectory $Win14RTMDestination
        Save-WebFile -SourceUrl $Win14RTMZIPURL -DestinationDirectory $Win14RTMDestination
        Write-Host
        Write-Host "Windows 14 RTM ZIP File and Script Backup is Successful..." -ForegroundColor Green
        Write-Host 

        Write-Verbose "Downloading and Saving Windows 15 RTM Files..." -Verbose
        Save-WebFile -SourceUrl $Win15RTMScriptURL -DestinationDirectory $Win15RTMDestination
        Save-WebFile -SourceUrl $Win15RTMZIPURL -DestinationDirectory $Win15RTMDestination
        Write-Host
        Write-Host "Windows 15 RTM ZIP File and Script Backup is Successful..." -ForegroundColor Green
        Write-Host 

        Write-Verbose "Downloading and Saving Windows 16 RTM Files..." -Verbose
        Save-WebFile -SourceUrl $Win16RTMScriptURL -DestinationDirectory $Win16RTMDestination
        Save-WebFile -SourceUrl $Win16RTMZIPURL -DestinationDirectory $Win16RTMDestination
        Write-Host
        Write-Host "Windows 16 RTM ZIP File and Script Backup is Successful..." -ForegroundColor Green
        Write-Host 

        Write-Verbose "Downloading and Saving OS Main Menu Script..." -Verbose
        Save-WebFile -SourceUrl $OSScriptURL -DestinationDirectory $OSScriptDestination
        Write-Host
        Write-Host "Windows 16 RTM ZIP File and Script Backup is Successful..." -ForegroundColor Green
        Write-Host 
        Stop-Transcript

        $ServerOSBackupLog = "C:\OSD Cloud\Logs\Script Backups\ServerOS.log"
        Start-Transcript $ServerOSBackupLog
        Get-Date
        Write-Host 
        Write-Host "Preparing script backup..." -ForegroundColor Cyan 
        Write-Host 
        Write-Verbose "Downloading Server OS PowerShell Scripts and ZIP Files from OSDCloudCline GitHub Repo..." -Verbose
        Write-Host 

        $WinServer2022ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%20Server/2022/2022.ps1"
        $WinServer2022ZIPURL = "https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%20Server/2022/20348.2461_amd64_en-us_multi_b9f1ddc0_convert.zip"
        $WinServer2022Destination = "C:\scripts\backup\GitHubRepo\OS\Server\Windows Server\2022"

        $WinServer2025ScriptURL = ""
        $WinServer2025ZIPURL = ""
        $WinServer2025Destination = "C:\scripts\backup\GitHubRepo\OS\Server\Windows Server\2025"

        $WinServer2028ScriptURL = ""
        $WinServer2028ZIPURL = ""
        $WinServer2028Destination = "C:\scripts\backup\GitHubRepo\OS\Server\Windows Server\2028"

        $WinServer2031ScriptURL = ""
        $WinServer2031ZIPURL = ""
        $WinServer2031Destination = "C:\scripts\backup\GitHubRepo\OS\Server\Windows Server\2031"

        $WinServer2034ScriptURL = ""
        $WinServer2034ZIPURL = ""
        $WinServer2034Destination = "C:\scripts\backup\GitHubRepo\OS\Server\Windows Server\2034"

        $WinServerALLScriptURL = ""
        $WinServerDestination = "C:\scripts\backup\GitHubRepo\OS\Server\Windows Server"

        Write-Verbose "Downloading and Saving Windows Server 2022 Files..." -Verbose
        Save-WebFile -SourceUrl $WinServer2022ScriptURL -DestinationDirectory $WinServer2022Destination
        Save-WebFile -SourceUrl $WinServer2022ZIPURL -DestinationDirectory $WinServer2022Destination
        Write-Host
        Write-Host "Windows Server 2022 ZIP File and Script Backup is Successful..." -ForegroundColor Green
        Write-Host 

        Write-Verbose "Downloading and Saving Windows Server 2025 Files..." -Verbose
        Save-WebFile -SourceUrl $WinServer2025ScriptURL -DestinationDirectory $WinServer2025Destination
        Save-WebFile -SourceUrl $WinServer2025ZIPURL -DestinationDirectory $WinServer2025Destination
        Write-Host
        Write-Host "Windows Server 2025 ZIP File and Script Backup is Successful..." -ForegroundColor Green
        Write-Host 

        Write-Verbose "Downloading and Saving Windows Server 2028 Files..." -Verbose
        Save-WebFile -SourceUrl $WinServer2028ScriptURL -DestinationDirectory $WinServer2028Destination
        Save-WebFile -SourceUrl $WinServer2028ZIPURL -DestinationDirectory $WinServer2028Destination
        Write-Host
        Write-Host "Windows Server 2028 ZIP File and Script Backup is Successful..." -ForegroundColor Green
        Write-Host 

        Write-Verbose "Downloading and Saving Windows Server 2031 Files..." -Verbose
        Save-WebFile -SourceUrl $WinServer2031ScriptURL -DestinationDirectory $WinServer2031Destination
        Save-WebFile -SourceUrl $WinServer2031ZIPURL -DestinationDirectory $WinServer2031Destination
        Write-Host
        Write-Host "Windows Server 2031 ZIP File and Script Backup is Successful..." -ForegroundColor Green
        Write-Host 

        Write-Verbose "Downloading and Saving Windows Server 2034 Files..." -Verbose
        Save-WebFile -SourceUrl $WinServer2034ScriptURL -DestinationDirectory $WinServer2034Destination
        Save-WebFile -SourceUrl $WinServer2034ZIPURL -DestinationDirectory $WinServer2034Destination
        Write-Host
        Write-Host "Windows Server 2034 ZIP File and Script Backup is Successful..." -ForegroundColor Green
        Write-Host 

        Write-Verbose "Downloading and Saving Windows Server Master Script..." -Verbose
        Save-WebFile -SourceUrl $WinServerALLScriptURL -DestinationDirectory $WinServerDestination
        Write-Host
        Write-Host "Windows Server Master Script Backup is Successful..." -ForegroundColor Green
        Write-Host 
        
        Stop-Transcript
        Show-MainMenu
        }
  '6' { cls
        
        }
  '7' { cls
        $OSDBuilderBackupLog = "C:\OSD Cloud\Logs\Script Backups\OSDBuilder.log"
        Start-Transcript $OSDBuilderBackupLog
        Get-Date
        Write-Host 
        Write-Verbose "Installing and Importing OSD Module..." -Verbose
        Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck
        Import-Module -Name OSD -Force
        Write-Host 
        Write-Host  "Processing: Downloading and Saving OSD Builder related scripts from OSDCloudCline\Scripts\OSDBuilder repo..." -ForegroundColor Cyan
        Write-Host 
        $OSDBuilderScriptRepoMainURL = "https://github.com/osdcloudcline/Scripts/raw/main/OSDBuilder/OSDBuilderMain.ps1"
        $OSDBuilderScriptsDestination = "C:\scripts\backup\GitHubRepo\OSD Builder\Scripts Repo"
        Save-WebFile -SourceUrl $OSDBuilderScriptRepoMainURL -DestinationDirectory $OSDBuilderScriptsDestination
        Write-Host 
        Write-Host  "Processing: Downloading and Saving OSD Builder Client OS-related scripts from OSDCloudCline\Scripts\OSDBuilder repo..." -ForegroundColor Cyan
        Write-Host
        Write-Verbose "Processing Windows 10 scripts..." -Verbose
        $Win10ScriptURL = ""
        $Win10ScriptDestination = ""
        Save-WebFile -SourceUrl $Win10ScriptURL -DestinationDirectory $Win10ScriptDestination
        Write-Host 
        Write-Verbose "Processing Windows 11 scripts..." -Verbose
        $Win1121H2ScriptURL = ""
        $Win1122H2ScriptURL = ""
        $Win1123H2ScriptURL = ""
        $Win1124H2ScriptURL = ""
        $Win1125H2ScriptURL = ""
        $Win11ScriptDestination = ""
        Save-WebFile -SourceUrl $Win1121H2ScriptURL -DestinationDirectory $Win11ScriptDestination
        Save-WebFile -SourceUrl $Win1122H2ScriptURL -DestinationDirectory $Win11ScriptDestination
        Save-WebFile -SourceUrl $Win1123H2ScriptURL -DestinationDirectory $Win11ScriptDestination
        Save-WebFile -SourceUrl $Win1124H2ScriptURL -DestinationDirectory $Win11ScriptDestination
        Save-WebFile -SourceUrl $Win1125H2ScriptURL -DestinationDirectory $Win11ScriptDestination
        Write-Host 
        Write-Verbose "Processing Windows 12 scripts..." -Verbose
        $Win12RTMScriptURL = ""
        $Win12ScriptDestination = ""
        Save-WebFile -SourceUrl $Win12RTMScriptURL -DestinationDirectory $Win12ScriptDestination
        Write-Host 
        Write-Verbose "Processing Windows 13 scripts..." -Verbose
        $Win13RTMScriptURL = ""
        $Win13ScriptDestination = ""
        Save-WebFile -SourceUrl $Win13RTMScriptURL -DestinationDirectory $Win13ScriptDestination
        Write-Host
        Write-Verbose "Processing Windows 14 scripts..." -Verbose
        $Win14RTMScriptURL = ""
        $Win14ScriptDestination = ""
        Save-WebFile -SourceUrl $Win14RTMScriptURL -DestinationDirectory $Win14ScriptDestination
        Write-Host
        Write-Verbose "Processing Windows 15 scripts..." -Verbose
        $Win15RTMScriptURL = ""
        $Win15ScriptDestination = ""
        Save-WebFile -SourceUrl $Win15RTMScriptURL -DestinationDirectory $Win15ScriptDestination
        Write-Host
        Write-Verbose "Processing Windows 16 scripts..." -Verbose
        $Win16RTMScriptURL = ""
        $Win16ScriptDestination = ""
        Save-WebFile -SourceUrl $Win16RTMScriptURL -DestinationDirectory $Win16ScriptDestination
        Write-Host
        Write-Host "Windows Client OS OSD Builder Script Backup is Successful..." -ForegroundColor Green
        Write-Host 
        Write-Host  "Processing: Downloading and Saving OSD Builder Server OS-related scripts from OSDCloudCline\Scripts\OSDBuilder repo..." -ForegroundColor Cyan
        Write-Host
        Write-Verbose "Processing Windows Server 2022 scripts..." -Verbose
        $WinServer2022ScriptURL = ""
        $WinServer2022ScriptDestination = ""
        Save-WebFile -SourceUrl $WinServer2022ScriptUR -DestinationDirectory $WinServer2022ScriptDestination
        Write-Host
        Write-Verbose "Processing Windows Server 2025 scripts..." -Verbose
        $WinServer2025ScriptURL = ""
        $WinServer2025ScriptDestination = ""
        Save-WebFile -SourceUrl $WinServer2025ScriptUR -DestinationDirectory $WinServer2025ScriptDestination
        Write-Host
        Write-Verbose "Processing Windows Server 2028 scripts..." -Verbose
        $WinServer2028ScriptURL = ""
        $WinServer2028ScriptDestination = ""
        Save-WebFile -SourceUrl $WinServer2028ScriptUR -DestinationDirectory $WinServer2028ScriptDestination
        Write-Host
        Write-Verbose "Processing Windows Server 2031 scripts..." -Verbose
        $WinServer2031ScriptURL = ""
        $WinServer2031ScriptDestination = ""
        Save-WebFile -SourceUrl $WinServer2031ScriptUR -DestinationDirectory $WinServer2031ScriptDestination
        Write-Host
        Write-Verbose "Processing Windows Server 2034 scripts..." -Verbose
        $WinServer2034ScriptURL = ""
        $WinServer2034ScriptDestination = ""
        Save-WebFile -SourceUrl $WinServer2034ScriptUR -DestinationDirectory $WinServer2034ScriptDestination
        Write-Host
        Write-Host "Windows Server OS OSD Builder Script Backup is Successful..." -ForegroundColor Green
        Write-Host 

        Stop-Transcript
        Show-MainMenu
        }
  '8' { cls
        $PSModulesBackupLog = "C:\OSD Cloud\Logs\Script Backups\PSModules.log"
        Start-Transcript $PSModulesBackupLog
        Get-Date
        Write-Host 
        Write-Verbose "Installing and Importing OSD Module..." -Verbose
        Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck
        Import-Module -Name OSD -Force
        Write-Host 
        Write-Host  "Processing: Downloading and Saving PowerShell Module installation scripts from OSDCloudCline\Scripts\PS Modules repo..." -ForegroundColor Cyan
        Write-Host
        $PS5ModulesScriptURL = ""
        $PS7ModulesScriptURL = ""
        $PSModulesScriptsDestination = ""
        Save-WebFile -SourceUrl $PS5ModulesScriptURL -DestinationDirectory $PSModuleScriptsDestination
        Save-WebFile -SourceUrl $PS7ModulesScriptURL -DestinationDirectory $PSModuleScriptsDestination
        Write-Host
        Write-Host "PowerShell Module Script Backup is Successful..." -ForegroundColor Green
        Write-Host
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
