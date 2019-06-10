
function Reset-Firewall() {
    
    begin {

        # Catch All Errors
        $ErrorActionPreference = "Stop"

    }
    
    process {

        try {

            (New-Object -ComObject HNetCfg.FwPolicy2).RestoreLocalFirewallDefaults()
            
        }
        catch {

            Write-Output "Error occured while trying to reset Firewall"
            
        }

    }
    
}

