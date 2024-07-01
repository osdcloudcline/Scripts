$VDI1 = "Microsoft Remote Desktop Client Software"


Write-Verbose "Updating $VDI1 on $env:computername..." -Verbose
winget upgrade --id Microsoft.RemoteDesktopClient
