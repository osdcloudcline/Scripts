$app1 = "Microsoft Edge"

Write-Verbose "Removing $app1..." -Verbose
winget uninstall Microsoft.Edge 

Write-Verbose "Removing $app1..." -Verbose
Remove-appxpackage Microsoft.MicrosoftEdge.Stable_126.0.2592.81_neutral__8wekyb3d8bbwe
