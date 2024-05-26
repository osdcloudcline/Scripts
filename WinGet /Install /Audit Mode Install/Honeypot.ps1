$OSDModuleLogs = "C:\OSDCloud\DeploymentLogs\ADV\$env:computername-OSModule.log"
Start-Transcript -Path $OSDModuleLogs

Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSD -Force

Stop-Transcript


