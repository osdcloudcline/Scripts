##########################################################
# Main Menu
##########################################################
Function Show-MainMenu{
    [CmdletBinding()]
    param(
    [string]$Title = 'OSD Cloud -  OS Download Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)
cls



       $os = Get-CimInstance -ClassName Win32_OperatingSystem
       $PCName = "$env:computername"
       $OSVerison = $($os.Version)
       $UBR = (Get-ItemProperty 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion' -Name UBR).UBR
       $FullOS = $($os.Caption)
       $OSBuild = $($os.Version) + "." + $UBR
       $DisplayVersion = (Get-ItemProperty 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion' -Name DisplayVersion).DisplayVersion
       $EditionID = (Get-ItemProperty 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion' -Name EditionID).EditionID
       $CompleteOSInfo = "$FullOS" + " $OSBuild" + " $DisplayVersion"
       $EdgeEXE = Get-ItemPropertyValue 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\msedge.exe' "(default)"
       $EdgeBrowser = (Get-Item $EdgeEXE).VersionInfo.ProductVersion
       Write-Host
       Write-Host         "Running Computer Info:" -ForegroundColor Green 
       Write-Verbose "System Hostname: $PCName" -Verbose
       Write-Verbose "Running Operating System: $CompleteOSInfo" -Verbose  
       Write-Verbose "Operating System: $FullOS" -Verbose 
       Write-Verbose "Build Number: $OSBuild" -Verbose 
       Write-Verbose "Display Version: $DisplayVersion" -Verbose
       Write-Verbose "OS Edition: $EditionID" -Verbose 
       Write-Verbose "MS Edge Chromium Version: $EdgeBrowser" -Verbose 
pause
Clear-Host
Write-Host "======= $Title ======"
Write-Host " 1. Download and Create Windows Client Operating System ISO"
Write-Host " 2. Download and Create Windows Server Operating System ISO"
Write-Host " 3. Exit PowerShell"

do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
       Show-ClientMainMenu
        }
  '2' { cls
        Show-ServerMainMenu
        }
  '3' { cls
       exit
        }

  
    }
    }
    until ($selection -eq '3'){}
    }



Function Show-ClientMainMenu{
    [CmdletBinding()]
    param(
    [string]$Title = 'OSD Cloud -  OS Client Download Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)

Clear-Host
Write-Host "======= $Title ======"
Write-Host " 1. Download and Create Windows 10 22H2 ISO"
Write-Host " 2. Download and Create Windows 11 ISO"
Write-Host " 3. Download and Create Windows 12 ISO"
Write-Host " 4. Download and Create Windows 13 ISO"
Write-Host " 5. Download and Create Windows 14 ISO"
Write-Host " 6. Download and Create Windows 15 ISO"
Write-Host " 7. Download and Create Windows 16 ISO"
Write-Host " 8. Download and Create Insider Preview Build ISOs"
Write-Host " 9. Exit PowerShell"
do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
       $Win1022H2 = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%2010/22H2/22H2.ps1")
       Invoke-Expression $($Win1022H2.Content)
        }
  '2' { cls
        Show-Win11MainMenu
        }
  '3' { cls
       Show-Win12MainMenu
        }
  '4' { cls
        Show-Win13MainMenu
        }
  '5' { cls
       Show-Win14MainMenu
        }
  '6' { cls
        Show-Win15MainMenu
        }
  '7'{ cls
       Show-Win16MainMenu
  }
  '8'{cls
      Show-PreviewsMainMenu
      }
  '9' { exit
        }
  
    }
    }
    until ($selection -eq '9'){exit}
    }



