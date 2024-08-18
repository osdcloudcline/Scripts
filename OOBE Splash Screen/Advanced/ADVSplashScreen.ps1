$ADVprocesses = @(
  @{
    Name = "Processing: Microsoft Windows PowerShell Providers"
    Script = "https://github.com/osdcloudcline/Scripts/raw/main/PowerShell%20Modules/Package%20Providers/Install.ps1"
    },
  @{
    Name = "Processing: Microsoft Windows PowerShell 5.1 Modules"
    Script = "https://github.com/osdcloudcline/Scripts/raw/main/PowerShell%20Modules/Version%205.1/Install.ps1"
    },
  @{
   Name = "Processing: Microsoft Windows PowerShell 7.1 Modules"
   Script = "https://github.com/osdcloudcline/Scripts/raw/main/PowerShell%20Modules/Version%207.x/Install.ps1"
   },
  @{
  Name = "Processing: Client Operating System Registry Entries"
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/ClientRegistry.ps1"
  },
  @{
  Name = "Processing: Windows Client - Remote System Administration Tools"
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/PostInstall/Client%20OS%20Roles%20/InstallClientRSAT.ps1"
  },
  @{
  Name = "Processing: Mandatory Operating System-related SYSTEM Software"
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/SYSTEM/OS-Mandated%20Software/SYSTEM.ps1"
  },
  @{
  Name = "Processing: Web Browser Software"
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/GUI/Advanced/Browsers.ps1"
  },
  @{
  Name = "Processing: Cloud Backup Software" 
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/GUI/Advanced/CloudBackups.ps1"
  },
  @{
  Name = "Processing: File Transfer Software"
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/GUI/Advanced/FileTransfer.ps1"
  },
  @{
  Name = "Processing: Gaming Software"
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/GUI/Advanced/Gaming.ps1"
  },
  @{
  Name = "Processing: Media Software"
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/GUI/Advanced/Media.ps1"
  },
  @{
  Name = "Processing: Productivity Software"
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/GUI/Advanced/Productivity.ps1"
  },
  @{
  Name = "Processing: Downloading Microsoft Office 2021 GitHub Files"
  Script = ""
  },
  @{
  Name = "Processing: Downloading Microsoft Office 2021 LTSC"
  Script = ""
  },
  @{
  Name = "Processing: Microsoft Office 2021 LTSC"
  Script = ""
  },
  @{
  Name = "Processing: Programming Software"
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/GUI/Advanced/Programming.ps1"
  },
  @{
  Name = "Processing: Remote Connection Software"
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/GUI/Advanced/RemoteConnections.ps1"
  },
  @{
  Name = "Processing: Utilities Software"
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/GUI/Advanced/Utilities.ps1"
  },
  @{
  Name = "Processing: Security Software"
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/GUI/Advanced/Security.ps1"
  },
  @{
  Name = "Processing: Updating Windows"
  Script = ""
  }
  )

  Start-SplashScreen -Processes $ADVprocesses -MessageHeader "Windows OOBE System Advanced Client Configuration"
 
  
