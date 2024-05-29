$Win10Log = "C:\OSD Cloud\Logs\OS Downloads\Windows10.log"
Start-Transcript $Win10Log

Get-Date

Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSD -Force

# Download Zip file region

$ZIPDestination = "$env:userprofile\Downloads\OS\Windows10"


