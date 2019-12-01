# trap

    The command ARG is to be read and executed when the shell receives signal(s) SIGNAL_SPEC.
    If a SIGNAL_SPEC is DEBUG, ARG is executed after every simple command. Debug signal is used by debugger for debugging.

## Synopsis

`trap [-lp] [arg signal_spec ...]`

## Option

-l

    prints a list of signal names and their corresponding numbers
-p [SIGNAL_SPEC]

    Print command associated with signal.
    If no arguments are supplied or if only `-p' is given, trap prints the list of commands associated with each signal.

## Example

* Run `trap.sh` - identify PID of process
* Send signal to the process using PID

> kill -2 PID
> kill -9 PID

* Associate 

> trap killed KILL

* Print list of signal

> trap -l

* Print command associate to signal

> trap -p KILL

* Ignoring signal

> trap : 1 2
> trap '' 1 2