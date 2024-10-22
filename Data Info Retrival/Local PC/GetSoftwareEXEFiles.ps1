$AppFileInventoryLog = "C:\Logs\Audit\EXE\ApplicationFiles.log"
Start-Transcript -Path $AppFileInventoryLog
$prog1 = "C:\Program Files"
$prog2 = "C:\Program Files (x86)"
Get-ChildItem -Path "$prog1", "$prog2" -Include *EXE* -Exclude $env:SystemRoot -Recurse -ErrorAction SilentlyContinue | Select-Object -Property Name, VersionInfo | Out-GridView
Stop-Transcript
