














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
Get-WindowsFeature -Name RSAT-RDS-Licebsing-Diagnosis-UI | Install-WindowsFeature
Get-WindowsFeature -Name RSAT-RDS-Licebsing-UI | Install-WindowsFeature
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
