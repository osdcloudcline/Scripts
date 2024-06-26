Write-Host 'Welcome to the Dell Alienware Software Download Script ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                       ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host 'This script downloads the following:                   ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '    Alienware Control Center Installation Manager      ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '    Dell Digital Delivery Manager                      ' -ForegroundColor DarkBlue -BackgroundColor White




# Alienware Command Center - Full Installer

$AWCC1URL = ""
$AWCC2URL = ""
$AWCC3URL = ""
$AWCC4URL = ""
$AWCC5URL = ""
$AWCC6URL = ""
$AWCC7URL = ""
$AWCC8URL = ""
$AWCC9URL = ""
$AWCC10URL = ""
$AWCC11URL = ""
$AWCC12URL = ""
$AWCC13URL = ""
$AWCC14URL = ""
$AWCC15URL = ""
$AWCC16URL = ""
$AWCC17URL = ""
$AWCC18URL = ""
$AWCC19URL = ""
$AWCC20URL = ""
$AWCC21URL = ""
$AWCC22URL = ""
$AWCC23URL = ""
$AWCC24URL = ""
$AWCC25URL = ""
$AWCC26URL = ""
$AWCC27URL = ""
$AWCC28URL = ""
$AWCC29URL = ""
$AWCC30URL = ""
$AWCC31URL = ""
$AWCC32URL = ""
$AWCC33URL = ""
$AWCC34URL = ""
$AWCC35URL = ""
$AWCC36URL = ""
$AWCC37URL = ""
$AWCC38URL = ""

# Dell Alienware Digital Delivery 

$AWDD1URL =
$AWDD2URL =
$AWDD3URL =


Write-Host "Determining Central Processing Unit..." -ForegroundColor Cyan

$CPU = (Get-CimInstance -Class Win32_Processor).Manufacturer
$CPUName = (Get-CimInstance -Class Win32_Processor).Name

If($CPU -eq "AuthenticAMD"){
Write-Host      "This PC has an $CPU $CPUName" -ForegroundColor DarkBlue -BackgroundColor White
$AMD = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/AMD%20/AMD.ps1")
Invoke-Expression $($AMD.Content)
}
ElseIf($CPU -eq "GenuineIntel"){
Write-Host      "This PC has an $CPU $CPUName" -ForegroundColor DarkBlue -BackgroundColor White
$Intel = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/Intel/Intel.ps1")
Invoke-Expression $($Intel.Content)
}
