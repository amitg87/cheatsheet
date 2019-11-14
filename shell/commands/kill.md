# kill

    send a specified signal(default SIGTERM) to a process by PID (or JOBSPEC)
    Kill is a shell builtin for two reasons: it allows job IDs to be used instead of process IDs, and, if you have reached the limit on processes that you can create, you don't have to start a process to kill another one.
    Only the super-user may send signals to other users' processes.

## Synopsis

`kill [-s signal_name] pid ...`
`kill -l [exit_status]`
`kill -signal_name pid ...`
`kill -signal_number pid ...`

## Option

-s signal_name

    A symbolic signal name specifying the signal to be sent instead of the default TERM.
-l [exit_status]

    If no operand is given, list the signal names; otherwise, write the signal name corresponding to exit_status.
-signal_name

    A symbolic signal name specifying the signal to be sent instead of the default TERM.
-signal_number

    A non-negative decimal integer, specifying the signal to be sent instead of the default TERM.

## Example

* Send SIGKILL

> kill pid

* Send specific signal to process

> kill -9 pid
> kill -SIGKILL pid
> kill -KILL pid
> kill -s SIGKILL pid
> kill -s KILL pid

* Print list of all signals

> kill -l

    1) SIGHUP	 2) SIGINT	 3) SIGQUIT	 4) SIGILL
    5) SIGTRAP	 6) SIGABRT	 7) SIGEMT	 8) SIGFPE
    9) SIGKILL	10) SIGBUS	11) SIGSEGV	12) SIGSYS
    13) SIGPIPE	14) SIGALRM	15) SIGTERM	16) SIGURG
    17) SIGSTOP	18) SIGTSTP	19) SIGCONT	20) SIGCHLD
    21) SIGTTIN	22) SIGTTOU	23) SIGIO	24) SIGXCPU
    25) SIGXFSZ	26) SIGVTALRM	27) SIGPROF	28) SIGWINCH
    29) SIGINFO	30) SIGUSR1	31) SIGUSR2

## Notes

* Keyboard shortcuts for signals

    SIGINT CTRL+C
    SIGTSTP CTRL+Z
    SIGQUIT CTRL+\ (backslash)
