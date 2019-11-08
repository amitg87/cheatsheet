# history

    Display the history list with line numbers
    shell builtin

## Config

### Environment variables

|variable|meaning|value|
|--|--|--|
|HISTSIZE|number of commands to maintain in history|100000|
|HISTFILESIZE|file size restriction|100000|
|HISTCONTROL|history control - ignore consecutive duplicate commands, ignore commands starting with space|ignoredups:ignorespace|
|HISTIGNORE|ignore commands|ls*:history*|
|HISTTIMEFORMAT|time format with each command|"%h %d %H:%M:%S >"|

### Files

    ~/.bash_history 

## Option

-c

    clear history file

-d index

    delete index from history

## Usage

* View history

> history

* View last 5 commands

> history 5

* Delete entry from history

> history -d 11490

* Repeat last command

> !!

* Recent command starting with `term`

> !term

* Clear history

> history -c

## Tips

* Pattern search through history

> history | grep -i "ssh"

* Search through history - reverse search (most recent first) - type (ctrl+r) then term to search for

* Scroll through history
  * arrow up key or (ctrl+p) - previous command
  * arrow down key or (ctrl+n) - next command
