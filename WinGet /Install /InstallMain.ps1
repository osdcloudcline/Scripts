##########################################################
# Main Menu
##########################################################
Function Show-MainMenu{
    [CmdletBinding()]
    param(
    [string]$Title = 'Software Installation Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)

Clear-Host
Write-Host "======= $Title ======"
Write-Host " 1. Install Standard Software Configuration"
Write-Host " 2. Install Advanced Software Configuration"
Write-Host " 3. Install Corporate Software Configuration"
Write-Host " 4. Install VDI Software Configuration"
Write-Host " 5. Install Management PC Software Configuration"
Write-Host " 6. Install Honeypot Configuration"
Write-Host " 7. Install IT Tech Configuration"
Write-Host " 8. Individual Install Scripts"
Write-Host " 9. Manufacturer Specific Scripts"
Write-Host " 10. Return to Winget Software Main Menu"
Write-Host " 11. Exit PowerShell"
