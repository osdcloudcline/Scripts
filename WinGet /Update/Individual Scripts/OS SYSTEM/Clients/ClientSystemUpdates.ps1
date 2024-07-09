$OSSystem1 = "Microsoft App Installer"
$OSSystem2 = "Microsoft Edge"
$OSSystem3 = ".NET Runtime 3.1"
$OSSystem4 = ".NET Runtime 5.0"
$OSSystem5 = ".NET Runtime 6.0"
$OSSystem6 = ".NET Runtime 7.0"
$OSSystem7 = ".NET Runtime 8.0"
$OSSystem8 = "Oracle JAVA Runtime Environment"
$OSSystem9 = "Microsoft XNA Redistributable"
$OSSystem10 = "Microsoft Visual C++ Redistributable 2005 x64"
$OSSystem11 = "Microsoft Visual C++ Redistributable 2005 x86"
$OSSystem12 = "Microsoft Visual C++ Redistributable 2008 x64"
$OSSystem13 = "Microsoft Visual C++ Redistributable 2008 x86"
$OSSystem14 = "Microsoft Visual C++ Redistributable 2010 x64"
$OSSystem15 = "Microsoft Visual C++ Redistributable 2010 x86"
$OSSystem16 = "Microsoft Visual C++ Redistributable 2012 x64"
$OSSystem17 = "Microsoft Visual C++ Redistributable 2012 x86"
$OSSystem18 = "Microsoft Visual C++ Redistributable 2013 x64"
$OSSystem19 = "Microsoft Visual C++ Redistributable 2013 x86"
$OSSystem20 = "Microsoft Visual C++ Redistributable 2017"
$OSSystem21 = "Microsoft Visual C++ Redistributable 2015+ x64"
$OSSystem22 = "Microsoft Visual C++ Redistributable 2015+ x86" 
$OSSystem23 = ".NET Framework 4.8.1"
$OSSystem24 = "OpenAL Framework"
$OSSystem25 = "Microsoft Windows Terminal"
$OSSystem26 = "Microsoft Windows PowerShell 7.x.x"

Write-Verbose "Checking for and processing update: $OSSystem1..." -Verbose
winget upgrade --id Microsoft.AppInstaller

Write-Verbose "Checking for and processing update: $OSSystem2..." -Verbose
winget upgrade --id Microsoft.Edge

Write-Verbose "Checking for and processing update: $OSSystem3..." -Verbose
winget upgrade --id  Microsoft.DotNet.Runtime.3_1

Write-Verbose "Checking for and processing update: $OSSystem4..." -Verbose
winget upgrade --id Microsoft.DotNet.Runtime.5

Write-Verbose "Checking for and processing update: $OSSystem5..." -Verbose
winget upgrade --id Microsoft.DotNet.Runtime.6

Write-Verbose "Checking for and processing update: $OSSystem6..." -Verbose
winget upgrade --id Microsoft.DotNet.Runtime.7

Write-Verbose "Checking for and processing update: $OSSystem7..." -Verbose
winget upgrade --id Microsoft.DotNet.Runtime.8

Write-Verbose "Checking for and processing update: $OSSystem8..." -Verbose
winget upgrade --id Oracle.JavaRuntimeEnvironment

Write-Verbose "Checking for and processing update: $OSSystem9..." -Verbose
winget upgrade --id Microsoft.XNARedist

Write-Verbose "Checking for and processing update: $OSSystem10..." -Verbose
winget upgrade --id Microsoft.VCRedist.2005.x64

Write-Verbose "Checking for and processing update: $OSSystem11..." -Verbose
winget upgrade --id Microsoft.VCRedist.2005.x86

Write-Verbose "Checking for and processing update: $OSSystem12..." -Verbose
winget upgrade --id Microsoft.VCRedist.2008.x64

Write-Verbose "Checking for and processing update: $OSSystem13..." -Verbose
winget upgrade --id Microsoft.VCRedist.2008.x86

Write-Verbose "Checking for and processing update: $OSSystem14..." -Verbose
winget upgrade --id Microsoft.VCRedist.2010.x64

Write-Verbose "Checking for and processing update: $OSSystem15..." -Verbose
winget upgrade --id Microsoft.VCRedist.2010.x86

Write-Verbose "Checking for and processing update: $OSSystem16..." -Verbose
winget upgrade --id Microsoft.VCRedist.2012.x64

Write-Verbose "Checking for and processing update: $OSSystem17..." -Verbose
winget upgrade --id Microsoft.VCRedist.2012.x86

Write-Verbose "Checking for and processing update: $OSSystem18..." -Verbose
winget upgrade --id Microsoft.VCRedist.2013.x64

Write-Verbose "Checking for and processing update: $OSSystem19..." -Verbose
winget upgrade --id Microsoft.VCRedist.2013.x86

Write-Verbose "Checking for and processing update: $OSSystem20..." -Verbose
choco upgrade vcredist2017 -y

Write-Verbose "Checking for and processing update: $OSSystem21..." -Verbose
winget upgrade --id Microsoft.VCRedist.2015+.x64

Write-Verbose "Checking for and processing update: $OSSystem22..." -Verbose
winget upgrade --id Microsoft.VCRedist.2015+.x86

Write-Verbose "Checking for and processing update: $OSSystem23..." -Verbose
choco upgrade dotnetfx -y

Write-Verbose "Checking for and processing update: $OSSystem24..." -Verbose
choco upgrade openal -y

Write-Verbose "Checking for and processing update: $OSSystem25..." -Verbose
winget upgrade --id Microsoft.WindowsTerminal

Write-Verbose "Checking for and processing update: $OSSystem26..." -Verbose
winget upgrade --id Microsoft.PowerShell

Write-Host "Finished Checking for and processing updates : OS System related software..." -ForegroundColor Yellow
