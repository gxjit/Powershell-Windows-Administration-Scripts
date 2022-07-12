

@{
    'Firefox' = @{
        Program = '%PROGRAMFILES%\Mozilla Firefox\firefox.exe'
        Protocol = 'TCP'
        Package = ''
        Enabled = 'True'
    }
    'Brave' = @{
        Program = '%PROGRAMFILES%\BraveSoftware\Brave-Browser\Application\brave.exe'
        Protocol = 'TCP'
        Package = ''
        Enabled = 'True'
    }
    'BraveUpdate'            = @{
        Program = '%PROGRAMFILES%\BraveSoftware\Update\BraveUpdate.exe'
        Protocol = 'TCP'
        Package = ''
        Enabled = 'True'
    }
    'Chrome' = @{
        Program = '%PROGRAMFILES(x86)%\Google\Chrome\Application\chrome.exe'
        Protocol = 'TCP'
        Package = ''
        Enabled = 'True'
    }
    'MSEdgeChromium' = @{
        Program  = '%PROGRAMFILES(x86)%\Microsoft\Edge\Application\msedge.exe'
        Protocol = 'TCP'
        Package  = ''
        Enabled  = 'True'
    }
    'Choco'                  = @{
        Program = '%PROGRAMDATA%\chocolatey\choco.exe'
        Protocol = 'TCP'
        Package = ''
        Enabled = 'True'
    }
    'Windows SmartScreen' = @{
        Program = '%WINDIR%\System32\smartscreen.exe'
        Protocol = 'TCP'
        Package = ''
        Enabled = 'True'
    }
    'VSCode' = @{
        Program = '%USERPROFILE%\AppData\Local\Programs\Microsoft VS Code\code.exe'
        Protocol = 'TCP'
        Package = ''
        Enabled = 'False'
    }
    'git-cmder'              = @{
        Program = 'D:\PortableApps\Cmder\vendor\git-for-windows\mingw64\bin\git.exe'
        Protocol = 'TCP'
        Package = ''
        Enabled = 'True'
    }
    'git-cmder-ssh'          = @{
        Program = 'D:\PortableApps\Cmder\vendor\git-for-windows\usr\bin\ssh.exe'
        Protocol = 'TCP'
        Package = ''
        Enabled = 'True'
    }
    'git-cmder-remote-https' = @{
        Program = 'D:\PortableApps\Cmder\vendor\git-for-windows\mingw64\libexec\git-core\git-remote-https.exe'
        Protocol = 'TCP'
        Package = ''
        Enabled = 'True'
    }
    'hub-cli'          = @{
        Program = 'D:\PortableApps\bin\hub.exe'
        Protocol = 'TCP'
        Package = ''
        Enabled = 'True'
    }
    'gh-cli'          = @{
        Program = 'D:\PortableApps\bin\gh.exe'
        Protocol = 'TCP'
        Package = ''
        Enabled = 'True'
    }
    'aria2c'          = @{
        Program = 'D:\PortableApps\bin\aria2c.exe'
        Protocol = 'TCP'
        Package = ''
        Enabled = 'True'
    }
    'wget'          = @{
        Program = 'D:\PortableApps\bin\wget.exe'
        Protocol = 'TCP'
        Package = ''
        Enabled = 'True'
    }
    'PythonVM' = @{
        Program = '%USERPROFILE%\AppData\Local\Programs\Python\Python310\python.exe'
        Protocol = 'TCP'
        Package = ''
        Enabled = 'False'
    }
    'NodeJs' = @{
        Program = '%PROGRAMFILES%\nodejs\node.exe'
        Protocol = 'TCP'
        Package = ''
        Enabled = 'False'
    }
    'Go' = @{
        Program = '%SYSTEMDRIVE%\Go\bin\go.exe'
        Protocol = 'TCP'
        Package = ''
        Enabled = 'False'
    }
    'Tor Browser'            = @{
        Program = '%PROGRAMDATA%\chocolatey\lib\tor-browser\tools\tor-browser\Browser\firefox.exe'
        Protocol = 'TCP'
        Package = ''
        Enabled = 'False'
    }
    'Tor Router' = @{
        Program = '%PROGRAMDATA%\chocolatey\lib\tor-browser\tools\tor-browser\Browser\TorBrowser\Tor\tor.exe'
        Protocol = 'TCP'
        Package = ''
        Enabled = 'False'
    }
    'qBittorrentPortable' = @{
        Program = 'D:\PortableApps\qBittorrentPortable\App\qBittorrent\qbittorrent.exe'
        Protocol = 'Any'
        Package = ''
        Enabled = 'False'
    }
    'FileZillaPortable' = @{
        Program = 'D:\PortableApps\FileZillaPortable\App\filezilla\filezilla.exe'
        Protocol = 'TCP'
        Package = ''
        Enabled = 'False'
    }
    'FileZilla SSH (fzsftp)' = @{
        Program = 'D:\PortableApps\FileZillaPortable\App\filezilla\fzsftp.exe'
        Protocol = 'TCP'
        Package = ''
        Enabled = 'False'
    }
    'WinSCP' = @{
        Program = 'D:\PortableApps\WinSCP\WinSCP.exe'
        Protocol = 'TCP'
        Package = ''
        Enabled = 'True'
    }
    'TelegramPortable' = @{
        Program = 'D:\PortableApps\Telegram\Telegram.exe'
        Protocol = 'TCP'
        Package = ''
        Enabled = 'False'
    }
    'RatioMaster.NET' = @{
        Program = 'D:\PortableApps\RatioMaster.NET\RatioMaster.NET.exe'
        Protocol = 'TCP'
        Package = ''
        Enabled = 'True'
    }
    'Zoom' = @{
        Program = '%USERPROFILE%\AppData\Roaming\Zoom\bin\zoom.exe'
        Protocol = 'TCP'
        Package = ''
        Enabled = 'True'
    }
    'OpenSSH' = @{
        Program = '%WINDIR%\System32\OpenSSH\ssh.exe'
        Protocol = 'TCP'
        Package = ''
        Enabled = 'True'
    }
    'Ping' = @{
        Program = '%WINDIR%\System32\PING.EXE'
        Protocol = 'TCP'
        Package = ''
        Enabled = 'True'
    }
    #
    # TODO: Add Ports
    #
    # 'GithubDesktop' = @{
    #     Program = '%USERPROFILE%\AppData\Local\GitHubDesktop\app-2.1.0\GitHubDesktop.exe'
    #     Protocol = 'TCP'
    #     Package = ''
    #     Enabled = 'True'
    # }
    # 'GitHub-git-remote-http' = @{
    #     Program = '%USERPROFILE%\AppData\Local\GitHubDesktop\app-2.1.0\resources\app\git\mingw64\bin\git-remote-http.exe'
    #     Protocol = 'TCP'
    #     Package = ''
    #     Enabled = 'False'
    # }
    # 'GitHub-git-remote-https' = @{
    #     Program = '%USERPROFILE%\AppData\Local\GitHubDesktop\app-2.1.0\resources\app\git\mingw64\bin\git-remote-https.exe'
    #     Protocol = 'TCP'
    #     Package = ''
    #     Enabled = 'True'
    # }
    # 'git-remote-http' = @{
    #     Program = '%PROGRAMFILES%\Git\mingw64\libexec\git-core\git-remote-http.exe'
    #     Protocol = 'TCP'
    #     Package = ''
    #     Enabled = 'False'
    # }
    # 'git-remote-https' = @{
    #     Program = '%PROGRAMFILES%\Git\mingw64\libexec\git-core\git-remote-https.exe'
    #     Protocol = 'TCP'
    #     Package = ''
    #     Enabled = 'False'
    # }
    # 'PythonVM' = @{
    #     Program = '%SYSTEMDRIVE%\Python38\python.exe'
    #     Protocol = 'TCP'
    #     Package = ''
    #     Enabled = 'False'
    # }

}

