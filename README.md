# dotfiles for Windows

some useful commands to work with repository:
``` bash
git clone --bare https://github.com/antonkorovaikin/dotWindows.git
alias config='git --git-dir=$HOME/dotWindows/ --work-tree=$HOME' 
config config --local status.showUntrackedFiles no
```