# type

    Display information about command type
    Shell builtin
    For each NAME, indicate how it would be interpreted if used as a command name.

|type| meaning|example|
|---|---|---|
|alias|alias definition||
|keyword|shell reserved word|for|
|function|shell function||
|builtin|shell builtin|cd|
|file|disk file||

## Synopsis

`type [-at] <lookup>`

## Options

-a  

    'type' displays all of the places that contain
    an executable named 'file'.  This includes aliases, builtins, and functions, if and only if the -p flag is not also used.
    Some shell internals have alternative commands.

-t

    outputs a single word which 'type'

## Examples

* Type itself is shell built-in

> type type

* Shell built in

> type -a cd

    cd is a shell builtin
    cd is /usr/bin/cd  

* Both built in and executable

> type -a pwd

    pwd is a shell builtin  
    pwd is /bin/pwd  

* Shell function

> type set-title

    set-title is a function  
    set-title ()  
    {  
        ORIG=$PS1;  
        TITLE="\e]2;$@\a";  
        PS1=${ORIG}${TITLE}  
    }  

* Alias

> type ll

    ll is aliased to `ls -alF'

* Not found

> type nonexistant

    -bash: type: nonexistant: not found

## Recipes

* Check if certain command line tool is installed

> type -p convert

    Exit code
    $ echo $?
    0 - installed  
    1 - not installed
