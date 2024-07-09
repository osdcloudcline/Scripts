$VDI1 = "Microsoft Remote Desktop Client Software"


Write-Verbose "Checking for and processing update: $VDI1 on $env:computername..." -Verbose
winget upgrade --id Microsoft.RemoteDesktopClient
