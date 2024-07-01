$Browser1 = "Google Chrome"

Write-Verbose "Updating $Browser1 on $env:computername..." -Verbose
winget upgrade --id Google.Chrome
