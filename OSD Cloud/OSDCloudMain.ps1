##########################################################
# Main Menu
##########################################################
Function Show-MainMenu{
    [CmdletBinding()]
    param(
    [string]$Title = 'OSD Cloud - Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)


Write-Host " 1. OSD Cloud - Initial Setup and Custimizations - Dell Laptops"
Write-Host " 2. OSD Cloud - Initial Setup and Custimizations - Dell Desktops"
Write-Host " 3. OSD Cloud - Initial Setup and Custimizations - Custom Built Desktops + ASUS AMD/Intel Motherboards"
Write-Host " 4. OSD Cloud - Initial Setup and Custimizations - HP Laptops"
Write-Host " 5. OSD Cloud - Initial Setup and Custimizations - ASUS Laptops"
Write-Host " 6. OSD Cloud - Initial Setup and Custimizations - Acer Laptops"
Write-Host " 7. OSD Cloud - Initial Setup and Custimizations - Lenovo Laptops"
Write-Host " 8. OSD Cloud - Initial Setup and Custimizations - Virtual Machines"
Write-Host " 9. OSD Cloud - Initial Setup and Custimizations - MS Surface Devices"
