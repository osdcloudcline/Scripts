$CopyTo = "CLIENT OS SYSTEM: Copy To Registry Modifications"
$MoveTo = "CLIENT OS SYSTEM: Move To Registry Modifications"


#  Copy To folder

Write-Verbose "Importing $CopyTo to $env:computername..." -Verbose

if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\AllFilesystemObjects\shellex\ContextMenuHandlers\CopyTo") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\AllFilesystemObjects\shellex\ContextMenuHandlers\CopyTo" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\AllFilesystemObjects\shellex\ContextMenuHandlers\CopyTo' -Name '(default)' -Value '{C2FBB630-2971-11D1-A18C-00C04FD75D13}' -PropertyType String -Force -ea SilentlyContinue;


#  Move To folder

Write-Verbose "Importing $MoveTo to $env:computername..." -Verbose

if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\AllFilesystemObjects\shellex\ContextMenuHandlers\MoveTo") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\AllFilesystemObjects\shellex\ContextMenuHandlers\MoveTo" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\AllFilesystemObjects\shellex\ContextMenuHandlers\MoveTo' -Name '(default)' -Value '{C2FBB631-2971-11D1-A18C-00C04FD75D13}' -PropertyType String -Force -ea SilentlyContinue;
