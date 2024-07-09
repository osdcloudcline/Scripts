$OSSystem1 = "Microsoft App Installer"
$OSSystem2 = "Microsoft Edge"
$OSSystem3 = "Microsoft Visual C++ Redistributable 2015+ x86"
$OSSystem4 = "Microsoft Visual C++ Redistributable 2015+ x64"
$OSSystem5 = "Microsoft XNA Redistributable"
$OSSystem6 = "Microsoft Windows Terminal"
$OSSystem7 = "Microsoft Windows PowerShell 7.x.x"

Write-Verbose "Checking for and processing update: $OSSystem1..." -Verbose
winget upgrade --id Microsoft.AppInstaller

Write-Verbose "Checking for and processing update: $OSSystem2e..." -Verbose
winget upgrade --id Microsoft.Edge

Write-Verbose "Checking for and processing update: $OSSystem3..." -Verbose
winget upgrade --id Microsoft.VCRedist.2015+.x86

Write-Verbose "Checking for and processing update: $OSSystem4..." -Verbose
winget upgrade --id Microsoft.VCRedist.2015+.x64

Write-Verbose "Checking for and processing update: $OSSystem5..." -Verbose
winget upgrade --id Microsoft.XNARedist

Write-Verbose "Checking for and processing update: $OSSystem6..." -Verbose
winget upgrade --id Microsoft.WindowsTerminal

Write-Verbose "Checking for and processing update: $OSSystem7..." -Verbose
winget upgrade --id Microsoft.PowerShell
