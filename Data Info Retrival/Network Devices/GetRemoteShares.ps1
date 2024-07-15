Write-Host '                                                                                ' -BackgroundColor White                                                              
Write-Host ' This script retrives the remote network shares of devices on the local network ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '       You will need to know the computer name of the remote PC,                ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '       as well as the username and password to connect                          ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                                ' -BackgroundColor White 
Write-Host '         This script maps the remote share to drive letter Z:                   ' -ForegroundColor DarkRed -BackgroundColor White
Write-Host '                                                                                ' -BackgroundColor White 
Write-Host '      Manually typing the following removes the mapped drive share:             ' -ForegroundColor DarkRed -BackgroundColor White
Write-Host '                  NET USE Z: /delete                                           ' -ForegroundColor DarkRed -BackgroundColor White
Write-Host '                                                                                ' -BackgroundColor White 


$PCName = Read-Host 'Enter PC Name on the network'
net view \\$PCName
$share = Read-Host -Prompt 'Enter network share to map to a network drive'
net use z: \\$PCName\$share
cd z:

$sharename = $share
$InventoryDir = "C:\Inventory\NAS"

$files = Get-ChildItem -Path 'Z:' -Recurse | Where-Object {$_.PSIsContainer -eq $false -and $_.Extension -ne '.srt'}

Write-Host "`n1Total : "$files.Count "mkv `n1"
ForEach($n1 in $files){
$n1.Name | Out-File -Append "$InventoryDir\$sharename.txt"
$n1.Name | Out-File -Append "$InventoryDir\$sharename.csv"
$n1.Name | Out-File -Append "$InventoryDir\$sharename.xls"
}
Net use z: /delete
