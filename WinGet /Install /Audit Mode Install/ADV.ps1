Write-Host
Write-Host
Write-Host "Step 1 : Media Software" -ForegroundColor Cyan
Write-Host
Write-Host

$Mediaapp1 = "VLC Media Player"
$Mediaapp2 = "MediaInfo"
$Mediaapp3 = "MakeMKV"
$Mediaapp4 = "Handbrake"
$Mediaapp5 = "PowerISO"
$Mediaapp6 = "Audacity and FFMPEG"
$Mediaapp7 = "Logitech MyHarmony"
$Mediaapp8 = "MKVToolNix"
$Mediaapp9 = "Apple iTunes"

Write-Verbose "Installing Media Software 1 of 9..." -Verbose
Write-Verbose "Installing $Mediaapp1 on $env:computername..." -Verbose
winget install --id VideoLAN.VLC --exact --accept-source-agreements  --accept-source-agreements --force

Write-Verbose "Installing Media Software 2 of 9..." -Verbose
Write-Verbose "Installing $Mediaapp2 on $env:computername..." -Verbose
winget install --id VideoLAN.VLC --exact --accept-source-agreements  --accept-source-agreements --force

Write-Verbose "Installing Media Software 3 of 9..." -Verbose
Write-Verbose "Installing $Mediaapp3 on $env:computername..." -Verbose
winget install --id GuinpinSoft.MakeMKV --exact --accept-source-agreements  --accept-source-agreements --force

Write-Verbose "Installing Media Software 4 of 9..." -Verbose
Write-Verbose "Installing $Mediaapp4 on $env:computername..." -Verbose
winget install --id HandBrake.HandBrake --exact --accept-source-agreements  --accept-source-agreements --force

Write-Verbose "Installing Media Software 5 of 9..." -Verbose
Write-Verbose "Installing $Mediaapp5 on $env:computername..." -Verbose
winget install --id PowerSoftware.PowerISO --exact --accept-source-agreements  --accept-source-agreements --force

Write-Verbose "Installing Media Software 6 of 9..." -Verbose
Write-Verbose "Installing $Mediaapp6 on $env:computername..." -Verbose
winget install --id Audacity.Audacity --exact --accept-source-agreements  --accept-source-agreements --force
choco install audacity-ffmpeg -y

Write-Verbose "Installing Media Software 7 of 9..." -Verbose
Write-Verbose "Installing $Mediaapp7 on $env:computername..." -Verbose
winget install --id Logitech.MyHarmony --exact --accept-source-agreements  --accept-source-agreements --force

Write-Verbose "Installing Media Software 8 of 9..." -Verbose
Write-Verbose "Installing $Mediaapp8 on $env:computername..." -Verbose
winget install --id MoritzBunkus.MKVToolNix --exact --accept-source-agreements  --accept-source-agreements --force

Write-Verbose "Installing Media Software 9 of 9..." -Verbose
Write-Verbose "Installing $Mediaapp9 on $env:computername..." -Verbose
winget install --id Apple.iTunes --exact --accept-source-agreements  --accept-source-agreements --force


Write-Host
Write-Host
Write-Host "Step 2 : Web Browsing Software" -ForegroundColor Cyan
Write-Host
Write-Host

$Browsingapp1 = "Google Chrome for Enterprise"
$Browsingapp2 = "Mozilla Firefox"

Write-Verbose "Installing Web Browsing Software 1 of 2..." -Verbose
Write-Verbose "Installing $Browsingapp1 on $env:computername..." -Verbose
winget install --id Google.Chrome --exact --accept-source-agreements  --accept-source-agreements --force

Write-Verbose "Installing Web Browsing Software 2 of 2..." -Verbose
Write-Verbose "Installing $Browsingapp2 on $env:computername..." -Verbose
winget install --id Mozilla.Firefox --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host
Write-Host
Write-Host "Step 3 : Sytem Utilities Software" -ForegroundColor Cyan
Write-Host
Write-Host


Write-Host
Write-Host
Write-Host "Step 4 : Programming Software" -ForegroundColor Cyan
Write-Host
Write-Host

$Programmingapp1 = "VS Code"
$Programmingapp2 = "Visual Studio 2022 Enterprise"

Write-Verbose "Installing Programming Software 1 of 2..." -Verbose
Write-Verbose "Installing $Programmingapp1 on $env:computername..." -Verbose
winget install --id Microsoft.VisualStudioCode --exact --accept-source-agreements  --accept-source-agreements --force

Write-Verbose "Installing Programming Software 2 of 2..." -Verbose
Write-Verbose "Installing $Programmingapp2 on $env:computername..." -Verbose
winget install --id Microsoft.VisualStudio.2022.Enterprise --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host
Write-Host
Write-Host "Step 5 : Productivity Software" -ForegroundColor Cyan
Write-Host
Write-Host


Write-Host
Write-Host
Write-Host "Step 6 : Remote Desktop / IT Software" -ForegroundColor Cyan
Write-Host
Write-Host

$RDCapp1 = "Microsoft Remote Desktop Client"
$RDCapp2 = "VMWare Horizon Remote Desktop Connection Client"
$RDCapp3 = "AnyDesk"
$RDCapp4 = "VMWare Workstation Professional"
$RDCapp5 = "Windows 365 Azure Virtual Desktop"

# Virtualization related software

Write-Verbose "Installing Remote Desktop/Virtualization Software 1 of 5..." -Verbose
Write-Host "Installing $RDCapp1 on $env:computername..."  -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Microsoft.RemoteDesktopClient --exact --accept-source-agreements --accept-source-agreements --force

Write-Verbose "Installing Remote Desktop/Virtualization Software 2 of 5..." -Verbose
Write-Host "Installing: $RDCapp2 on $env:computername..."  -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id VMware.HorizonClient --exact --accept-source-agreements  --accept-source-agreements --force

Write-Verbose "Installing Remote Desktop/Virtualization Software 3 of 5..." -Verbose
Write-Host "Installing: $RDCapp3 on $env:computername..."  -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id AnyDeskSoftwareGmbH.AnyDesk --exact --accept-source-agreements  --accept-source-agreements --force

Write-Verbose "Installing Remote Desktop/Virtualization Software 4 of 5..." -Verbose
Write-Host "Installing: $RDCapp4 on $env:computername ..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan  
choco install vmwareworkstation --params='"/SERIALNUMBER=VV7RA-0YZ0N-M89EP-JFN7C-P62RF"' -y

Write-Verbose "Installing Remote Desktop/Virtualization Software 5 of 5..." -Verbose
Write-Host "Installing: $RDCapp5 on $env:computername ..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan  
winget install --id 9N1F85V9T8BN --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host
Write-Host
Write-Host "Step 7 : Gaming Software" -ForegroundColor Cyan
Write-Host
Write-Host

$Gamingapp1 = "Steam"

Write-Verbose "Installing Gaming Software 1 of 1..." -Verbose
Write-Host "Installing $Gamingapp1 on $env:computername..."  -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Microsoft.RemoteDesktopClient --exact --accept-source-agreements --accept-source-agreements --force

Write-Host
Write-Host
Write-Host "Step 8 : Security Software" -ForegroundColor Cyan
Write-Host
Write-Host
