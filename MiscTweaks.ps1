

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
$Title = "Misc Tweaks"
$LogFile = "Log.txt"


# Elevate privileges
Get-Admin


# Tucked away Boilerplate code
Set-ScriptStart -Title $Title -LogFile $LogFile


### Start Here

Get-ItemProperty HKLM:\SYSTEM\CurrentControlSet\Enum\HID\*\*\Device` Parameters FlipFlopWheel -EA 0 | ForEach-Object { Set-ItemProperty $_.PSPath FlipFlopWheel 1 }

# Reverse above tweak
# Get-ItemProperty HKLM:\SYSTEM\CurrentControlSet\Enum\HID\*\*\Device` Parameters FlipFlopWheel -EA 1 | ForEach-Object { Set-ItemProperty $_.PSPath FlipFlopWheel 0 }



### End Here


# Tucked away Boilerplate code
Set-ScriptEnd

