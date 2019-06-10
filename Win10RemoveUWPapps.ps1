

# Copyright (c) 2019 Gurjit Singh

# This source code is licensed under the MIT license that can be found in
# the accompanying LICENSE file or at https://opensource.org/licenses/MIT.


# Imports
try {
    # Catch All Errors
    $ErrorActionPreference = "Stop"

    Import-Module -Force $PSScriptRoot\Import\Get-AnyKeyTo.psm1
    Import-Module -Force $PSScriptRoot\Import\Set-ScriptStartEnd.psm1

    # Configuration
    $Apps2Remove = Import-PowerShellDataFile $PSScriptRoot\Config\Remove-JunkAppsConf.psd1

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
$Title = "Remove Junk Apps"
$LogFile = "Log.txt"


# Tucked away Boilerplate code
Set-ScriptStart -Title $Title -LogFile $LogFile


### Start Here

$JunkApps = $Apps2Remove.JunkApps

$ErrorActionPreference = "SilentlyContinue"

foreach ($JunkApp in $JunkApps){
    Write-Output "Removing $JunkApp"
    Get-AppxPackage -Name $JunkApp | Remove-AppxPackage
    # Get-AppxPackage -Name $JunkApp | Remove-AppxPackage -AllUsers
    # Remove-AppxPackage -Package $JunkApp

}

### End Here


# Tucked away Boilerplate code
Set-ScriptEnd

