$Utilities1 = "IOBit Driver Booster"

Write-Verbose "Updating $Utilities1 on $env:computername..." -Verbose
winget upgrade --id IObit.DriverBooster
