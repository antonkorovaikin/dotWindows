# powerline
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

colorize_git_branch() {
    changesCount=$(git status -s 2> /dev/null | awk 'END{ print NR }')

    if [ $changesCount -eq 0 ]
    then
        echo 36 
    else
        echo 35 
    fi;
}

export PS1="\n\[\033[01;32m\]\u \[\033[01;34m\]\w \[\033[01;\$(colorize_git_branch)m\]\$(parse_git_branch) \[\033[00m\]\$ "

# Path
if [[ -f "/c/Program Files (x86)/Microsoft Visual Studio/2019/Professional/Common7/IDE" ]]; then
    PATH="$PATH:/c/Program Files (x86)/Microsoft Visual Studio/2019/Professional/Common7/IDE"
fi
if [[ -f '/c/Program Files/Mozilla Firefox' ]]; then
    PATH="$PATH:/c/Program Files/Mozilla Firefox"
fi
if [[ -f $HOME/.bin ]]; then
    PATH="$PATH:$HOME/.bin"
fi

# Shortcuts
shopt -s cdable_vars
export bin="$HOME/.bin"

# Other files
if [[ -f ~/.bash_aliases ]]; then
    source ~/.bash_aliases
fi

if [[ -f ~/.bashrc_local ]]; then
    source ~/.bashrc_local
fi
