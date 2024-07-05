$OSSystem1 = "Microsoft App Installer"
$OSSystem2 = "Microsoft Edge"
$OSSystem3 = "Microsoft Visual C++ Redistributable 2015+ x86"
$OSSystem4 = "Microsoft Visual C++ Redistributable 2015+ x64"
$OSSystem5 = "Microsoft XNA Redistributable"
$OSSystem6 = "Microsoft Windows Terminal"
$OSSystem7 = "Microsoft Windows PowerShell 7.x.x"

Write-Verbose "Updating $OSSystem1 on $env:computername..." -Verbose
winget upgrade --id Microsoft.AppInstaller

Write-Verbose "Updating $OSSystem2 on $env:computername..." -Verbose
winget upgrade --id Microsoft.Edge

Write-Verbose "Updating $OSSystem3 on $env:computername..." -Verbose
winget upgrade --id Microsoft.VCRedist.2015+.x86

Write-Verbose "Updating $OSSystem4 on $env:computername..." -Verbose
winget upgrade --id Microsoft.VCRedist.2015+.x64

Write-Verbose "Updating $OSSystem5 on $env:computername..." -Verbose
winget upgrade --id Microsoft.XNARedist

Write-Verbose "Updating $OSSystem6 on $env:computername..." -Verbose
winget upgrade --id Microsoft.WindowsTerminal

Write-Verbose "Updating $OSSystem7 on $env:computername..." -Verbose
winget upgrade --id Microsoft.PowerShell
