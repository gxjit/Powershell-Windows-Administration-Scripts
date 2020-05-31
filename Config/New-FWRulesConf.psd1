

@{
    'Firefox'                = @{
        Program  = '%PROGRAMFILES%\Mozilla Firefox\firefox.exe'
        Protocol = 'TCP'
        Package  = ''
        Enabled  = 'True'
    }
    'Chrome'                 = @{
        Program  = '%PROGRAMFILES(x86)%\BraveSoftware\Brave-Browser\Application\brave.exe'
        Protocol = 'TCP'
        Package  = ''
        Enabled  = 'True'
    }
    'Brave'                  = @{
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
    'Microsoft Edge'         = @{
        Program  = 'ANY'
        Protocol = 'TCP'
        Package  = 'S-1-15-2-3624051433-2125758914-1423191267-1740899205-1073925389-3782572162-737981194'
        Enabled  = 'True'
    }
    'Windows SmartScreen'    = @{
        Program  = '%WINDIR%\System32\smartscreen.exe'
        Protocol = 'TCP'
        Package  = ''
        Enabled  = 'True'
    }
    'VSCode'                 = @{
        Program  = '%USERPROFILE%\AppData\Local\Programs\Microsoft VS Code\code.exe'
        Protocol = 'TCP'
        Package  = ''
        Enabled  = 'False'
    }
    'git-cmder' = @{
        Program  = '%SYSTEMDRIVE%\Cmder\vendor\git-for-windows\mingw64\bin\git.exe'
        Protocol = 'TCP'
        Package  = ''
        Enabled  = 'True'
    }
    'git-cmder-ssh'          = @{
        Program  = '%SYSTEMDRIVE%\Cmder\vendor\git-for-windows\usr\bin\ssh.exe'
        Protocol = 'TCP'
        Package  = ''
        Enabled  = 'True'
    }
    'git-cmder-remote-https' = @{
        Program  = '%SYSTEMDRIVE%\Cmder\vendor\git-for-windows\mingw64\libexec\git-core\git-remote-https.exe'
        Protocol = 'TCP'
        Package  = ''
        Enabled  = 'True'
    }
    'hub-cli-cmder'          = @{
        Program  = '%SYSTEMDRIVE%\Cmder\bin\hub.exe'
        Protocol = 'TCP'
        Package  = ''
        Enabled  = 'True'
    }
    'PythonVM'               = @{
        Program  = '%USERPROFILE%\AppData\Local\Programs\Python\Python38\python.exe'
        Protocol = 'TCP'
        Package  = ''
        Enabled  = 'False'
    }
    'NodeJs' = @{
        Program  = '%PROGRAMFILES%\nodejs\node.exe'
        Protocol = 'TCP'
        Package  = ''
        Enabled  = 'False'
    }
    'Go'                     = @{
        Program  = '%SYSTEMDRIVE%\Go\bin\go.exe'
        Protocol = 'TCP'
        Package  = ''
        Enabled  = 'False'
    }
    'FileZilla'              = @{
        Program  = '%PROGRAMFILES%\FileZilla FTP Client\filezilla.exe'
        Protocol = 'TCP'
        Package  = ''
        Enabled  = 'False'
    }
    'Tor Browser' = @{
        Program  = '%PROGRAMDATA%\chocolatey\lib\tor-browser\tools\tor-browser\Browser\firefox.exe'
        Protocol = 'TCP'
        Package  = ''
        Enabled  = 'False'
    }
    'Tor Router' = @{
        Program  = '%PROGRAMDATA%\chocolatey\lib\tor-browser\tools\tor-browser\Browser\TorBrowser\Tor\tor.exe'
        Protocol = 'TCP'
        Package  = ''
        Enabled  = 'False'
    }
    'qBittorrent' = @{
        Program  = '%PROGRAMFILES%\qBittorrent\qbittorrent.exe'
        Protocol = 'TCP'
        Package  = ''
        Enabled  = 'False'
    }
    # 'OpenSSH'     = @{
    #     Program  = '%WINDIR%\System32\openssh\ssh.exe'
    #     Protocol = 'TCP'
    #     Package  = ''
    #     Enabled  = 'False'
    # }
    # 'GithubDesktop'           = @{
    #     Program  = '%USERPROFILE%\AppData\Local\GitHubDesktop\app-2.1.0\GitHubDesktop.exe'
    #     Protocol = 'TCP'
    #     Package  = ''
    #     Enabled  = 'True'
    # }
    # 'GitHub-git-remote-http'  = @{
    #     Program  = '%USERPROFILE%\AppData\Local\GitHubDesktop\app-2.1.0\resources\app\git\mingw64\bin\git-remote-http.exe'
    #     Protocol = 'TCP'
    #     Package  = ''
    #     Enabled  = 'False'
    # }
    # 'GitHub-git-remote-https' = @{
    #     Program  = '%USERPROFILE%\AppData\Local\GitHubDesktop\app-2.1.0\resources\app\git\mingw64\bin\git-remote-https.exe'
    #     Protocol = 'TCP'
    #     Package  = ''
    #     Enabled  = 'True'
    # }
    # 'git-remote-http'         = @{
    #     Program  = '%PROGRAMFILES%\Git\mingw64\libexec\git-core\git-remote-http.exe'
    #     Protocol = 'TCP'
    #     Package  = ''
    #     Enabled  = 'False'
    # }
    # 'git-remote-https'        = @{
    #     Program  = '%PROGRAMFILES%\Git\mingw64\libexec\git-core\git-remote-https.exe'
    #     Protocol = 'TCP'
    #     Package  = ''
    #     Enabled  = 'False'
    # }
    # 'PythonVM'                = @{
    #     Program  = '%SYSTEMDRIVE%\Python38\python.exe'
    #     Protocol = 'TCP'
    #     Package  = ''
    #     Enabled  = 'False'
    # }

}

