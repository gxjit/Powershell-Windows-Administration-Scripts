

function Set-ScriptStart {

    param (
        [Parameter(Mandatory = $true)]
        [string]$Title,
        [string]$LogFile

    )

    Clear-Host
    Start-Transcript -Path "$($MyInvocation.PSScriptRoot)\$LogFile" -Append
    $host.ui.RawUI.WindowTitle = $Title
    Write-Output ("`n----------------------------`n" +
        "----------------------------`n")

    Write-Output ("$Title`n$(Get-Date)`n")

}

function Set-ScriptEnd () {
    
    Write-Output ("`n----------------------------`n" +
        "----------------------------`n")
    

    Write-Output "`n"

    foreach ($ErrorVar in $ErrorVars) {
        Write-Output "$($ErrorVar.ErrorRecord.Exception.Message)"
        
    }

    Write-Output "`n"
                  
    Stop-Transcript
    Get-AnyKeyTo -msg "exit"

}

# $RecordErrors[3].ErrorRecord.Exception.Message # Terminating Errors
# $RecordErrors[0].Exception.Message # Non-Terminating Errors
