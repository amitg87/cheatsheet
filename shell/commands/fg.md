# fg

    Move job to the foreground.
    shell builtin - job control command
    When executed without arguments, it will take the most recent background job to the foreground.

## Synopsis

`fg [job_spec]`

## Example

* View list of jobs

> jobs

[1]   Running                 bash download-file.sh &
[2]-  Running                 evolution &
[3]+  Done                    nautilus .

* Bring most recent job in queue to foreground

> fg

* Bring specific job in queue to foreground

> fg %2
