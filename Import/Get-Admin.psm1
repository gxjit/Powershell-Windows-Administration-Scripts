
function Get-Admin() {

    Begin {
    
        # Catch All Errors
        $ErrorActionPreference = "Stop"

    }
    
    process {
        if (!(([Security.Principal.WindowsIdentity]::GetCurrent()).Owner.Value.Equals("S-1-5-32-544"))) {
        
            try {

                $ProcParam = @{
                    FilePath = 'powershell'
                    ArgumentList = "-File `"$($MyInvocation.PSCommandPath)`" -NoExit"
                    Verb = 'runAs'

                }

                Start-Process @ProcParam

            }
            catch {
    
                Write-Output ("`n`nError: `n$($PSItem.Exception)`n" +
                    "`n$($PSItem.CategoryInfo)`n")
                
                # requires Get-AnyKeyTo.psm1 module
                Get-AnyKeyTo -msg "exit"
            }
            finally {
                $ErrorActionPreference = "Continue"
                Exit
            }
        }
    
    }
    
}

