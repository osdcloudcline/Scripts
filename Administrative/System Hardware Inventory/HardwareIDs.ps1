





















Write-Verbose "Processing: Inventorying System Hardware to retrieve and export Hardware ID information" -Verbose

Get-PnpDevice | Select-Object -Property FriendlyName, InstanceId, HardwareIds > C:\HardwareIDs.txt

Write-Host 
Write-Verbose "Completed: System Hardware inventory" -Verbose
