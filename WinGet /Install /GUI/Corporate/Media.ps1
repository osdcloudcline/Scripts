$MediaInfo = Invoke-WeBRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Media/Corporate/GUI%20Scripts/MediaInfo.ps1")
Invoke-Expression $($MediaInfo.Content)

$VLCPlayer = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Media/Corporate/GUI%20Scripts/VLCPlayer.ps1")
Invoke-Expression $($VLCPlayer.Content 
