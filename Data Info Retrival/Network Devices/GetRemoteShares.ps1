Write-Host '                                                                                ' -BackgroundColor White                                                              
Write-Host ' This script retrives the remote network shares of devices on the local network ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '       You will need to know the computer name of the remote PC,                ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '       as well as the username and password to connect                          ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                                ' -BackgroundColor White 
Write-Host '         This script maps the remote share to drive letter Z:                   ' -ForegroundColor DarkRed -BackgroundColor White
Write-Host '                                                                                ' -BackgroundColor White 
Write-Host '      Manually typing the following removes the mapped drive share:             ' -ForegroundColor DarkRed -BackgroundColor White
Write-Host '                  NET USE Z: /delete                                            ' -ForegroundColor DarkRed -BackgroundColor White
Write-Host '                                                                                ' -BackgroundColor White 



Function Get-RemoteShares(){

$InventoryDir = "C:\Inventory\NAS"

Write-Verbose "Creating $InventoryDir, which will have the inventory TXT, CSV and XLS files saved in" -Verbose
New-Item -Path $InventoryDir -ItemType Directory -Force

$ServerNameQuestion = Read-Host -Prompt 'Is your NAS a QNAP, Synology, TrueNAS or Unraid server?' 
If(($ServerNameQuestion -eq "Unraid") -or ($ServerNameQuestion -eq "unraid")){
$PCName = Read-Host 'Enter PC Name on the network'
net view \\$PCName
$share = Read-Host -Prompt 'Enter network share to map to a network drive'
net use z: \\$PCName\$share
cd z:

$sharename = $share

$files = Get-ChildItem -Path 'z:' -Recurse | Where-Object {$_.PSIsContainer -eq $false -and $_.Extension -ne '.srt'}

Write-Host "`n1Total : "$files.Count "mkv `n1"
ForEach($n1 in $files){

Write-Verbose "Inventorying Remote Network Share - $PCName\$share..." -Verbose
$n1.Name | Out-File -Append "$InventoryDir\$sharename.txt"
$n1.Name | Out-File -Append "$InventoryDir\$sharename.csv"
$n1.Name | Out-File -Append "$InventoryDir\$sharename.xls"
}
pause
cd c:
Net use z: /delete
cls
Get-RemoteShares
}
elseif(($ServerNameQuestion -eq "QNAP") -or ($ServerNameQuestion -eq "qnap") -or ($ServerNameQuestion -eq "Synology") -or ($ServerNameQuestion -eq "synology") -or ($ServerNameQuestion -eq "TrueNAS")){
$PCName = Read-Host 'Enter PC Name on the network'
$IPAddress = (Resolve-DnsName -Name $PCName).IPAddress
Write-Host  "The IP Address of $PCName is $IPAddress" -ForegroundColor Cyan
net view \\$IPAddress
$share = Read-Host -Prompt 'Enter network share to map to a network drive'
net use z: \\$IPAddress\$share
cd z:

$sharename = $share

$files = Get-ChildItem -Path 'z:' -Recurse | Where-Object {$_.PSIsContainer -eq $false -and $_.Extension -ne '.srt'}

Write-Host "`n1Total : "$files.Count "mkv `n1"
ForEach($n1 in $files){

Write-Verbose "Inventorying Remote Network Share - $PCName\$share..." -Verbose
$n1.Name | Out-File -Append "$InventoryDir\$sharename.txt"
$n1.Name | Out-File -Append "$InventoryDir\$sharename.csv"
$n1.Name | Out-File -Append "$InventoryDir\$sharename.xls"
}
pause
cd c:
Net use z: /delete
cls
Get-RemoteShares
}
}

Get-RemoteShares