##########################################################
# Main Menu
##########################################################
Function Show-Win11MainMenu{
    [CmdletBinding()]
    param(
    [string]$Title = 'OSD Cloud -  OS Windows 11 Download Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)

Clear-Host
Write-Host "======= $Title ======"
Write-Host " 1. Download and Create Windows 11 21H2 ISO"
Write-Host " 2. Download and Create Windows 11 22H2 ISO"
Write-Host " 3. Download and Create Windows 11 23H2 ISO"
Write-Host " 4. Download and Create Windows 11 24H2 ISO"
Write-Host " 5. Download and Create Windows 11 25H2 ISO"
Write-Host " 6. Local - Download and Create ALL Windows 11 ISO"
Write-Host " 7. Network - Download and Create ALL Windows 11 ISO"
Write-Host " 8. Exit PowerShell"
do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
       $Win1121H2 = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%2011/21H2/21H2.PS1")
       Invoke-Expression $($Win1121H2.Content)
        }
  '2' { cls
        $Win1122H2 = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%2011/22H2/22H2.ps1")
        Invoke-Expression $($Win1122H2.Content)
        }
  '3' { cls
        $Win1123H2 = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%2011/23H2/23H2.ps1")
        Invoke-Expression $($Win1123H2.Content)
        }
  '4' { cls
        $Win1124H2 = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%2011/24H2/24H2.ps1")
        Invoke-Expression $($Win1124H2.Content)
        }
  '5' { cls
        $Win1125H2 = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%2011/25H2/25H2.ps1")
        Invoke-Expression $($Win1125H2.Content)
        }
  '6' { cls
        $ALLWin11 = Invoke-WEbRequest("https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%2011/ALLWin11.ps1")
        Invoke-Expression $($ALLWin11.Content)
        }
  '7' { cls
        $NetworkALLWin11 = Invoke-WEbRequest("https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%2011/ALLWin11-Network.ps1")
        Invoke-Expression $($NetworkALLWin11.Content)
        }
  '8' { cls
        exit
    
        }
     }
    }
    until ($selection -eq '8'){exit}
    }


Function Show-Win12MainMenu{
    [CmdletBinding()]
    param(
    [string]$Title = 'OSD Cloud -  OS Windows 12 Download Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)

Clear-Host
Write-Host "======= $Title ======"
Write-Host " 1. Download and Create Windows 12 RTM ISO"
Write-Host " 2. Download and Create Windows 12 26H2 ISO"
Write-Host " 3. Download and Create Windows 12 27H2 ISO"
Write-Host " 4. Download and Create Windows 12 28H2 ISO"
Write-Host " 5. Download and Create Windows 12 29H2 ISO"
Write-Host " 6. Exit PowerShell"
do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
       $Win12RTM = Invoke-WebRequest("")
       Invoke-Expression $($Win12RTM.Content)
        }
  '2' { cls
        $Win1226H2 = Invoke-WebRequest ("")
        Invoke-Expression $($Win1226H2.Content)
        }
  '3' { cls
        $Win1227H2 = Invoke-WebRequest ("")
        Invoke-Expression $($Win1227H2.Content)
        }
  '4' { cls
        $Win1228H2 = Invoke-WebRequest ("")
        Invoke-Expression $($Win1228H2.Content)
        }
  '5' { cls
        $Win1229H2 = Invoke-WebRequest("")
        Invoke-Expression $($Win1229H2.Content)
        }
  '6' { cls
        exit
    
        }
     }
    }
    until ($selection -eq '6'){}
    }
  


Function Show-Win13MainMenu{
    [CmdletBinding()]
    param(
    [string]$Title = 'OSD Cloud -  OS Windows 13 Download Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)

Clear-Host
Write-Host "======= $Title ======"
Write-Host " 1. Download and Create Windows 13 RTM ISO"
Write-Host " 2. Download and Create Windows 13 31H2 ISO"
Write-Host " 3. Download and Create Windows 13 32H2 ISO"
Write-Host " 4. Download and Create Windows 13 33H2 ISO"
Write-Host " 5. Download and Create Windows 13 34H2 ISO"
Write-Host " 6. Exit PowerShell"
do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
       $Win13RTM = Invoke-WebRequest("")
       Invoke-Expression $($Win13RTM.Content)
        }
  '2' { cls
        $Win1331H2 = Invoke-WebRequest ("")
        Invoke-Expression $($Win1331H2.Content)
        }
  '3' { cls
        $Win1332H2 = Invoke-WebRequest ("")
        Invoke-Expression $($Win1332H2.Content)
        }
  '4' { cls
        $Win1333H2 = Invoke-WebRequest ("")
        Invoke-Expression $($Win1333H2.Content)
        }
  '5' { cls
        $Win1334H2 = Invoke-WebRequest("")
        Invoke-Expression $($Win1334H2.Content)
        }
  '6' { cls
        exit
    
        }
     }
    }
    until ($selection -eq '6'){}
    }


