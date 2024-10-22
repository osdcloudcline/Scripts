$AppFileInventoryLog = "C:\Logs\Audit\DLL\ApplicationFiles.log"
Start-Transcript -Path $AppFileInventoryLog
$prog1 = "C:\Program Files"
$prog2 = "C:\Program Files (x86)"
Get-ChildItem -Path "$prog1", "$prog2" -Include *DLL* -Exclude $env:SystemRoot -Recurse -ErrorAction SilentlyContinue | Select-Object -Property Name, VersionInfo | Out-GridView
Stop-Transcript
