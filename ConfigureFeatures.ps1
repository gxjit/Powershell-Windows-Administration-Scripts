

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
    $Features2Disable = Import-PowerShellDataFile $PSScriptRoot\Config\Disable-FeaturesConf.psd1

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
$Title = "Disable Unneeded Features"
$LogFile = "Log.txt"


# Elevate privileges
Get-Admin


# Tucked away Boilerplate code
Set-ScriptStart -Title $Title -LogFile $LogFile


### Start Here

$ErrorActionPreference = "SilentlyContinue"

$Features = $Features2Disable.Features

foreach ($Feature in $Features){
    Write-Output "Trying to Disable $Feature"
    $null = Disable-WindowsOptionalFeature -FeatureName $Feature -Online

}

### End Here


# Tucked away Boilerplate code
Set-ScriptEnd