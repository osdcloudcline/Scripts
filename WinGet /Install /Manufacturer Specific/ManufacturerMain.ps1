##########################################################
# Main Menu
##########################################################
Function Show-MainMenu{
    [CmdletBinding()]
    param(
    [string]$Title = 'Manufacturer-Specific Software Installation Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)

Clear-Host
Write-Host "======= $Title ======"
Write-Host " 1. AMD Chipsets and Software"
Write-Host " 2. ASUS Computers"
Write-Host " 3. Acer Computers"
Write-Host " 4. Dell Computers"
Write-Host " 5. HP Computers"
Write-Host " 6. Intel Chipsets and Software"
Write-Host " 7. Lian-Li Software"
Write-Host " 8. Lenovo Computers"
Write-Host " 9. Return to Main"


