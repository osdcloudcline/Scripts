##########################################################
# Main Menu
##########################################################
Function Show-MainMenu{
    [CmdletBinding()]
    param(
    [string]$Title = 'OSD Cloud -  Computers Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)

Clear-Host
Write-Host "======= $Title ======"
Write-Host " 1. OSD Cloud - Initial Setup and Custimizations - Dell Laptops"
Write-Host " 2. OSD Cloud - Initial Setup and Custimizations - Dell Desktops"
Write-Host " 3. OSD Cloud - Initial Setup and Custimizations - Custom Built Desktops + ASUS AMD/Intel Motherboards"
Write-Host " 4. OSD Cloud - Initial Setup and Custimizations - HP Laptops"
Write-Host " 5. OSD Cloud - Initial Setup and Custimizations - ASUS Laptops"
Write-Host " 6. OSD Cloud - Initial Setup and Custimizations - Acer Laptops"
Write-Host " 7. OSD Cloud - Initial Setup and Custimizations - Lenovo Laptops"
Write-Host " 8. OSD Cloud - Initial Setup and Custimizations - ESXI VMs"
Write-Host " 9. Exit PowerShell"
do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
        $DellLaptopsOSDCloudConfigScript = Invoke-WebRequest "https://github.com/osdcloudcline/Scripts/raw/main/OSD%20Cloud/ISO%20Files%20/Laptops/Dell%20/DELLConfigureOSDCloudMain.ps1"
        Invoke-Expression $($DellLaptopsOSDCloudConfigScript.Content)
        }
