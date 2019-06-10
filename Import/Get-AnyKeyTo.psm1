

function Get-AnyKeyTo ($msg) {
    
    Write-Output "Press any key to $msg..."
    $null = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")

}

