

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
$Title = "Disable Unneeded Network Protocols"
$LogFile = "Log.txt"


# Elevate privileges
Get-Admin


# Tucked away Boilerplate code
Set-ScriptStart -Title $Title -LogFile $LogFile


### Start Here

Write-Output "Disable Various Network Adapter Bindings..."  ###

$Components = @('Client for Microsoft Networks'
                'File and Printer Sharing for Microsoft Networks'
                'QoS Packet Scheduler'
                'Microsoft Network Adapter Multiplexor Protocol'
                'Microsoft LLDP Protocol Driver'
                'Internet Protocol Version 6 (TCP/IPv6)'
                'Link-Layer Topology Discovery Responder'
                'Link-Layer Topology Discovery Mapper I/O Driver'
                )

foreach ($Component in $Components){
    Disable-NetAdapterBinding -Name Ethernet -DisplayName $Component

}

Write-Output "Disable TCP/IPv4 'register connection's addresses in DNS'..."  ###

Set-DNSClient -InterfaceAlias Ethernet -RegisterThisConnectionsAddress $false

Write-Output "Disable IGMP"  ###

Set-NetIPv4Protocol -IGMPLevel None

Write-Output "Disable NetBIOS over TCP/IP"  ###

$adapters = (Get-WmiObject win32_networkadapterconfiguration)

foreach ($adapter in $adapters){
    $null = $adapter.settcpipnetbios(2)

}

### End Here


# Tucked away Boilerplate code
Set-ScriptEnd

