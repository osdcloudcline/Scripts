$app1 = "AI Cursor Editor"

Write-Host "Checking for and processing update: $app1..." -ForegroundColor Cyan
winget upgrade --id CursorAI,Inc.Cursor
