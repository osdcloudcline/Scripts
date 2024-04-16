$app1 = ".NET Runtime 3.1"
$app1ver = "Version: 3.1.32"
$app2 = ".NET Runtime 5.0"
$app2ver = "Version: 5.0.17"
$app3 = ".NET Runtime 6.0"
$app3ver = "Version: 6.0.26"
$app4 = ".NET Runtime 7.0"
$app4ver = "Version: 7.0.15"
$app5 = ".NET Runtime 8.0"
$app5ver = "Version: 8.0.1"
$app6 = "Oracle JAVA Runtime Environment 8.0"
$app6ver = "Version: 8.0.4010.10"
$app7 = "MS VS C++ Redistributable 2005 x64"
$app7ver = "Version: 8.0.61000"
$app8 = "MS VS C++ Redistributable 2005 x86"
$app8ver = "Version: 8.0.61001"
$app9 = "MS VS C++ Redistributable 2008 x64"
$app9ver = "Version: 9.0.30729.6161"
$app10 = "MS VS C++ Redistributable 2008 x86"
$app10ver = "Version: 9.0.30729.6161"
$app11 = "MS VS C++ Redistributable 2010 x64"
$app11ver = "Version: 10.0.40219"
$app12 = "MS VS C++ Redistributable 2010 x86"
$app12ver = "Version: 10.0.40219"
$app13 = "MS VS C++ Redistributable 2012 x64"
$app13ver = "Version: 11.0.61030.0"
$app14 = "MS VS C++ Redistributable 2012 x86"
$app14ver = "Version: 11.0.61030.0"
$app15 = "MS VS C++ Redistributable 2013 x64"
$app15ver = "Version: 12.040664.0"
$app16 = "MS VS C++ Redistributable 2013 x86"
$app16ver = "Version: 12.040664.0"
$app17 = "MS VS C++ Redistributable 2015 UWP Desktop"
$app17ver = "Version: 14.0.33321.0"
$app18 = "MS VS C++ Redistributable 2015-2022 x64"
$app18ver = "Version: 14.38.33135.0"
$app19 = "MS VS C++ Redistributable 2015-2022 x86"
$app19ver = "Version: 14.38.33130.0"
$app20 = "MS VS C++ Redistributable 2017"
$app20ver = "Version: 14.16.27033"
$app21 = "MS XNA Redistributable Framework"
$app21ver = "Version: 4.0.30901.0"
$app22 = ".NET Framework"
$app22ver = "Version: 4.8.1"
$app23 = "OpenAL Framework"
$app23ver = "Version: 1.1"
$app24 = "Microsoft Edge"
$app24ver = "Version: Latest"
$app25 = "Microsoft Windows Terminal"
$app25ver = "Version: 1.19.10302.0"
$app26 = "Microsoft Windows Powershell"
$app26ver = "Version: 7.4.1.0"	


Write-Host "Updating: $app1, $app1ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id  Microsoft.DotNet.Runtime.3_1 --exact --accept-source-agreements --accept-source-agreements --force

Write-Host "Updating: $app2, $app2ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id Microsoft.DotNet.Runtime.5 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Updating: $app3, $app3ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id Microsoft.DotNet.Runtime.6 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Updating: $app4, $app4ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id Microsoft.DotNet.Runtime.7 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Updating: $app5, $app5ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id Microsoft.DotNet.Runtime.8 --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Updating: $app6, $app6ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id Oracle.JavaRuntimeEnvironment --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Updating: $app7, $app7ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id Microsoft.VCRedist.2005.x64 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Updating: $app8, $app8ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id Microsoft.VCRedist.2005.x86 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Updating: $app9, $app9ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id Microsoft.VCRedist.2008.x64 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Updating: $app10, $app10ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id Microsoft.VCRedist.2008.x86 --exact --accept-source-agreements --accept-source-agreements  --force
		
Write-Host "Updating: $app11, $app11ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id Microsoft.VCRedist.2010.x64 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Updating: $app12, $app12ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id Microsoft.VCRedist.2010.x86 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Updating: $app13, $app13ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id Microsoft.VCRedist.2012.x64 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Updating: $app14, $app14ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id Microsoft.VCRedist.2012.x86 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Updating: $app15, $app15ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id Microsoft.VCRedist.2013.x64 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Updating: $app16, $app16ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id Microsoft.VCRedist.2013.x86 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Updating: $app17, $app17ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade Microsoft.VCLibs.Desktop.14 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Updating: $app18, $app18ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id Microsoft.VCRedist.2015+.x64 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Updating: $app19, $app19ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id Microsoft.VCRedist.2015+.x86 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Updating: $app20, $app20ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
choco upgrade vcredist2017 -y
		
Write-Host "Updating: $app21, $app21ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id Microsoft.XNARedist --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Updating: $app22, $app22ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
choco upgrade dotnetfx -y
		
Write-Host "Updating: $app23, $app23ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
choco upgrade openal -y
		
Write-Host "Updating: $app24, $app24ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id Microsoft.Edge --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Updating: $app25, $app25ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id Microsoft.WindowsTerminal --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Updating: $app26, $app26ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id Microsoft.PowerShell --exact --accept-source-agreements --accept-source-agreements --force
	
Write-Host "Finished upgrading System related software..." -ForegroundColor Yellow
