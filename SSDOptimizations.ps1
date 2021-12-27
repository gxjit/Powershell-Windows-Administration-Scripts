

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
$Title = "SSD Optimizations"
$LogFile = "Log.txt"


# Elevate privileges
Get-Admin


# Tucked away Boilerplate code
Set-ScriptStart -Title $Title -LogFile $LogFile


### Start Here

# Optimize Page File

$sys = Get-WmiObject Win32_Computersystem –EnableAllPrivileges

$sys.AutomaticManagedPagefile = $false

$sys.put()

$pageFile = Get-WmiObject Win32_PagefileSetting | Where-Object { $_.name -eq "%SYSTEMDRIVE%\pagefile.sys" }


$pageFile.InitialSize = 512 # in MB

$pageFile.MaximumSize = 2048 # in MB

$pageFile.put()

Get-WmiObject WIN32_Pagefile | Select-Object Name, InitialSize, MaximumSize, FileSize


# Optimize Event Logs

$Logs = Get-EventLog -List | select -ExpandProperty Log

foreach ($Log in $Logs) {
    Limit-EventLog -LogName $Log -MaximumSize 20Mb -OverflowAction OverwriteAsNeeded
}



$failureOnly = @("System Integrity", "Other System Events")

foreach ($name in $failureOnly) {
    auditpol /set /subcategory:$name /success:disable /failure:enable
}

$disable = @("Filtering Platform Connection", "Network Policy Server")

foreach ($name in $disable) {
    auditpol /set /subcategory:$name /success:disable /failure:disable
}



### End Here


# Tucked away Boilerplate code
Set-ScriptEnd

