$Messaging1 = "Cisco WebEx"
$Messaging2 = "Cisco WebEx Meetings"

Write-Verbose "Updating $Messaging1 on $env:computername..." -Verbose
winget upgrade --id XPDLZV7R88FF1P

Write-Verbose "Updating $Messaging2 on $env:computername..." -Verbose
winget uninstall --id Cisco.CiscoWebexMeetings
winget install --id Cisco.CiscoWebexMeetings
