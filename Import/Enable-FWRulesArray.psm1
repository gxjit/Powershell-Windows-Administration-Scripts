

function Enable-FWRulesArray {
    param (
        [Parameter(Mandatory = $true)]
        [array]$RulesArray
    )
    
    begin {

        # Catch All Errors
        $ErrorActionPreference = "Stop"

    }
    
    process {

        foreach ($rule in $RulesArray) {
              
            Set-NetFirewallRule -DisplayName $rule -Enabled True

        
        }
    
    }
    
}

