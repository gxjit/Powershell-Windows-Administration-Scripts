

# Copyright (c) 2019 Gurjit Singh

# This source code is licensed under the MIT license that can be found in
# the accompanying LICENSE file or at https://opensource.org/licenses/MIT.


# Imports
try {
    # Catch All Errors
    $ErrorActionPreference = "Stop"

    Import-Module -Force $PSScriptRoot\Import\Get-AnyKeyTo.psm1
    Import-Module -Force $PSScriptRoot\Import\Get-Admin.psm1
    Import-Module -Force $PSScriptRoot\Import\Set-ScriptStartEnd.psm1

    # Configuration
    $Services2Disable = Import-PowerShellDataFile $PSScriptRoot\Config\Disable-ServicesConf.psd1

}
catch {

    Write-Output ("n`nError Details: `n$($PSItem.Exception)`n" +
        "`n$($PSItem.CategoryInfo)`n")

    Exit
    
}
finally {
    # Clear Flags
    $ErrorActionPreference = "Continue"

}


# Global Vars
$Title = "Configure Services"
$LogFile = "Log.txt"


# Elevate privileges
Get-Admin


# Tucked away Boilerplate code
Set-ScriptStart -Title $Title -LogFile $LogFile


### Start Here

$ErrorActionPreference = "SilentlyContinue"

foreach ($Service in $Services2Disable.keys) {
    Write-Output ("$Service" + " is set to " + "$($Services2Disable.$Service)")
    Set-Service -Name $Service -StartupType $Services2Disable.$Service


}


### End Here


# Tucked away Boilerplate code
Set-ScriptEnd

