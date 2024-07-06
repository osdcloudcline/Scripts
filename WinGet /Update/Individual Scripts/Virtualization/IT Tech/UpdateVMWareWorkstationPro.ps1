$app1 = "VMWare Workstation Professional"

Write-Host "Processing updates: $app1 on $env:computername ..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan  
choco upgrade vmwareworkstation --params='"/SERIALNUMBER=VV7RA-0YZ0N-M89EP-JFN7C-P62RF"' -y
