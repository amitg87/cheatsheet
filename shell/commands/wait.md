# wait

    Wait for the specified process - provided process ID or a job specification
    If N is not given, all currently active child processes are waited for, and the return code is zero.
    Job/Process must be child process and in Running state

## Synopsis

`wait [n]`

## Example

* Run long running command

> find / -ctime -1 > /dev/null

* Stop command using `CTRL-Z`, jobs will be stopped

* Push jobs to background - jobs starts running

> bg %3

* View running jobs status

> jobs -r

* Wait for job - job-id or process-id

> wait %1
> wait 62237
