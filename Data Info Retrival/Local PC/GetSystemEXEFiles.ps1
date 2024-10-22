 $SystemFileInventoryLog = "C:\Logs\Audit\EXE\SystemFiles.log""
 Start-Transcript -Path $SystemFileInventoryLog
 $prog1 = "C:\Program Files"
 $prog2 = "C:\Program Files (x86)"
 Get-ChildItem -Path "$env:SystemRoot" -Include *EXE* -Exclude $prog1, $prog2 -Recurse -ErrorAction Ignore | Select-Object -Property Name, VersionInfo | Out-GridView 
 Stop-Transcript
