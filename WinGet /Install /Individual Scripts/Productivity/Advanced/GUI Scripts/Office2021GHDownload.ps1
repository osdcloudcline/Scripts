Start-Transcript -Path "C:\Logs\Powershell\Advanced\Productivity\GUI\GHDownload\$env:computername-Office2021Install.log"

Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSD -Force

$OfficeGHdownloads = "C:\OSDCloud\GitHub\downloads\Office" 
mkdir $OfficeGHdownloads
$Office2021FilesUrl = "https://github.com/osdcloudcline/Software/raw/main/Productivity/Microsoft/Office%202021/OSDCloud-Office2021.zip"
Save-WebFile -SourceUrl $Office2021FilesUrl -DestinationDirectory $OfficeGHdownloads
Expand-Archive -Path "$OfficeGHdownloads\OSDCloud-Office2021.zip" -DestinationPath $OfficeGHdownloads
