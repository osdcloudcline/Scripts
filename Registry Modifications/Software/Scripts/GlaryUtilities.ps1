$Software1 = "Glary Utilities Professional"

Write-Verbose "Importing Client OS SOFTWARE: $Software1 to $env:computername..." -Verbose

if((Test-Path -LiteralPath "HKLM:\SOFTWARE\WOW6432Node\Glarysoft\Glary Utilities") -ne $true) {  New-Item "HKLM:\SOFTWARE\WOW6432Node\Glarysoft\Glary Utilities" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Glarysoft\Glary Utilities' -Name 'ProductID' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Glarysoft\Glary Utilities' -Name 'ChannelNumber' -Value '10000' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Glarysoft\Glary Utilities' -Name 'Date' -Value '45612.7503819444' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Glarysoft\Glary Utilities' -Name 'AURunType' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Glarysoft\Glary Utilities' -Name 'AUTimeSpan' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Glarysoft\Glary Utilities' -Name 'ProductStatue' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Glarysoft\Glary Utilities' -Name 'UpgradeTags' -Value '' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Glarysoft\Glary Utilities' -Name 'UpdateFile' -Value '' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Glarysoft\Glary Utilities' -Name 'RefVersion' -Value '2024-11-11' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Glarysoft\Glary Utilities' -Name 'UpdateDate' -Value '2024-11-11' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Glarysoft\Glary Utilities' -Name 'LngVersion' -Value '2024-11-11' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Glarysoft\Glary Utilities' -Name 'Version' -Value '6.18.0.22' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Glarysoft\Glary Utilities' -Name 'RootDir' -Value 'C:\Program Files (x86)\Glary Utilities\' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Glarysoft\Glary Utilities' -Name 'RegName' -Value 'Jasi2169@glarysoft.com' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Glarysoft\Glary Utilities' -Name 'RegCode' -Value '29HGEJ-O564RN-O8SE01-0HLPU3-0X5QDT' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Glarysoft\Glary Utilities' -Name 'ChannelNo' -Value '1000' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Glarysoft\Glary Utilities' -Name 'AULastRunDate' -Value '45612.750394' -PropertyType String -Force -ea SilentlyContinue;
