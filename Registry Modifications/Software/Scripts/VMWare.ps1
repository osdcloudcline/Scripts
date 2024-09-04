




if((Test-Path -LiteralPath "HKLM:\SOFTWARE\WOW6432Node\VMware, Inc.\VMware Workstation\License.ws.17.0.e5.202208") -ne $true) {  New-Item "HKLM:\SOFTWARE\WOW6432Node\VMware, Inc.\VMware Workstation\License.ws.17.0.e5.202208" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\VMware, Inc.\VMware Workstation\License.ws.17.0.e5.202208' -Name 'StartFields' -Value 'Cpt, ProductID, LicenseVersion, LicenseType, LicenseEdition, Option, Epoch' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\VMware, Inc.\VMware Workstation\License.ws.17.0.e5.202208' -Name 'Field2' -Value 'Option, Epoch' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\VMware, Inc.\VMware Workstation\License.ws.17.0.e5.202208' -Name 'Cpt' -Value 'COPYRIGHT (c) VMware, Inc. 1999-2022' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\VMware, Inc.\VMware Workstation\License.ws.17.0.e5.202208' -Name 'ProductID' -Value 'VMware Workstation' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\VMware, Inc.\VMware Workstation\License.ws.17.0.e5.202208' -Name 'LicenseVersion' -Value '17.0' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\VMware, Inc.\VMware Workstation\License.ws.17.0.e5.202208' -Name 'LicenseType' -Value 'Site' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\VMware, Inc.\VMware Workstation\License.ws.17.0.e5.202208' -Name 'LicenseEdition' -Value 'ws.pro.vl' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\VMware, Inc.\VMware Workstation\License.ws.17.0.e5.202208' -Name 'Epoch' -Value '2022-08-01' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\VMware, Inc.\VMware Workstation\License.ws.17.0.e5.202208' -Name 'Option' -Value '19' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\VMware, Inc.\VMware Workstation\License.ws.17.0.e5.202208' -Name 'Data' -Value 'MaxVcpusPerVm=8;mdate=2022-03-21' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\VMware, Inc.\VMware Workstation\License.ws.17.0.e5.202208' -Name 'DataHash' -Value 'a2b7a360-bf9af404-cb47a255-3419e9b0-b799cb32' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\VMware, Inc.\VMware Workstation\License.ws.17.0.e5.202208' -Name 'Hash' -Value '38f406a1-5914d106-d7dcdd2b-ec573e28-24107a07' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\VMware, Inc.\VMware Workstation\License.ws.17.0.e5.202208' -Name 'Serial' -Value 'VV7RA-0YZ0N-M89EP-JFN7C-P62RF' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\VMware, Inc.\VMware Workstation\License.ws.17.0.e5.202208' -Name 'LastModified' -Value '2022-11-24 @ 10:43:23 UTC' -PropertyType String -Force -ea SilentlyContinue;
