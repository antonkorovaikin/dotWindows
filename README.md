# dotfiles for Windows

some useful commands to work with repository:
``` bash
git clone --bare https://github.com/antonkorovaikin/dotWindows.git
alias config='git --git-dir=$HOME/dotWindows.git/ --work-tree=$HOME' 
config config --local status.showUntrackedFiles no
```

## Install needed software 
> Run PowerShell as Administrator
``` powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

choco install git microsoft-windows-terminal vscode
```

## To make task alias working
> Ubuntu WSL required https://docs.microsoft.com/en-us/windows/wsl/install-win10
> Inside Ubuntu:
``` bash
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install task
```
