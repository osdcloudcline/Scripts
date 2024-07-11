$CurrentName = "$Env:computername"
$NewName =  Read-Host -Prompt 'Enter PC Name'

Rename-Computer -Computername $CurrentName -NewName $NewName
Restart-Computer
