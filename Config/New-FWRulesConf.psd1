

@{
    'Firefox' = @{
        Program  = '%PROGRAMFILES%\Mozilla Firefox\firefox.exe'
        Protocol = 'TCP'
        Package  = ''
        Enabled  = 'True'
    }
    'Chrome' = @{
        Program  = '%PROGRAMFILES(x86)%\Google\Chrome\Application\chrome.exe'
        Protocol = 'TCP'
        Package  = ''
        Enabled  = 'True'
    }    
    'Choco' = @{
        Program  = '%PROGRAMDATA%\chocolatey\choco.exe'
        Protocol = 'TCP'
        Package  = ''
        Enabled  = 'True'
    }
    'Microsoft Edge' = @{
        Program  = 'ANY'
        Protocol = 'TCP'
        Package  = 'S-1-15-2-3624051433-2125758914-1423191267-1740899205-1073925389-3782572162-737981194'
        Enabled  = 'True'
    }
    'Windows SmartScreen' = @{
        Program  = '%WINDIR%\System32\smartscreen.exe'
        Protocol = 'TCP'
        Package  = ''
        Enabled  = 'True'
    }
    'Tor Browser' = @{
        Program  = '%PROGRAMDATA%\chocolatey\lib\tor-browser\tools\tor-browser\Browser\firefox.exe'
        Protocol = 'TCP'
        Package  = ''
        Enabled  = 'True'
    }
    'Tor Router' = @{
        Program  = '%PROGRAMDATA%\chocolatey\lib\tor-browser\tools\tor-browser\Browser\TorBrowser\Tor\tor.exe'
        Protocol = 'TCP'
        Package  = ''
        Enabled  = 'True'
    }
    'youtube-dl' = @{
        Program  = '%PROGRAMDATA%\chocolatey\lib\youtube-dl\tools\youtube-dl.exe'
        Protocol = 'TCP'
        Package  = ''
        Enabled  = 'True'
    }
    'git-remote-http' = @{
        Program  = '%PROGRAMFILES%\Git\mingw64\libexec\git-core\git-remote-http.exe'
        Protocol = 'TCP'
        Package  = ''
        Enabled  = 'True'
    }
    'git-remote-https' = @{
        Program  = '%PROGRAMFILES%\Git\mingw64\libexec\git-core\git-remote-https.exe'
        Protocol = 'TCP'
        Package  = ''
        Enabled  = 'True'
    }
    'Go' = @{
        Program  = '%SYSTEMDRIVE%\Go\bin\go.exe'
        Protocol = 'TCP'
        Package  = ''
        Enabled  = 'False'
    }
    'FileZilla' = @{
        Program  = '%PROGRAMFILES%\FileZilla FTP Client\filezilla.exe'
        Protocol = 'TCP'
        Package  = ''
        Enabled  = 'True'
    }
    'PythonVM' = @{
        Program  = '%SYSTEMDRIVE%\Python37\python.exe'
        Protocol = 'TCP'
        Package  = ''
        Enabled  = 'False'
    }
    'PyPip' = @{
        Program  = '%SYSTEMDRIVE%\Python37\Scripts\pip.exe'
        Protocol = 'TCP'
        Package  = ''
        Enabled  = 'False'
    }
    'qBittorrent' = @{
        Program  = '%PROGRAMFILES%\qBittorrent\qbittorrent.exe'
        Protocol = 'TCP'
        Package  = ''
        Enabled  = 'True'
    }


}

