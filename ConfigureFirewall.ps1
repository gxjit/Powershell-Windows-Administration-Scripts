

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
    Import-Module -Force $PSScriptRoot\Import\Reset-Firewall.psm1
    Import-Module -Force $PSScriptRoot\Import\Enable-FWRulesArray.psm1
    Import-Module -Force $PSScriptRoot\Import\New-FWRulesHTable.psm1

    # Configuration
    $Rules2Enable = Import-PowerShellDataFile $PSScriptRoot\Config\Enable-FWRulesConf.psd1
    $Rules2Add = Import-PowerShellDataFile $PSScriptRoot\Config\New-FWRulesConf.psd1

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
$Title = "Configure Firewall"
$LogFile = "Log.txt"


# Elevate privileges
Get-Admin


# Tucked away Boilerplate code
Set-ScriptStart -Title $Title -LogFile $LogFile


### Start Here

Write-Output "Reset FW..."  ###

Reset-Firewall

Write-Output "Enable Profiles..."   ###

Set-NetFirewallProfile -Profile Domain, Public, Private -Enabled True

Write-Output "Configure Profiles..."    ###

$ProfileParam = @{
    All                   = $true
    AllowInboundRules     = 'False'
    NotifyOnListen        = 'True'
    DefaultInboundAction  = 'Block'
    DefaultOutboundAction = 'Block'

}

Set-NetFirewallProfile @ProfileParam

Write-Output "Set All interfaces to public profile..."  ###
	
Set-NetConnectionProfile -InterfaceAlias * -NetworkCategory Public

Write-Output "Disable all existing rules"   ###

Set-NetFirewallRule -DisplayName * -Enabled False

Write-Output "Enable Core Networking Rules..."  ###

Enable-FWRulesArray -RulesArray $Rules2Enable.Rules

Write-Output "Add New Rules..." ###

New-FWRulesHTable -RulesHTable $Rules2Add

### End Here


# Tucked away Boilerplate code
Set-ScriptEnd

