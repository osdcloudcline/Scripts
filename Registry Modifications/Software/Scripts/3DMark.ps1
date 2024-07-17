


if((Test-Path -LiteralPath "HKCU:\Software\UL\3DMark") -ne $true) {  New-Item "HKCU:\Software\UL\3DMark" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKCU:\Software\UL\3DMark' -Name 'KeyCode' -Value '3DM-TICFT-20261214-222PZ-LUF2M-HPJ6V-WFE57' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKCU:\Software\UL\3DMark' -Name 'installed' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKCU:\Software\UL\3DMark' -Name 'SelectedLanguage' -Value 'en-US' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKCU:\Software\UL\3DMark' -Name 'InstallId' -Value '99e89342-34c8-4d6c-9f98-7350880cd423' -PropertyType String -Force -ea SilentlyContinue;
