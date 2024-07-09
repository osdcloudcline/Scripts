$Browser1 = "Google Chrome"

Write-Verbose "Checking for and processing updates for $Browser1 on $env:computername..." -Verbose
winget upgrade --id Google.Chrome
