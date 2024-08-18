$CORPprocesses = @(
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
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/GUI/Corporate/Browsers.ps1"
  },
  @{
  Name = "Processing: Cloud Backup Software" 
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/GUI/Corporate/CloudBackups.ps1"
  },
  @{
  Name = "Processing: Media Software"
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/GUI/Corporate/Media.ps1"
  },
  @{
  Name = "Processing: Productivity Software"
  Script = ""
  },
  @{
  Name = "Processing: Programming Software"
  Script = ""
  },
  @{
  Name = "Processing: Remote Connection Software"
  Script = ""
  },
  @{
  Name = "Processing: Utilities Software"
  Script = ""
  },
  @{
  Name = "Processing: Security Software"
  Script = ""
  },
  @{
  Name = "Processing: Updating Windows"
  Script = ""
  }
  )

  Start-SplashScreen -Processes $CORPprocesses -MessageHeading "Windows OOBE System Corporate Configuration"
