# nohup

    Invoke a utility immune to hangups
    The nohup utility invokes utility with its arguments and at this time sets the signal SIGHUP to be ignored.
    Useful to run services in background mode
    If the standard output is a terminal, the standard output is appended to the file nohup.out in the current directory. If standard error is a terminal, it is directed to the same place as the standard output.

## Synopsis

`nohup utility [arguments]`

## Example

* Preventing hangup:

> nohup ./periodic.sh &
