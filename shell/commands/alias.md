# alias

    Define or display aliases.  
    Without arguments, `alias` prints the list of aliases on standard output.
    Otherwise, an alias is defined for each NAME whose VALUE is given. A trailing space in VALUE causes the next word to be checked for alias substitution when the alias is expanded.
    By default aliases are only created in same shell only for lifetime of shell.
    To create permanent aliases - create them in .bashrc/.bash_profile
    shell builtin

## Synopsis

`alias [-p] [name[=value] ... ]`

## Options

-p
Print all defined aliases in a reusable format

## Examples

* List all alias:

> alias

    alias egrep='egrep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias grep='grep --color=auto'
    alias l='ls -CF'
    alias la='ls -A'
    alias ll='ls -alF'
    alias ls='ls --color=auto'
    alias rmr='rm -r'

* Creating alias

> alias rmr='rm -r'

* Viewing alias

> type rmr

    rmr is aliased to `rm -r'

## Recipes

* Commonly used aliases

> Files

    alias l="ls"
    alias la="ls -A"
    alias ls="ls -GFh"
    alias ll="ls -l"
    alias lt="ls -lrt"
    alias lS="ls -lrS"
    alias lp="ls -lF"
    alias l1="ls -1"
    alias l.='ls -d .*'

    alias tailf="tail -f"

    alias cd.="cd .."
    alias cd.2="cd ../.."
    alias cd.3="cd ../../.."
    
    # do not delete / or prompt if deleting more than 3 files at a time #
    alias rm='rm -I --preserve-root'

    alias ports='netstat -tulanp'

    alias df='df -H'
    alias du='du -ch'
