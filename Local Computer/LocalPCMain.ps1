#################################################################
# Main Menu
#################################################################

Function Show-MainMenu{
   [CmdletBinding()]
   param(
   [string]$Title = 'Local PC Administration - Main Menu',
   [string]$Question = 'What type of action do you need to do?'
   )
cls
