# jobs

    Display status of jobs.
    Without options, the status of all active jobs is displayed.

## Synopsis

`jobs [-lrs] [jobspec ...]`

## Options

-l

    lists process IDs, status
-r

    restrict output to running jobs
-s

    restrict output to stopped jobs

## Example

* Run command

> cat

* Press Ctrl-z

> jobs

    [1]+  Stopped                 cat

* List jobs running in background

> jobs -l
