# set

    Set/Change the value of shell attributes and positional parameters, or display the names and values of shell variables.
    Using + rather than - causes these flags to be turned off. The flags can also be used upon invocation of the shell.

## Synopsis

`set [options] [arg ...]`

## Options

-n

    Read commands but do not execute them. Useful for syntax checking.
-v

    Displays all lines as they are read.
-x

    Displays all commands and their arguments as they execute. Also known as the shell tracing option.
-m

    Job control is enabled.
-H

    Enable ! style history substitution.  This flag is on by default when the shell is interactive.
-B

    The shell will perform brace expansion
-C

    If set, disallow existing regular files to be overwritten by redirection of output.

## Examples

* The current set of flags may be found in $-.

> echo $-

    himBH

* Enable Shell Trace

> set -x
> echo $-

    himxBH

* Disable shell trace

> set +x
> echo $-

    himBH
