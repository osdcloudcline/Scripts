$ADVprocesses = @(
  @{
    Name = "Microsoft Windows PowerShell Providers"
    Script = "https://github.com/osdcloudcline/Scripts/raw/main/PowerShell%20Modules/Package%20Providers/Install.ps1"
    },
  @{
    Name = "Microsoft Windows PowerShell 5.1 Modules"
    Script = "https://github.com/osdcloudcline/Scripts/raw/main/PowerShell%20Modules/Version%205.1/Install.ps1"
    },
  @{
   Name = "Microsoft Windows PowerShell 7.1 Modules"
   Script = "https://github.com/osdcloudcline/Scripts/raw/main/PowerShell%20Modules/Version%207.x/Install.ps1"
   },
  @{
  Name = "Client Operating System Registry Entries"
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/ClientRegistry.ps1"
  },
  @{
  Name = "Windows Client - Remote System Administration Tools"
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/PostInstall/Client%20OS%20Roles%20/InstallClientRSAT.ps1"
  },
  @{
  Name = "Mandatory Operating System related SYSTEM Software"
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/SYSTEM/OS-Mandated%20Software/SYSTEM.ps1"
  },
  @{
  Name = "Advanced Client Software Installation Package - Web Browsers"
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/GUI/Advanced/Browsers.ps1"
  },
  @{
  Name = "Advanced Client Software Installation Package - Cloud Backup"
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/GUI/Advanced/CloudBackups.ps1"
  },
  @{
  Name = "Advanced Client Software Installation Package - File Transfer"
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/GUI/Advanced/FileTransfer.ps1"
  },
  @{
  Name = "Advanced Client Software Installation Package - Gaming"
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/GUI/Advanced/Gaming.ps1"
  },
  @{
  Name = "Advanced Client Software Installation Package - Media"
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/GUI/Advanced/Media.ps1"
  },
  @{
  Name = "Advanced Client Software Installation Package - Productivity"
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/GUI/Advanced/Productivity.ps1"
  },
  @{
  Name = "Advanced Client Software Installation Package - Programming"
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/GUI/Advanced/Programming.ps1"
  },
  @{
  Name = "Advanced Client Software Installation Package - Remote Connections"
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/GUI/Advanced/RemoteConnections.ps1"
  },
  @{
  Name = "Advanced Client Software Installation Package - Utilities"
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/GUI/Advanced/Utilities.ps1"
  },
  @{
  Name = "Advanced Client Software Installation Package - Security"
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/GUI/Advanced/Security.ps1"
  },
  
  @{
  Name = "Updating Windows"
  Script = ""
  }
  )

  Start-SplashScreen -Processes $ADVprocesses -MessageHeader "Windows OOBE System Advanced Configuration"
 
  
