$AcrobatReaderDC = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Productivity/Advanced/GUI%20Scripts/AdobeReaderDC.ps1")
Invoke-Expression $($AcrobatReaderDC.Content)

$MSO365 = = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Productivity/Advanced/GUI%20Scripts/MSO365.ps1")
Invoke-Expression $($MSO365.Content)

$MSO365E = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Productivity/Advanced/Office365AppsEnterprise.ps1")
Invoke-Expression $($MSO365E.Content)

$Office2021 = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Productivity/Advanced/Office2021.ps1")
Invoke-Expression $($Office2021.Content)

$Office2024 = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Productivity/Advanced/Office2024.ps1")
Invoke-Expression $($Office2024.Content)


