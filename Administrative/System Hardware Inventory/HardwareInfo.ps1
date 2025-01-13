Write-Host '                                                                 ' -BackgroundColor White 
Write-Host '             SYSTEM HARDWARE INVENTORY                           ' -ForegroundColor DarkBlue -BackgroundColor White 
Write-Host '          This script inventories the entire computer            ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '              for its hardware information                       ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                 ' -BackgroundColor White
pause

Write-Verbose "Processing: Inventorying CPU information" -Verbose

$processor = Get-CimInstance -ClassName CIM_Processor | Select-Object Name, MaxClockSpeed

Write-Host 
Write-Verbose "Completed: Gathering CPU Information" -Verbose



Write-Verbose "Processing: Inventorying System Hardware to retrieve and export Hardware ID information" -Verbose

Get-PnpDevice | Select-Object -Property FriendlyName, InstanceId, HardwareIds > C:\HardwareIDs.txt

Write-Host 
Write-Verbose "Completed: System Hardware inventory" -Verbose


