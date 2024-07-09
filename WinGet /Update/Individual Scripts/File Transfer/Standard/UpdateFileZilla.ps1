$app1 = "FileZilla"

Write-Host "Checking for and processing update: $app1 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
$FZSQLFile = "C:\Users\$env:username\AppData\Roaming\FileZilla\queue.sqlite3"
$FZSQLDetect = [System.IO.File]::Exists("C:\Users\$env:username\AppData\Roaming\FileZilla\queue.sqlite3")
If($FZSQLDetect -eq $true){
Remove-Item -Path $FZSQLFile -Force
choco upgrade filezilla  -y
}
Elseif ($FZSQLDetect -eq $false){
choco upgrade filezilla  -y
}
