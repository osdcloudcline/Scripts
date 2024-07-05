$app1 = "FileZilla"
$app2 = "PuTTy"
$app1 = "WinSCP"

Write-Host "Processing updates: $app1 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
$FZSQLFile = "C:\Users\$env:username\AppData\Roaming\FileZilla\queue.sqlite3"
$FZSQLDetect = [System.IO.File]::Exists("C:\Users\$env:username\AppData\Roaming\FileZilla\queue.sqlite3")
If($FZSQLDetect -eq $true){
Remove-Item -Path $FZSQLFile -Force
choco upgrade filezilla  -y
}
Elseif ($FZSQLDetect -eq $false){
choco upgrade filezilla  -y
}

Write-Host "Processing updates: $app2 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id PuTTY.PuTTY

Write-Host "Processing updates: $app3 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id WinSCP.WinSCP

