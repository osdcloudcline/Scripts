

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
Write-Verbose "Installing $RSAT..." -Verbose
Write-Host

Get-WindowsCapability -Name Rsat.ActiveDirectory.DS-LDS.Tools~~~~0.0.1.0 -Online | Add-WindowsCapability -Online
Get-WindowsCapability -Name Rsat.AzureStack.HCI.Management.Tools~~~~0.0.1.0 -Online | Add-WindowsCapability -Online
Get-WindowsCapability -Name Rsat.CertificateServices.Tools~~~~0.0.1.0 -Online | Add-WindowsCapability -Online
Get-WindowsCapability -Name Rsat.DHCP.Tools~~~~0.0.1.0 -Online | Add-WindowsCapability -Online
Get-WindowsCapability -Name Rsat.Dns.Tools~~~~0.0.1.0 -Online | Add-WindowsCapability -Online
Get-WindowsCapability -Name Rsat.FailoverCluster.Management.Tools~~~~0.0.1.0 -Online | Add-WindowsCapability -Online
Get-WindowsCapability -Name Rsat.FileServices.Tools~~~~0.0.1.0 -Online | Add-WindowsCapability -Online
Get-WindowsCapability -Name Rsat.GroupPolicy.Management.Tools~~~~0.0.1.0 -Online | Add-WindowsCapability -Online
Get-WindowsCapability -Name Rsat.IPAM.Client.Tools~~~~0.0.1.0 -Online | Add-WindowsCapability -Online
Get-WindowsCapability -Name Rsat.LLDP.Tools~~~~0.0.1.0 -Online | Add-WindowsCapability -Online
Get-WindowsCapability -Name Rsat.NetworkController.Tools~~~~0.0.1.0 -Online | Add-WindowsCapability -Online
Get-WindowsCapability -Name Rsat.NetworkLoadBalancing.Tools~~~~0.0.1.0 -Online | Add-WindowsCapability -Online
Get-WindowsCapability -Name Rsat.RemoteAccess.Management.Tools~~~~0.0.1.0 -Online | Add-WindowsCapability -Online
Get-WindowsCapability -Name Rsat.RemoteDesktop.Services.Tools~~~~0.0.1.0 -Online | Add-WindowsCapability -Online
Get-WindowsCapability -Name Rsat.ServerManager.Tools~~~~0.0.1.0 -Online | Add-WindowsCapability -Online
Get-WindowsCapability -Name Rsat.StorageMigrationService.Management.Tools~~~~0.0.1.0 -Online | Add-WindowsCapability -Online
Get-WindowsCapability -Name Rsat.StorageReplica.Tools~~~~0.0.1.0 -Online | Add-WindowsCapability -Online
Get-WindowsCapability -Name Rsat.SystemInsights.Management.Tools~~~~0.0.1.0 -Online | Add-WindowsCapability -Online
Get-WindowsCapability -Name Rsat.VolumeActivation.Tools~~~~0.0.1.0 -Online | Add-WindowsCapability -Online
Get-WindowsCapability -Name Rsat.WSUS.Tools~~~~0.0.1.0 -Online | Add-WindowsCapability -Online