Function Show-Win14MainMenu{
    [CmdletBinding()]
    param(
    [string]$Title = 'OSD Cloud -  OS Windows 14 Download Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)

Clear-Host
Write-Host "======= $Title ======"
Write-Host " 1. Download and Create Windows 14 RTM ISO"
Write-Host " 2. Download and Create Windows 14 36H2 ISO"
Write-Host " 3. Download and Create Windows 14 37H2 ISO"
Write-Host " 4. Download and Create Windows 14 38H2 ISO"
Write-Host " 5. Download and Create Windows 14 39H2 ISO"
Write-Host " 6. Exit PowerShell"
do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
       $Win14RTM = Invoke-WebRequest("")
       Invoke-Expression $($Win14RTM.Content)
        }
  '2' { cls
        $Win1436H2 = Invoke-WebRequest ("")
        Invoke-Expression $($Win1436H2.Content)
        }
  '3' { cls
        $Win1437H2 = Invoke-WebRequest ("")
        Invoke-Expression $($Win1437H2.Content)
        }
  '4' { cls
        $Win1438H2 = Invoke-WebRequest ("")
        Invoke-Expression $($Win1438H2.Content)
        }
  '5' { cls
        $Win1439H2 = Invoke-WebRequest("")
        Invoke-Expression $($Win1439H2.Content)
        }
  '6' { cls
        exit
    
        }
     }
    }
    until ($selection -eq '6'){}
    }
 
Function Show-Win15MainMenu{
    [CmdletBinding()]
    param(
    [string]$Title = 'OSD Cloud -  OS Windows 15 Download Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)

Clear-Host
Write-Host "======= $Title ======"
Write-Host " 1. Download and Create Windows 15 RTM ISO"
Write-Host " 2. Download and Create Windows 15 41H2 ISO"
Write-Host " 3. Download and Create Windows 15 42H2 ISO"
Write-Host " 4. Download and Create Windows 15 43H2 ISO"
Write-Host " 5. Download and Create Windows 15 44H2 ISO"
Write-Host " 6. Exit PowerShell"
do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
       $Win15RTM = Invoke-WebRequest("")
       Invoke-Expression $($Win15RTM.Content)
        }
  '2' { cls
        $Win1541H2 = Invoke-WebRequest ("")
        Invoke-Expression $($Win1541H2.Content)
        }
  '3' { cls
        $Win1542H2 = Invoke-WebRequest ("")
        Invoke-Expression $($Win1542H2.Content)
        }
  '4' { cls
        $Win1543H2 = Invoke-WebRequest ("")
        Invoke-Expression $($Win1543H2.Content)
        }
  '5' { cls
        $Win1544H2 = Invoke-WebRequest("")
        Invoke-Expression $($Win1544H2.Content)
        }
  '6' { cls
        exit
    
        }
    }
    }
    until ($selection -eq '6'){}
    }


Function Show-Win16MainMenu{
    [CmdletBinding()]
    param(
    [string]$Title = 'OSD Cloud -  OS Windows 16 Download Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)

Clear-Host
Write-Host "======= $Title ======"
Write-Host " 1. Download and Create Windows 16 RTM ISO"
Write-Host " 2. Download and Create Windows 16 46H2 ISO"
Write-Host " 3. Download and Create Windows 16 47H2 ISO"
Write-Host " 4. Download and Create Windows 16 48H2 ISO"
Write-Host " 5. Download and Create Windows 16 49H2 ISO"
Write-Host " 6. Exit PowerShell"
do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
       $Win16RTM = Invoke-WebRequest("")
       Invoke-Expression $($Win16RTM.Content)
        }
  '2' { cls
        $Win1646H2 = Invoke-WebRequest ("")
        Invoke-Expression $($Win1646H2.Content)
        }
  '3' { cls
        $Win1647H2 = Invoke-WebRequest ("")
        Invoke-Expression $($Win1647H2.Content)
        }
  '4' { cls
        $Win1648H2 = Invoke-WebRequest ("")
        Invoke-Expression $($Win1648H2.Content)
        }
  '5' { cls
        $Win1649H2 = Invoke-WebRequest("")
        Invoke-Expression $($Win1649H2.Content)
        }
  '6' { cls
        exit
    
        }
    }
    }
    until ($selection -eq '6'){}
    }

