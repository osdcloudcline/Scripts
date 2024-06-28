

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
