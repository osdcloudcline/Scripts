

Write-Host '                                                                ' -BackgroundColor White 
Write-Host '  The following Windows Client OS RSAT Tools will be installed: ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - RSAT: Active Directory Domain Services and LDS Tools        ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - RSAT: PowerShell Module for Azure Stack HCI                 ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - RSAT: Active Directory Certificate Server Services          ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - RSAT: DHCP Server Tools                                     ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - RSAT: DNS Server Tools                                      ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - RSAT: Failover Clustering Tools                             ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - RSAT: File Services Tools                                   ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - RSAT: Group Policy Management Console                       ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - RSAT: IP Address Management Client (IPAM)                   ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - RSAT: Data Center Bridging LLDP Tools                       ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - RSAT: Network Controller Management Tools                   ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - RSAT: Network Load Balancing Tools                          ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - RSAT: Remote Access Management Tools                        ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - RSAT: Remote Desktop Services Tools                         ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - RSAT: Server Manager                                        ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - RSAT: Storage Migration Service Management Tools            ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - RSAT: Storage Replica PowerShell Module                     ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - RSAT: System Insights PowerShell Module                     ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - RSAT: Volume Activation Tools                               ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - RSAT: Windows Server Update Services (WSUS) Tools           ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                ' -BackgroundColor White 

pause

$RSAT = "Windows Client OS RSAT Tools"

$ClientRSAT1 = "RSAT - Active Directory Domain Services Tools"
$ClientRSAT2 = "RSAT - Azure Stack HCI Management Tools"
$ClientRSAT3 = "RSAT - Cerificate Services Tools"
$ClientRSAT4 = "RSAT - DHCP Tools"
$ClientRSAT5 = "RSAT - DNS Tools"
$ClientRSAT6 = "RSAT - Failover Cluster Management Tools"
$ClientRSAT7 = "RSAT - File Services Tools"
$ClientRSAT8 = "RSAT - Group Policy Management Console Tools"
$ClientRSAT9 = "RSAT - IPAM Client Tools"
$ClientRSAT10 = "RSAT - LLDP Tools"
$ClientRSAT11 = "RSAT - Network Controller Tools"
$ClientRSAT12 = "RSAT - Network Load Balancing Tools"
$ClientRSAT13 = "RSAT - Remote Access Management Tools"
$ClientRSAT14 = "RSAT - Remote Desktop Services Tools"
$ClientRSAT15 = "RSAT - Server Manager Tools"
$ClientRSAT16 = "RSAT - Storage Migration Services Tools"
$ClientRSAT17 = "RSAT - Storage Replica Tools"
$ClientRSAT18 = "RSAT - System Insights Management Tools"
$ClientRSAT19 = "RSAT - Volume Activation Tools"
$ClientRSAT20 = "RSAT - Windows Software Update Services Tools"

Write-Verbose "Installing $RSAT..." -Verbose
Write-Host

Write-Verbose "Installing $ClientRSAT1..." -Verbose
Write-Host
Get-WindowsCapability -Name Rsat.ActiveDirectory.DS-LDS.Tools~~~~0.0.1.0 -Online | Add-WindowsCapability -Online
Write-Verbose "Installing $ClientRSAT2..." -Verbose
Write-Host
Get-WindowsCapability -Name Rsat.AzureStack.HCI.Management.Tools~~~~0.0.1.0 -Online | Add-WindowsCapability -Online
Write-Verbose "Installing $ClientRSAT3..." -Verbose
Write-Host
Get-WindowsCapability -Name Rsat.CertificateServices.Tools~~~~0.0.1.0 -Online | Add-WindowsCapability -Online
Write-Verbose "Installing $ClientRSAT4..." -Verbose
Write-Host
Get-WindowsCapability -Name Rsat.DHCP.Tools~~~~0.0.1.0 -Online | Add-WindowsCapability -Online
Write-Verbose "Installing $ClientRSAT5..." -Verbose
Write-Host
Get-WindowsCapability -Name Rsat.Dns.Tools~~~~0.0.1.0 -Online | Add-WindowsCapability -Online
Write-Verbose "Installing $ClientRSAT6..." -Verbose
Write-Host
Get-WindowsCapability -Name Rsat.FailoverCluster.Management.Tools~~~~0.0.1.0 -Online | Add-WindowsCapability -Online
Write-Verbose "Installing $ClientRSAT7..." -Verbose
Write-Host
Get-WindowsCapability -Name Rsat.FileServices.Tools~~~~0.0.1.0 -Online | Add-WindowsCapability -Online
Write-Verbose "Installing $ClientRSAT8..." -Verbose
Write-Host
Get-WindowsCapability -Name Rsat.GroupPolicy.Management.Tools~~~~0.0.1.0 -Online | Add-WindowsCapability -Online
Write-Verbose "Installing $ClientRSAT9..." -Verbose
Write-Host
Get-WindowsCapability -Name Rsat.IPAM.Client.Tools~~~~0.0.1.0 -Online | Add-WindowsCapability -Online
Write-Verbose "Installing $ClientRSAT10..." -Verbose
Write-Host
Get-WindowsCapability -Name Rsat.LLDP.Tools~~~~0.0.1.0 -Online | Add-WindowsCapability -Online
Write-Verbose "Installing $ClientRSAT11..." -Verbose
Write-Host
Get-WindowsCapability -Name Rsat.NetworkController.Tools~~~~0.0.1.0 -Online | Add-WindowsCapability -Online
Write-Verbose "Installing $ClientRSAT12..." -Verbose
Write-Host
Get-WindowsCapability -Name Rsat.NetworkLoadBalancing.Tools~~~~0.0.1.0 -Online | Add-WindowsCapability -Online
Write-Verbose "Installing $ClientRSAT13..." -Verbose
Write-Host
Get-WindowsCapability -Name Rsat.RemoteAccess.Management.Tools~~~~0.0.1.0 -Online | Add-WindowsCapability -Online
Write-Verbose "Installing $ClientRSAT14..." -Verbose
Write-Host
Get-WindowsCapability -Name Rsat.RemoteDesktop.Services.Tools~~~~0.0.1.0 -Online | Add-WindowsCapability -Online
Write-Verbose "Installing $ClientRSAT15..." -Verbose
Write-Host
Get-WindowsCapability -Name Rsat.ServerManager.Tools~~~~0.0.1.0 -Online | Add-WindowsCapability -Online
Write-Verbose "Installing $ClientRSAT16..." -Verbose
Write-Host
Get-WindowsCapability -Name Rsat.StorageMigrationService.Management.Tools~~~~0.0.1.0 -Online | Add-WindowsCapability -Online
Write-Verbose "Installing $ClientRSAT17..." -Verbose
Write-Host
Get-WindowsCapability -Name Rsat.StorageReplica.Tools~~~~0.0.1.0 -Online | Add-WindowsCapability -Online
Write-Verbose "Installing $ClientRSAT18..." -Verbose
Write-Host
Get-WindowsCapability -Name Rsat.SystemInsights.Management.Tools~~~~0.0.1.0 -Online | Add-WindowsCapability -Online
Write-Verbose "Installing $ClientRSAT19..." -Verbose
Write-Host
Get-WindowsCapability -Name Rsat.VolumeActivation.Tools~~~~0.0.1.0 -Online | Add-WindowsCapability -Online
Write-Verbose "Installing $ClientRSAT20..." -Verbose
Write-Host
Get-WindowsCapability -Name Rsat.WSUS.Tools~~~~0.0.1.0 -Online | Add-WindowsCapability -Online