Function Show-PreviewsMainMenu{
    [CmdletBinding()]
    param(
    [string]$Title = 'OSD Cloud -  OS Windows Insider Previews Download Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)

Clear-Host
Write-Host "======= $Title ======"
Write-Host " 1. Download and Create Windows Insider Preview Build 26236.5000 ISO"
Write-Host " 2. Download and Create Windows Insider Preview Build 27764.1000 vNext ISO"
Write-Host " 3. Download and Create Windows Insider Preview Build ISO"
Write-Host " 4. Download and Create Windows Insider Preview Build ISO"
Write-Host " 5. Download and Create Windows Insider Preview Build ISO"
Write-Host " 6. Return to OSD Downloads Main Menu"
Write-Host " 7. Return to OSD Main Menu"
Write-Host " 8. Exit PowerShell"
do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
       $WinIPBuild262365000 = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Insider%20Previews/Windows%2011/26236.5000/262365000.ps1")
       Invoke-Expression $($WinIPBuild262365000.Content)
        }
  '2' { cls
        $WinIPBuild277641000 = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OS%20Downloads/Insider%20Previews/Windows%2011/27764.1000/277641000.ps1")
        Invoke-Expression $($WinIPBuild277641000.Content)
        }
  '3' { cls
        
        }
  '4' { cls
        
        }
  '5' { cls
        
        }
  '6' { cls
        Show-MainMenu
        }
  '7' { cls
        $OSDMain = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/OSDMain.ps1")
        Invoke-Expression $($OSDMain.Content)
        }
  '8' { cls
        exit
    
        }
     }
    }
    until ($selection -eq '8'){exit}
    }
    
Function Show-ServerMainMenu{
    [CmdletBinding()]
    param(
    [string]$Title = 'OSD Cloud -  OS Windows Server Download Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)

Clear-Host
Write-Host "======= $Title ======"
Write-Host " 1. Download and Create Windows Server 2022 ISO"
Write-Host " 2. Download and Create Windows Server 2025 ISO"
Write-Host " 3. Download and Create Windows Server 2028 ISO"
Write-Host " 4. Download and Create Windows Server 2031 ISO"
Write-Host " 5. Download and Create Windows Server 2034 ISO"
Write-Host " 6. Local - Download and Create ALL Windows Server ISO"
Write-Host " 7. Network - Download and Create ALL Windows Server ISO"
Write-Host " 8. Exit PowerShell"
do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
       $WinServer2022 = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%20Server/2022/2022.ps1")
       Invoke-Expression $($WinServer2022.Content)
        }
  '2' { cls
        $WinServer2025 = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%20Server/2025/2025.ps1")
        Invoke-Expression $($WinServer2025.Content)
        }
  '3' { cls
        $WinServer2028 = Invoke-WebRequest ("")
        Invoke-Expression $($WinServer2028.Content)
        }
  '4' { cls
        $WinServer2031 = Invoke-WebRequest ("")
        Invoke-Expression $($WinServer2031.Content)
        }
  '5' { cls
        $WinServer2034 = Invoke-WebRequest("")
        Invoke-Expression $($WinServer2034.Content)
        }
  '6' { cls
        $ALLWinServer = Invoke-WEbRequest("")
        Invoke-Expression $($ALLWinServer.Content)
        }
  '7' { cls
        $NetworkALLWinServer = Invoke-WEbRequest("")
        Invoke-Expression $($NetworkALLWinServer.Content)
        }
  '8' { cls
        exit
    
        }
     }
    }
    until ($selection -eq '8'){exit}
    }
Show-MainMenu
