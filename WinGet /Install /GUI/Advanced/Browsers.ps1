$Chrome = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Browsers/Advanced/GUIChrome.ps1")
Invoke-Expression $($Chrome.Content)

$Firefox = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Browsers/Advanced/GUIFirefox.ps1")
Invoke-Expression $($Firefox.Content)
