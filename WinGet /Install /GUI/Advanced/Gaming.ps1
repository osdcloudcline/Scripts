$Steam = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Gaming/Advanced/Steam.ps1")
Invoke-Expression $($Steam.Content)
