$Security = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Security/Advanced/AdvancedSecurity.ps1")
Invoke-Expression $($Security.Content)
