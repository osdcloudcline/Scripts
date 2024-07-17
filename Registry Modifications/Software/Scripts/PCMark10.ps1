


if((Test-Path -LiteralPath "HKCU:\Software\UL\PCMark 10") -ne $true) {  New-Item "HKCU:\Software\UL\PCMark 10" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKCU:\Software\UL\PCMark 10' -Name 'KeyCode' -Value 'PCM10-PRO-222PZ-JN2XD-6UUW7-63QHV' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKCU:\Software\UL\PCMark 10' -Name 'InstallId' -Value '8ba12188-9afe-4772-b727-4bdeaa63ed7b' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKCU:\Software\UL\PCMark 10' -Name 'KeyStatus' -Value '' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKCU:\Software\UL\PCMark 10' -Name 'installed' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKCU:\Software\UL\PCMark 10' -Name 'SelectedLanguage' -Value 'en-US' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKCU:\Software\UL\PCMark 10' -Name 'InstallDir' -Value 'C:\Program Files\UL\PCMark 10\' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKCU:\Software\UL\PCMark 10' -Name 'StorageBenchmarkPaths' -Value @("") -PropertyType MultiString -Force -ea SilentlyContinue;
