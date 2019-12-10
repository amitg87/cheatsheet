# history

    Display the history list with line numbers
    shell builtin

## Config

### Environment variables

|variable|meaning|value|
|--|--|--|
|HISTSIZE|number of commands to maintain in history. If set to 0, history will be disabled|100000|
|HISTFILE|history file to be used. if set to null, history will be disabled|
|HISTFILESIZE|file size restriction. If set to 0, history will be disabled|100000|
|HISTCONTROL|history control - ignore consecutive duplicate commands, ignore commands starting with space|ignoredups:ignorespace|
|HISTIGNORE|colon separated list of commands to ignore while remembering history|ls*:history*:cd|
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

* Repeat command from history - command number 13889 - `!n`

> !13889

* Repeat recent command - second last command - `!-n`

> !-2

* Recent command starting with `term`

> !term

* Use last word from previous command

> ls file.txt
> cat !$

    will cat file.txt

* Use first word from previous command

> ls file.txt
> cat !^

* Clear history

> history -c

## Tips

* Pattern search through history

> history | grep -i "ssh"

* Search through history - reverse search (most recent first) - type (ctrl+r) then term to search for

* Scroll through history
  * arrow up key or (ctrl+p) - previous command
  * arrow down key or (ctrl+n) - next command

* History control - HISTCONTROL
  * "erasedups" erase duplicates : if same command is executed in past, forget past command and remember this one.
  * "ignoredups" ignore series of duplicate commands. all dups appear as one entry in history.

* Ouput format control - HISTTIMEFORMAT
  * Print time with each command '%F %T'
