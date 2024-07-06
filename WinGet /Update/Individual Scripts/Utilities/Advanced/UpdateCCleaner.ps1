$Utilitiesapp1 = "CCleaner"

Write-Verbose "Processing update: $Utilitiesapp1..." -Verbose
winget upgrade --id Piriform.CCleaner
