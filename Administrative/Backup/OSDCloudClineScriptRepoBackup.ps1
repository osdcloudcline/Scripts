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
        $AuditModeLog = "C:\OSD Cloud\Logs\Script Backups\AuditMode.log"
        Start-Transcript $AuditModeLog
        Write-Host 
        Write-Host "Preparing script backup..." -ForegroundColor Cyan 
        Write-Host 
        Write-Verbose "Installing and Importing OSD Module..." -Verbose
        Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck
        Import-Module -Name OSD -Force
        Write-Host 
        Write-Verbose "Downloading Audit Mode PowerShell Scripts from OSDCloudCline GitHub Repo..." -Verbose
        $ConfigureClientsScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/AuditMode/ConfigureClients.ps1"
        $ConfigureServersScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/AuditMode/ConfigureServers.ps1"
        $MainMenuScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/AuditMode/MainMenu.ps1"
        $AuditModeDestination = "C:\scripts\backup\GitHubRepo\Audit Mode"
        Save-WebFile -SourceUrl $ConfigureClientsScriptURL -DestinationDirectory $AuditModeDestination
        Save-WebFile -SourceUrl $ConfigureServersScriptURL -DestinationDirectory $AuditModeDestination
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
        $ManagementPCDestination = "C:\scripts\backup\GitHubRepo\Management PC"
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
        $Win1124H2ZIPURL = "https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%2011/24H2/26100.863_amd64_en-us_multi_ad1caad2_convert_virtual.zip"
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

        $WinServer2025ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%20Server/2025/2025.ps1"
        $WinServer2025ZIPURL = "https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%20Server/2025/26100.1_amd64_en-us_multi_30da46b4_convert.zip"
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
        Write-Host  "Processing: PowerShell Module installation scripts from OSDCloudCline\Scripts\PS Modules repo..." -ForegroundColor Cyan
        Write-Host
        $PS5ModulesScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/PowerShell%20Modules/Version%205.1/Install.ps1"
        $PS7ModulesScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/PowerShell%20Modules/Version%207.x/Install.ps1"
        $PSModulesScriptsDestination = "C:\scripts\backup\GitHubRepo\PS Modules"
        Write-Host
        Write-Verbose "Downloading and Saving PowerShell 5.1 and 7.x Module scripts..." -Verbose
        Save-WebFile -SourceUrl $PS5ModulesScriptURL -DestinationDirectory $PSModuleScriptsDestination
        Save-WebFile -SourceUrl $PS7ModulesScriptURL -DestinationDirectory $PSModuleScriptsDestination
        Write-Host
        Write-Host "PowerShell Module Script Backup is Successful..." -ForegroundColor Green
        Write-Host

        Stop-Transcript
        Show-MainMenu
        }
  '9' { cls
        
        }
  '10' { cls
        $RegistryBackupLog = "C:\OSD Cloud\Logs\Script Backups\Registry.log"
        Start-Transcript $PSModulesBackupLog
        Get-Date
        Write-Host 
        Write-Verbose "Installing and Importing OSD Module..." -Verbose
        Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck
        Import-Module -Name OSD -Force
        Write-Host 
        Write-Host  "Processing: Registry Files and installation scripts from OSDCloudCline\Scripts\REG Files repo..." -ForegroundColor Cyan
        Write-Host
        $3DMarkREGURL = "https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Software/UL%20Inc./3DMark.reg"
        $AdobeREG1URL = "https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Software/Adobe/Acrobat1.reg"
        $AdobeREG2URL = "https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Software/Adobe/Acrobat2.reg"
        $AdobeREG3URL = "https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Software/Adobe/AdobeCC.reg"
        $AdobeREG4URL = "https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Software/Adobe/AdobeCC2.reg"
        $AdobeREG5URL = "https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Software/Adobe/AdobeCC3.reg"
        $BitLockerREGURL = "https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Client%20Operating%20System/DisableBitLockerDeviceEncryption.reg"
        $PCMark10REGURL = "https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Software/UL%20Inc./PCMark10.reg"
        $SYSTEMDesktopREGURL = "https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Client%20Operating%20System/SYSTEMDesktopIcons.reg"
        $ShowHiddenFilesREGURL = "https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Client%20Operating%20System/ShowHiddenFilesFolders.reg"
        $Win10OSModificationsREGURL = "https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Client%20Operating%20System/Windows10-OSModifications.reg"
        $Win11OSModificationsREGURL = "https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Client%20Operating%20System/Windows11-OSModifications.reg"
        $REGFilesZIPURL = ""
        $REGFilesClientScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/ClientRegistry.ps1"
        $REGFilesServerScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/ServerRegistry.ps1"
        $REGFilesScriptsDestination = "C:\scripts\backup\GitHubRepo\Registry Files"
        Write-Host
        Write-Verbose "Downloading and Saving Registry Files..." -Verbose
        Save-WebFile -SourceUrl $3DMarkREGURL -DestinationDirectory $REGFilesScriptsDestination
        Save-WebFile -SourceUrl $AdobeREG1URL  -DestinationDirectory $REGFilesScriptsDestination
        Save-WebFile -SourceUrl $AdobeREG2URL  -DestinationDirectory $REGFilesScriptsDestination
        Save-WebFile -SourceUrl $AdobeREG3URL  -DestinationDirectory $REGFilesScriptsDestination
        Save-WebFile -SourceUrl $AdobeREG4URL  -DestinationDirectory $REGFilesScriptsDestination
        Save-WebFile -SourceUrl $AdobeREG5URL  -DestinationDirectory $REGFilesScriptsDestination
        Save-WebFile -SourceUrl $BitLockerREGURL -DestinationDirectory $REGFilesScriptsDestination
        Save-WebFile -SourceUrl $PCMark10REGURL -DestinationDirectory $REGFilesScriptsDestination
        Save-WebFile -SourceUrl $SYSTEMDesktopREGURL -DestinationDirectory $REGFilesScriptsDestination
        Save-WebFile -SourceUrl $ShowHiddenFilesREGURL -DestinationDirectory $REGFilesScriptsDestination
        Save-WebFile -SourceUrl $Win10OSModificationsREGURL -DestinationDirectory $REGFilesScriptsDestination
        Save-WebFile -SourceUrl $Win11OSModificationsREGURL -DestinationDirectory $REGFilesScriptsDestination
        Write-Host
        Write-Verbose "Downloading and Saving Registry ZIP File..." -Verbose
        Save-WebFile -SourceUrl $REGFilesZIPURL -DestinationDirectory $REGFilesScriptsDestination
        Write-Host 
        Write-Verbose "Downloading and Saving Registry Script Files..." -Verbose
        Save-WebFile -SourceUrl $REGFilesClientScriptURL -DestinationDirectory $REGFilesScriptsDestination
        Save-WebFile -SourceUrl $REGFilesServerScriptURL -DestinationDirectory $REGFilesScriptsDestination
        Write-Host
        Write-Host
        Write-Host "Registry Files and Script Backup is Successful..." -ForegroundColor Green
        Write-Host

        Stop-Transcript
        Show-MainMenu
        }
  '11' {cls
         
        }
  '12' {cls
        $WingetBackupLog = "C:\OSD Cloud\Logs\Script Backups\WinGet.log"
        Start-Transcript $WingetBackupLog
        Get-Date
        Write-Host 
        Write-Verbose "Installing and Importing OSD Module..." -Verbose
        Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck
        Import-Module -Name OSD -Force

        # Custom Configurations - Main Scripts URLs
        
        $CustomCongigAdvancedScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Custom%20Configurations/Advanced/Advanced.ps1"
        $CustomConfigCorporateScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Custom%20Configurations/Corporate/Corporate.ps1"
        $CustomConfigHoneypotScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Custom%20Configurations/Honeypot/Honeypot.ps1"
        $CustomConfigITTechScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Custom%20Configurations/IT%20Tech/ITTech.ps1"
        $CustomConfigManagementPCScriptURL= "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Custom%20Configurations/Management%20PC/ManagementPC.ps1"
        $CustomConfigServerSystemsScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Custom%20Configurations/Server%20Systems/ServerSoftware.ps1"
        $CustomConfigStandardScriptsURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Custom%20Configurations/Standard/Standard.ps1"
        $CustomConfigClientVDIScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Custom%20Configurations/VDI/ClientVirtualDesktopInterface.ps1"
        $CustomConfigServerVDIScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Custom%20Configurations/VDI/ServerVirtualDesktopInterface.ps1"

        # Individual Winget INSTALL Scripts - Browsers
        
        $AdvancedBrowser1ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Browsers/Advanced/Chrome.ps1"
        $AdvancedBrowser2ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Browsers/Advanced/Firefox.ps1"
        $CorporateBrowser1ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Browsers/Corporate/Chrome.ps1"
        $HoneypotBrowser1ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Browsers/Honeypot/Chrome.ps1"
        $ITTechBrowser1ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Browsers/Honeypot/Chrome.ps1"
        $ManagementPCBrowser1ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Browsers/Management%20PC/Chrome.ps1"
        $StandardBrowser1ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Browsers/Standard/Chrome.ps1"
        $StandardBrowser2ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Browsers/Standard/Firefox.ps1"
        $VDIBrowser1ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Browsers/VDI/Chrome.ps1"

        # Individual Winget INSTALL Scripts - Cloud Backups

        $AdvancedCloudBackup1ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Cloud%20Backup/Advanced/DropBox.ps1"
        $AdvancedCloudBackup2ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Cloud%20Backup/Advanced/GDrive.ps1"
        $AdvancedCloudBackup3ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Cloud%20Backup/Advanced/NextCloudClient.ps1"
        $AdvancedCloudBackup4ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Cloud%20Backup/Advanced/OneDrive.ps1"
        $AdvancedCloudBackup5ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Cloud%20Backup/Advanced/UPBR.ps1"
        $AdvancedCloudBackup6ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Cloud%20Backup/Advanced/iCloud.ps1"

        $CorporateCloudBackup1ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Cloud%20Backup/Corporate/DropBox.ps1"
        $CorporateCloudBackup2ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Cloud%20Backup/Corporate/GDrive.ps1"
        $CorporateCloudBackup3ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Cloud%20Backup/Corporate/OneDrive.ps1"
        $CorporateCloudBackup4ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Cloud%20Backup/Corporate/UPBR.ps1"

        $ITTechCloudBackup1ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Cloud%20Backup/IT%20Tech/DropBox.ps1"
        $ITTechCloudBackup2ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Cloud%20Backup/IT%20Tech/GDrive.ps1"
        $ITTechCloudBackup3ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Cloud%20Backup/IT%20Tech/NextCloudClient.ps1"
        $ITTechCloudBackup4ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Cloud%20Backup/IT%20Tech/OneDrive.ps1"
        $ITTechCloudBackup5ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Cloud%20Backup/IT%20Tech/UPBR.ps1"
        $ITTechCloudBackup6ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Cloud%20Backup/IT%20Tech/iCloud.ps1"

        $ManagementPCCloudBackup1ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Cloud%20Backup/Management%20PC/UPBR.ps1"

        $StandardCloudBackup1ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Cloud%20Backup/Standard/DropBox.ps1"
        $StandardCloudBackup2ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Cloud%20Backup/Standard/GDrive.ps1"
        $StandardCloudBackup3ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Cloud%20Backup/Standard/OneDrive.ps1"
        $StandardCloudBackup4ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Cloud%20Backup/Standard/UPBR.ps1"
        $StandardCloudBackup5ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Cloud%20Backup/Standard/iCloud.ps1"
        
        # Individual Winget INSTALL Scripts - File Transfer Software

        $AdvancedFileTransfer1ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/File%20Transfer/Advanced/FileZilla.ps1"
        $AdvancedFileTransfer2ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/File%20Transfer/Advanced/PuTTY.ps1"
        $AdvancedFileTransfer3ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/File%20Transfer/Advanced/WinSCP.ps1"

        $ITTechFileTransfer1ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/File%20Transfer/IT%20Tech%20/FileZilla.ps1"
        $ITTechFileTransfer2ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/File%20Transfer/IT%20Tech%20/PuTTY.ps1"
        $ITTechFileTransfer3ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/File%20Transfer/IT%20Tech%20/WinSCP.ps1"

        $ManagementPCFileTransfer1ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/File%20Transfer/Management%20PC/FileZilla.ps1"
        $ManagementPCFileTransfer2ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/File%20Transfer/Management%20PC/PuTTY.ps1"
        $ManagementPCFileTransfer3ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/File%20Transfer/Management%20PC/WinSCP.ps1"

        $StandardFileTransfer1ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/File%20Transfer/Standard/FileZilla.ps1"

        # Individual Winget INSTALL Scripts - Gaming Software

        $AdvancedGamingScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Gaming/Advanced/Steam.ps1"

        $StandardGamingScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Gaming/Standard/Steam.ps1"

        # Individual Winget INSTALL Scripts - Media Software

        $AdvancedMedia1ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Media/Advanced/Audacity.ps1"
        $AdvancedMedia2ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Media/Advanced/FFMPEG.ps1"
        $AdvancedMedia3ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Media/Advanced/GIMP.ps1"
        $AdvancedMedia4ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Media/Advanced/HDVideoConverterPro.ps1"
        $AdvancedMedia5ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Media/Advanced/Handbrake.ps1"
        $AdvancedMedia6ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Media/Advanced/Kodi.ps1"
        $AdvancedMedia7ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Media/Advanced/MKVToolNix.ps1"
        $AdvancedMedia8ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Media/Advanced/MakeMKV.ps1"
        $AdvancedMedia9ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Media/Advanced/MediaInfo.ps1"
        $AdvancedMedia10ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Media/Advanced/MyHarmony.ps1"
        $AdvancedMedia11ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Media/Advanced/PowerISO.ps1"
        $AdvancedMedia12ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Media/Advanced/VLCMediaPlayer.ps1"
        $AdvancedMedia13ScriptURL = "hhttps://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Media/Advanced/iTunes.ps1"

        $CorporateMedia1ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Media/Corporate/MediaInfo.ps1"
        $CorporateMedia2ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Media/Corporate/VLCPlayer.ps1"

        $HoneypotMedia1ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Media/Honetypot/MediaInfo.ps1"
        $HoneypotMedia2ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Media/Honetypot/VLCPlayer.ps1"

        $ITTechMedia1ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Media/IT%20Tech/MediaInfo.ps1"
        $ITTechMedia2ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Media/IT%20Tech/VLCPlayer.ps1"

        $StandardMedia1ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Media/Standard/Kodi.ps1"
        $StandardMedia2ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Media/Standard/MediaInfo.ps1"
        $StandardMedia3ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Media/Standard/VLCPlayer.ps1"
        $StandardMedia4ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Media/Standard/iTunes.ps1"

        $VDIMedia1ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Media/VDI/MediaInfo.ps1"
        $VDIMedia2ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Media/VDI/VLCPlayer.ps1"
        
        
        # Individual Winget INSTALL Scripts - Productivity Software
        
        Write-Verbose "Downloading and Saving WinGet INSTALL scripts..." -Verbose
        Write-Verbose "Downloading and Saving WinGet UNINSTALL scripts..." -Verbose
        Write-Verbose "Downloading and Saving WinGet UPDATE scripts..." -Verbose
       
        }
  '13' { cls
        $AdminBackupLog = "C:\OSD Cloud\Logs\Script Backups\Administrative.log"
        Start-Transcript $AdminBackupLog
        Get-Date
        Write-Host 
        Write-Host  "Processing 1 of 12: Administrative installation scripts from OSDCloudCline\Scripts\Administrative repo..." -ForegroundColor Cyan
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
        Write-Host "Administrative scripts backup successful..." -ForegroundColor Green
        Stop-Transcript

        $OSIntegrationLog = "C:\OSD Cloud\Logs\Script Backups\OSIntegration.log"
        Start-Transcript $OSIntegrationLog
        Write-Host 
        Write-Host  "Processing 2 of 12: OS Integration scripts from OSDCloudCline\Scripts\OS Integration repo..." -ForegroundColor Cyan
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
        Write-Host "OS Integration scripts backup successful..." -ForegroundColor Green
        Stop-Transcript
        
        $AuditModeLog = "C:\OSD Cloud\Logs\Script Backups\AuditMode.log"
        Start-Transcript $AuditModeLog
        Write-Host 
        Write-Host  "Processing 3 of 12: Audit Mode scripts from OSDCloudCline\Scripts\Audit Mode repo..." -ForegroundColor Cyan
        Write-Host 
        Write-Verbose "Downloading Audit Mode PowerShell Scripts from OSDCloudCline GitHub Repo..." -Verbose
        $ConfigureScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/AuditMode/Configure.ps1"
        $MainMenuScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/AuditMode/MainMenu.ps1"
        $AuditModeDestination = "C:\scripts\backup\GitHubRepo\Audit Mode"
        Save-WebFile -SourceUrl $ConfigureScriptURL -DestinationDirectory $AuditModeDestination
        Save-WebFile -SourceUrl $MainMenuScriptURL -DestinationDirectory $AuditModeDestination
        Write-Host
        Write-Host "Audit Mode scripts backup successful..." -ForegroundColor Green
        Stop-Transcript

        $ManagementPCBackupLog = "C:\OSD Cloud\Logs\Script Backups\ManagementPC.log"
        Start-Transcript $ManagementPCBackupLog
        Get-Date
        Write-Host 
        Write-Host  "Processing 4 of 12: Management PC scripts from OSDCloudCline\Scripts\Management PC repo..." -ForegroundColor Cyan
        Write-Host  
        Write-Verbose "Downloading Management PC PowerShell Scripts from OSDCloudCline GitHub Repo..." -Verbose
        $ManagementPCScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/Management%20PC/ManagementPC-OSDCloudInitialConfiguration.ps1"
        $ManagementPCDestination = "C:\scripts\backup\GitHubRepo\Management PC"
        Save-WebFile -SourceUrl $ManagementPCScriptURL -DestinationDirectory $ManagementPCBackupDestination
        Write-Host
        Write-Host "Management PC script backup successful..." -ForegroundColor Green
        Stop-Transcript

        $ClientOSBackupLog = "C:\OSD Cloud\Logs\Script Backups\ClientOS.log"
        Start-Transcript $ClientOSBackupLog
        Get-Date
        Write-Host 
        Write-Host  "Processing 5 of 12: Client OS Download scripts from OSDCloudCline\Scripts\OS Downloads repo..." -ForegroundColor Cyan 
        Write-Host  
        Write-Verbose "Downloading Client OS PowerShell Scripts and ZIP Files from OSDCloudCline GitHub Repo..." -Verbose
        Write-Host 
        # Win 10 22H2 region
        $Win1022H2ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%2010/22H2/22H2.ps1"
        $Win1022H2ZIPURL = "https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%2010/22H2/19045.4472_amd64_en-us_multi_39143328_convert_virtual.zip"
        $Win1022H2Destination = "C:\scripts\backup\GitHubRepo\OS\Client\Windows 10\22H2"
        
        # Win 11 21H2 region 
        $Win1121H2ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%2011/21H2/21H2.PS1"
        $Win1121H2ZIPURL = "https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%2011/21H2/22000.2960_amd64_en-us_multi_1843eef2_convert_virtual.zip"
        $Win1121H2Destination = "C:\scripts\backup\GitHubRepo\OS\Client\Windows 11\21H2"

        # Win 11 22H2 region 
        $Win1122H2ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%2011/22H2/22H2.ps1"
        $Win1122H2ZIPURL = "https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%2011/22H2/22621.3668_amd64_en-us_multi_354f5027_convert_virtual.zip"
        $Win1122H2Destination = "C:\scripts\backup\GitHubRepo\OS\Client\Windows 11\22H2"

        # Win 11 23H2 region 
        $Win1123H2ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%2011/23H2/23H2.ps1"
        $Win1123H2ZIPURL = "https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%2011/23H2/22631.3668_amd64_en-us_multi_593f698d_convert_virtual.zip"
        $Win1123H2Destination = "C:\scripts\backup\GitHubRepo\OS\Client\Windows 11\23H2"

        # Win 11 24H2 region 
        $Win1124H2ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%2011/24H2/24H2.ps1"
        $Win1124H2ZIPURL = "https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%2011/24H2/26100.712_amd64_en-us_multi_0c393b5f_convert_virtual.zip"
        $Win1124H2Destination = "C:\scripts\backup\GitHubRepo\OS\Client\Windows 11\24H2"

        # Win 11 25H2 region 
        $Win1125H2ScriptURL = ""
        $Win1125H2ZIPURL = ""
        $Win1125H2Destination = "C:\scripts\backup\GitHubRepo\OS\Client\Windows 11\25H2"

        # Win 11 ALL region 
        $Win11ALLScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%2011/ALLWin11.ps1"
        $Win11ALLNetworkScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%2011/ALLWin11-Network.ps1"
        $Win11ALLDestination = "C:\scripts\backup\GitHubRepo\OS\Client\Windows 11"
        
        # Win 12 region
        $Win12RTMScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%2012/RTM/RTM.ps1"
        $Win12RTMZIPURL = ""
        $Win12RTMDestination = "C:\scripts\backup\GitHubRepo\OS\Client\Windows 12\RTM"

        # Win 13 region
        $Win13RTMScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%2013/RTM/RTM.ps1"
        $Win13RTMZIPURL = ""
        $Win13RTMDestination = "C:\scripts\backup\GitHubRepo\OS\Client\Windows 13\RTM"

        # Win 14 region
        $Win14RTMScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%2014/RTM/RTM.ps1"
        $Win14RTMZIPURL = ""
        $Win14RTMDestination = "C:\scripts\backup\GitHubRepo\OS\Client\Windows 14\RTM"
        
        # Win 15 region
        $Win15RTMScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%2015/RTM/RTM.ps1"
        $Win15RTMZIPURL = ""
        $Win15RTMDestination = "C:\scripts\backup\GitHubRepo\OS\Client\Windows 15\RTM"
        
        # Win 16 region
        $Win16RTMScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%2016/RTM/RTM.ps1"
        $Win16RTMZIPURL = ""
        $Win16RTMDestination = "C:\scripts\backup\GitHubRepo\OS\Client\Windows 16\RTM"

        # OS Script region
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
        Write-Host  "Processing 5 of 12: Server OS Download scripts from OSDCloudCline\Scripts\OS Downloads repo..." -ForegroundColor Cyan 
        Write-Host 
        Write-Verbose "Downloading Server OS PowerShell Scripts and ZIP Files from OSDCloudCline GitHub Repo..." -Verbose
        Write-Host 

        # Windows Server 2022 region
        $WinServer2022ScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%20Server/2022/2022.ps1"
        $WinServer2022ZIPURL = "https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%20Server/2022/20348.2461_amd64_en-us_multi_b9f1ddc0_convert.zip"
        $WinServer2022Destination = "C:\scripts\backup\GitHubRepo\OS\Server\Windows Server\2022"

        # Windows Server 2025 region
        $WinServer2025ScriptURL = ""
        $WinServer2025ZIPURL = ""
        $WinServer2025Destination = "C:\scripts\backup\GitHubRepo\OS\Server\Windows Server\2025"

        # Windows Server 2028 region
        $WinServer2028ScriptURL = ""
        $WinServer2028ZIPURL = ""
        $WinServer2028Destination = "C:\scripts\backup\GitHubRepo\OS\Server\Windows Server\2028"

        # Windows Server 2031 region
        $WinServer2031ScriptURL = ""
        $WinServer2031ZIPURL = ""
        $WinServer2031Destination = "C:\scripts\backup\GitHubRepo\OS\Server\Windows Server\2031"

        # Windows Server 2034 region
        $WinServer2034ScriptURL = ""
        $WinServer2034ZIPURL = ""
        $WinServer2034Destination = "C:\scripts\backup\GitHubRepo\OS\Server\Windows Server\2034"

        # Windows Server ALL region
        $WinServerALLScriptURL = ""
        $WinServerDestination = "C:\scripts\backup\GitHubRepo\OS\Server\Windows Server"

        Write-Verbose "Downloading and Saving Windows Server 2022 Files..." -Verbose
        Save-WebFile -SourceUrl $WinServer2022ScriptURL -DestinationDirectory $WinServer2022Destination
        Save-WebFile -SourceUrl $WinServer2022ZIPURL -DestinationDirectory $WinServer2022Destination
        Write-Host
        Write-Host "Windows Server 2022 ZIP File and script backup is successful..." -ForegroundColor Green
        Write-Host 

        Write-Verbose "Downloading and Saving Windows Server 2025 Files..." -Verbose
        Save-WebFile -SourceUrl $WinServer2025ScriptURL -DestinationDirectory $WinServer2025Destination
        Save-WebFile -SourceUrl $WinServer2025ZIPURL -DestinationDirectory $WinServer2025Destination
        Write-Host
        Write-Host "Windows Server 2025 ZIP File and script backup is successful..." -ForegroundColor Green
        Write-Host 

        Write-Verbose "Downloading and Saving Windows Server 2028 Files..." -Verbose
        Save-WebFile -SourceUrl $WinServer2028ScriptURL -DestinationDirectory $WinServer2028Destination
        Save-WebFile -SourceUrl $WinServer2028ZIPURL -DestinationDirectory $WinServer2028Destination
        Write-Host
        Write-Host "Windows Server 2028 ZIP File and script backup is successful..." -ForegroundColor Green
        Write-Host 

        Write-Verbose "Downloading and Saving Windows Server 2031 Files..." -Verbose
        Save-WebFile -SourceUrl $WinServer2031ScriptURL -DestinationDirectory $WinServer2031Destination
        Save-WebFile -SourceUrl $WinServer2031ZIPURL -DestinationDirectory $WinServer2031Destination
        Write-Host
        Write-Host "Windows Server 2031 ZIP File and script backup is successful..." -ForegroundColor Green
        Write-Host 

        Write-Verbose "Downloading and Saving Windows Server 2034 Files..." -Verbose
        Save-WebFile -SourceUrl $WinServer2034ScriptURL -DestinationDirectory $WinServer2034Destination
        Save-WebFile -SourceUrl $WinServer2034ZIPURL -DestinationDirectory $WinServer2034Destination
        Write-Host
        Write-Host "Windows Server 2034 ZIP File and script backup is successful..." -ForegroundColor Green
        Write-Host 

        Write-Verbose "Downloading and Saving Windows Server Master Script..." -Verbose
        Save-WebFile -SourceUrl $WinServerALLScriptURL -DestinationDirectory $WinServerDestination
        Write-Host
        Write-Host "Windows Server Master script backup is successful..." -ForegroundColor Green
        Write-Host
        Write-Host "Client and Server OS Download script backup is successful..." -ForegroundColor Green
        
        Stop-Transcript

        # NUMBER 6 GOES HERE

        $OSDBuilderBackupLog = "C:\OSD Cloud\Logs\Script Backups\OSDBuilder.log"
        Start-Transcript $OSDBuilderBackupLog
        Get-Date
        Write-Host 
        Write-Host  "Processing 7 of 12: OSD Builder related scripts from OSDCloudCline\Scripts\OS Builder repo..." -ForegroundColor Cyan 
        Write-Host 
        $OSDBuilderScriptRepoMainURL = "https://github.com/osdcloudcline/Scripts/raw/main/OSDBuilder/OSDBuilderMain.ps1"
        $OSDBuilderScriptsDestination = "C:\scripts\backup\GitHubRepo\OSD Builder\Scripts Repo"
        Save-WebFile -SourceUrl $OSDBuilderScriptRepoMainURL -DestinationDirectory $OSDBuilderScriptsDestination
        Write-Host 
        Write-Host  "Processing 7 of 12: Downloading and Saving OSD Builder Client OS-related scripts from OSDCloudCline\Scripts\OSDBuilder repo..." -ForegroundColor Cyan
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
        Write-Host  "Processing 7 of 12: Downloading and Saving OSD Builder Server OS-related scripts from OSDCloudCline\Scripts\OSDBuilder repo..." -ForegroundColor Cyan
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
        Write-Host "OSD Builder Script Backup is Successful..." -ForegroundColor Green
        Stop-Transcript

        $PSModulesBackupLog = "C:\OSD Cloud\Logs\Script Backups\PSModules.log"
        Start-Transcript $PSModulesBackupLog
        Get-Date
        Write-Host  
        Write-Host  "Processing 8 of 12: PowerShell Module installation scripts from OSDCloudCline\Scripts\PS Modules repo..." -ForegroundColor Cyan
        Write-Host
        $PS5ModulesScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/PS%20Modules%20/Install.ps1"
        $PS7ModulesScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/PS%20Modules%20/InstallPS7.ps1"
        $PSModulesScriptsDestination = "C:\scripts\backup\GitHubRepo\PS Modules"
        Write-Host
        Write-Verbose "Downloading and Saving PowerShell 5.1 and 7.x Module scripts..." -Verbose
        Save-WebFile -SourceUrl $PS5ModulesScriptURL -DestinationDirectory $PSModuleScriptsDestination
        Save-WebFile -SourceUrl $PS7ModulesScriptURL -DestinationDirectory $PSModuleScriptsDestination
        Write-Host
        Write-Host "PowerShell Module Script Backup is Successful..." -ForegroundColor Green
        Write-Host

        Stop-Transcript

        $RegistryBackupLog = "C:\OSD Cloud\Logs\Script Backups\Registry.log"
        Start-Transcript $PSModulesBackupLog
        Get-Date
        Write-Host 
        Write-Host  "Processing 9 of 12: Registry Files and installation scripts from OSDCloudCline\Scripts\REG Files repo..." -ForegroundColor Cyan
        Write-Host
        $3DMarkREGURL = "https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Software/UL%20Inc./3DMark.reg"
        $AdobeREG1URL = "https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Software/Adobe/Acrobat1.reg"
        $AdobeREG2URL = "https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Software/Adobe/Acrobat2.reg"
        $AdobeREG3URL = "https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Software/Adobe/AdobeCC.reg"
        $AdobeREG4URL = "https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Software/Adobe/AdobeCC2.reg"
        $AdobeREG5URL = "https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Software/Adobe/AdobeCC3.reg"
        $BitLockerREGURL = "https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Client%20Operating%20System/DisableBitLockerDeviceEncryption.reg"
        $PCMark10REGURL = "https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Software/UL%20Inc./PCMark10.reg"
        $SYSTEMDesktopREGURL = "https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Client%20Operating%20System/SYSTEMDesktopIcons.reg"
        $ShowHiddenFilesREGURL = "https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Client%20Operating%20System/ShowHiddenFilesFolders.reg"
        $Win10OSModificationsREGURL = "https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Client%20Operating%20System/Windows10-OSModifications.reg"
        $Win11OSModificationsREGURL = "https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Client%20Operating%20System/Windows11-OSModifications.reg"
        $REGFilesZIPURL = ""
        $REGFilesClientScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/ClientRegistry.ps1"
        $REGFilesServerScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/ServerRegistry.ps1"
        $REGFilesScriptsDestination = "C:\scripts\backup\GitHubRepo\Registry Files"
        Write-Host
        Write-Verbose "Downloading and Saving Registry Files..." -Verbose
        Save-WebFile -SourceUrl $3DMarkREGURL -DestinationDirectory $REGFilesScriptsDestination
        Save-WebFile -SourceUrl $AdobeREG1URL  -DestinationDirectory $REGFilesScriptsDestination
        Save-WebFile -SourceUrl $AdobeREG2URL  -DestinationDirectory $REGFilesScriptsDestination
        Save-WebFile -SourceUrl $AdobeREG3URL  -DestinationDirectory $REGFilesScriptsDestination
        Save-WebFile -SourceUrl $AdobeREG4URL  -DestinationDirectory $REGFilesScriptsDestination
        Save-WebFile -SourceUrl $AdobeREG5URL  -DestinationDirectory $REGFilesScriptsDestination
        Save-WebFile -SourceUrl $BitLockerREGURL -DestinationDirectory $REGFilesScriptsDestination
        Save-WebFile -SourceUrl $PCMark10REGURL -DestinationDirectory $REGFilesScriptsDestination
        Save-WebFile -SourceUrl $SYSTEMDesktopREGURL -DestinationDirectory $REGFilesScriptsDestination
        Save-WebFile -SourceUrl $ShowHiddenFilesREGURL -DestinationDirectory $REGFilesScriptsDestination
        Save-WebFile -SourceUrl $Win10OSModificationsREGURL -DestinationDirectory $REGFilesScriptsDestination
        Save-WebFile -SourceUrl $Win11OSModificationsREGURL -DestinationDirectory $REGFilesScriptsDestination
        Write-Host
        Write-Verbose "Downloading and Saving Registry ZIP File..." -Verbose
        Save-WebFile -SourceUrl $REGFilesZIPURL -DestinationDirectory $REGFilesScriptsDestination
        Write-Host 
        Write-Verbose "Downloading and Saving Registry Script File..." -Verbose
        Save-WebFile -SourceUrl $REGFilesClientScriptURL -DestinationDirectory $REGFilesScriptsDestination
        Save-WebFile -SourceUrl $REGFilesServerScriptURL -DestinationDirectory $REGFilesScriptsDestination
        Write-Host
        Write-Host
        Write-Host
        Write-Host "Registry Files and Script Backup is Successful..." -ForegroundColor Green
        Write-Host

        Stop-Transcript
        }
  '14' { cls
        
        exit
        }
  
    }
    }
    until ($selection -eq '14'){}
    }

Show-MainMenu
