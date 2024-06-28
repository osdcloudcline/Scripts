
Write-Host '                                                                 ' -BackgroundColor White 
Write-Host '   The following Windows Server OS RSAT Tools will be installed: '
Write-Host '   - Windows Server RSAT Tools                                   ' 
Write-Host '   - RSAT: Feature Tools                                         '
Write-Host '   - RSAT: BITS Server Tools                                     '
Write-Host '   - RSAT: Data Center Bridging LLDP Tools                       ' 
Write-Host '   - RSAT: Clustering Tools                                      '
Write-Host '   - RSAT: Clustering Management Tools                           '
Write-Host '   - RSAT: Clustering PowerShell CLI Tools                       '
Write-Host '   - RSAT: Clustering Automation Server Tools                    '
Write-Host '   - RSAT: Clustering CLI Tools                                  ' 
Write-Host '   - RSAT: Network Load Balancing Tools                          '
Write-Host '   - RSAT: Shielded VM Tools                                     '
Write-Host '   - RSAT: SNMP Tools                                            '
Write-Host '   - RSAT: Storage Migration Service Management Tools            '
Write-Host '   - RSAT: Storage Replica Tools                                 ' 
Write-Host '   - RSAT: System Insights Tools                                 '
Write-Host '   - RSAT: WINS Management Tools                                 '
Write-Host '   - RSAT: Role Tools                                            '
Write-Host '   - RSAT: Active Directory Tools                                '
Write-Host '   - RSAT: Active Directory PowerShell Management Tools          ' 
Write-Host '   - RSAT: Active Directory Domain Server Services               '
Write-Host '                                                                 ' -BackgroundColor White 
pause
Write-Host '                                                                 ' -BackgroundColor White 
Write-Host '   The following Windows Server OS RSAT Tools will be installed: '
Write-Host '   - RSAT: Active Directory Domain Server Services Tools         '
Write-Host '   - RSAT: Active Directory Admin Center Tools                   '
Write-Host '   - RSAT: Active Directory LDS Tools                            '
Write-Host '   - RSAT: Hyper-V Tools                                         '
Write-Host '   - RSAT: Remote Desktop Services Server Tools                  ' 
Write-Host '   - RSAT: Remote Desktop Services Server Gateway Tools          '
Write-Host '   - RSAT: Remote Desktop Services Licensing Diagnosis Tools     '
Write-Host '   - RSAT: Remote Desktop Services Licensing UI Tools            '
Write-Host '   - RSAT: Windows Server Update Services Tools                  '
Write-Host '   - RSAT: Windows Deployment Server Services Tools              ' 
Write-Host '   - RSAT: Active Directory Certificate Server Services Tools    '
Write-Host '   - RSAT: Online Responder Tools                                '
Write-Host '   - RSAT: Active Directory Rights Management Server Tools       '
Write-Host '   - RSAT: DHCP Server Tools                                     '
Write-Host '   - RSAT: DNS Server Tools                                      ' 
Write-Host '   - RSAT: Fax Server Tools                                      '
Write-Host '   - RSAT: File and Storage Services Server Tools                '
Write-Host '   - RSAT: DFS Management Tools                                  '
Write-Host '   - RSAT: File Server Resource Management Tools                 '
Write-Host '   - RSAT: Network File System (NFS) Management Tools            ' 
Write-Host '                                                                 ' -BackgroundColor White 
pause
Write-Host '                                                                 ' -BackgroundColor White 
Write-Host '   The following Windows Server OS RSAT Tools will be installed: '
Write-Host '   - RSAT: Network Controller Management Tools                   '
Write-Host '   - RSAT: NPAS Management Tools                                 '
Write-Host '   - RSAT: Print Server Management Tools                         '
Write-Host '   - RSAT: Remote Access Tools                                   '
Write-Host '   - RSAT: Remote Access Management Tools                        '
Write-Host '   - RSAT: Remote Access PowerShell CLI Tools                    '
Write-Host '   - RSAT: Volume Activation Tools                               '
Write-Host '                                                                 ' -BackgroundColor White 
pause

