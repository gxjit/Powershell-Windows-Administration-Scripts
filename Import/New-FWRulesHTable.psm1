

function New-FWRulesHTable {
    param (
        [Parameter(Mandatory = $true)]
        [hashtable]$RulesHTable
    )
    
    begin {
        
        # Catch All Errors
        $ErrorActionPreference = "Stop"

    }
    
    process {
        foreach ($rule in $RulesHTable.Keys) {

            $ParamTable = @{
                DisplayName = $rule
                Program     = $([System.Environment]::ExpandEnvironmentVariables($($RulesHTable.$rule.Program)))
                Protocol    = $RulesHTable.$rule.Protocol
                Enabled     = $RulesHTable.$rule.Enabled
                Direction   = 'Outbound'
                Action      = 'Allow'
                Profile     = 'Any'
            }

            if ($RulesHTable.$rule.Package -ne ''){
                $ParamTable.Add('Package', $RulesHTable.$rule.Package)
            }

            $null = New-NetFirewallRule @ParamTable
            # | Format-List -Property DisplayName,Status
            # 

        }
    
    }
    
}

