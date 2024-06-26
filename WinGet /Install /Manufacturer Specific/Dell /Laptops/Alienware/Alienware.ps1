Write-Host 'Welcome to the Dell Alienware Software Download Script ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                       ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host 'This script downloads the following:                   ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '    Alienware Control Center Installation Manager      ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '    Dell Digital Delivery Manager                      ' -ForegroundColor DarkBlue -BackgroundColor White




$AlienwareCC1 = "https://dl.dell.com/FOLDER11313113M/1/Alienware-Command-Center-Application-Full-Installer_09KMY_WIN_6.2.7.0_A00.EXE"
$AlienwareCC2 = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/Dell%20/Laptops/Alienware/AWCCInstallationManager.exe"
$DellDigitalDelivery = "https://dl.dell.com/FOLDER11313029M/1/Dell-Alienware-Digital-Delivery-Application_PM4WF_WIN_5.0.86.0_A26.EXE"




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