$RSAT = "Windows Server 2022/2025 RSAT Tools"
Write-Verbose "Installing $RSAT..." -Verbose
Write-Host
Get-WindowsFeature -Name RSAT | Install-WindowsFeature
Get-WindowsFeature -Name RSAT-Feature-Tools | Install-WindowsFeature
Get-WindowsFeature -Name RSAT-Bits-Server | Install-WindowsFeature
Get-WindowsFeature -Name RSAT-DataCenterBridging-LLDP-Tools | Install-WindowsFeature
Get-WindowsFeature -Name RSAT-Clustering | Install-WindowsFeature
Get-WindowsFeature -Name RSAT-Clustering-Mgmt | Install-WindowsFeature
Get-WindowsFeature -Name RSAT-Clustering-PowerShell | Install-WindowsFeature
Get-WindowsFeature -Name RSAT-Clustering-AutomationServer | Install-WindowsFeature
Get-WindowsFeature -Name RSAT-Clustering-CmdInterface | Install-WindowsFeature
Get-WindowsFeature -Name RSAT-NLB | Install-WindowsFeature
Get-WindowsFeature -Name RSAT-Shielded-VM-Tools | Install-WindowsFeature
Get-WindowsFeature -Name RSAT-SNMP | Install-WindowsFeature
Get-WindowsFeature -Name RSAT-SMS | Install-WindowsFeature
Get-WindowsFeature -Name RSAT-Storage-Replica| Install-WindowsFeature
Get-WindowsFeature -Name RSAT-System-Insights | Install-WindowsFeature
Get-WindowsFeature -Name RSAT-WINS | Install-WindowsFeature
Get-WindowsFeature -Name RSAT-Role-Tools | Install-WindowsFeature
Get-WindowsFeature -Name RSAT-AD-Tools | Install-WindowsFeature
Get-WindowsFeature -Name RSAT-AD-PowerShell | Install-WindowsFeature
Get-WindowsFeature -Name RSAT-ADDS | Install-WindowsFeature
Get-WindowsFeature -Name RSAT-AD-AdminCenter | Install-WindowsFeature
Get-WindowsFeature -Name RSAT-ADDS-Tools | Install-WindowsFeature
Get-WindowsFeature -Name RSAT-ADLDS | Install-WindowsFeature
Get-WindowsFeature -Name RSAT-Hyper-V-Tools | Install-WindowsFeature
Get-WindowsFeature -Name RSAT-RDS-Tools | Install-WindowsFeature
Get-WindowsFeature -Name RSAT-RDS-Gateway | Install-WindowsFeature
Get-WindowsFeature -Name RSAT-RDS-Licensing-Diagnosis-UI | Install-WindowsFeature
Get-WindowsFeature -Name RSAT-RDS-Licensing-UI | Install-WindowsFeature
Get-WindowsFeature -Name UpdateServices-RSAT | Install-WindowsFeature
Get-WindowsFeature -Name RSAT-ADCS | Install-WindowsFeature
Get-WindowsFeature -Name RSAT-ADCS-Mgmt | Install-WindowsFeature
Get-WindowsFeature -Name RSAT-Online-Responder | Install-WindowsFeature
Get-WindowsFeature -Name RSAT-ADRMS | Install-WindowsFeature
Get-WindowsFeature -Name RSAT-DHCP | Install-WindowsFeature
Get-WindowsFeature -Name RSAT-DNS-Server | Install-WindowsFeature
Get-WindowsFeature -Name RSAT-Fax | Install-WindowsFeature
Get-WindowsFeature -Name RSAT-File-Services | Install-WindowsFeature
Get-WindowsFeature -Name RSAT-DFS-Mgmt-Con | Install-WindowsFeature
Get-WindowsFeature -Name RSAT-FSRM-Mgmt | Install-WindowsFeature
Get-WindowsFeature -Name RSAT-NFS-Admin | Install-WindowsFeature
Get-WindowsFeature -Name RSAT-NetworkController | Install-WindowsFeature
Get-WindowsFeature -Name RSAT-NPAS | Install-WindowsFeature
Get-WindowsFeature -Name RSAT-Print-Services | Install-WindowsFeature
Get-WindowsFeature -Name RSAT-RemoteAccess | Install-WindowsFeature
Get-WindowsFeature -Name RSAT-RemoteAccess-Mgmt | Install-WindowsFeature
Get-WindowsFeature -Name RSAT-RemoteAccess-PowerShell | Install-WindowsFeature
Get-WindowsFeature -Name RSAT-VA-Tools | Install-WindowsFeature
Get-WindowsFeature -Name WDS-AdminPack | Install-WindowsFeature
