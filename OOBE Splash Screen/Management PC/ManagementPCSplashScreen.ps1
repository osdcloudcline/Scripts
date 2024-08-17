$MPCprocesses = @(
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
  Name = "Management PC Client Software Installation Package"
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Custom%20Configurations/Management%20PC/ManagementPC.ps1"
  },
  @{
  Name = " Updating Windows"
  Script = ""
  }
  )

  Start-SplashScreen -Processes $MPCprocesses -MessageHeading "Windows OOBE System Management PC Configuration"
