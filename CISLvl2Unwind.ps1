#Unwind CIS Hardeing Level 2


#Registry Changes


#Allow Camera Use
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Camera" -Name "AllowCamera" -Value 1

#Allow Printer Install
Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\Print\Providers\LanMan Print Services\Servers" -Name "AddPrinterDrivers" -Value 0

#Enable Font Providers
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\System" -Name "Enablefontproviders" -Value 1

#Enable Printing over HTTP
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows NT\Printers" -Name "DisableHTTPPrinting" -Value 0

#Enable Location
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\LocationAndSensors" -Name "Disablelocation" -Value 0

#Enable Windows Store
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\WindowsStore" -Name "RemoveWindowsStore" -Value 0 -Force

#Enable Access to the Store
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\Explorer" -Name "NoUseStoreOpenWith" -Value 0


#Service Changes

#Enable Remote Registry
Set-Service -Name RemoteRegistry -StartupType Automatic
Start-Service -Name RemoteRegistry

#Enable Spooler
Set-Service -Name Spooler -StartupType Automatic
Start-Service -Name Spooler



