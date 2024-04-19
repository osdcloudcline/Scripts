Function Get-OSDCloudMount(){
$OSDCloudMountQues = Read-Host -Prompt 'Is the OSD Cloud boot.wim already mounted?'
If(($OSDCloudMountQues -eq "Y") -or ($OSDCloudMountQues -eq "y") -or ($OSDCloudMountQues -eq "Yes") -or ($OSDCloudMountQues -eq "yes")){
$OSDCloudMountDir = Read-Host -Prompt 'Please provide current mount directory'
}
ElseIf(($OSDCloudMountQues -eq "N") -or ($OSDCloudMountQues -eq "n") -or ($OSDCloudMountQues -eq "No") -or ($OSDCloudMountQues -eq "no")){
$OSDCloudWIM = Read-Host 'Please Specify the location of your OSDCloud boot.wim file'
$mountdir = Read-Host 'Please specify the mount point'
Write-Host "Mounting OSDCloud boot.wim..." -ForegroundColor Cyan
Mount-WindowsImage -ImagePath "$OSDCloudWIM\boot.wim" -Index 1 -Path $mountdir
Write-Host "Mounting completed..."
}
}


Function Get-OSDCloudDismount(){
$mountdir = Read-Host -Prompt 'Please provide mount directory'
Dismount-WindowsImage -Path $mountdir -Save

}
