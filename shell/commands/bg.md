# bg

    Move jobs to the background
    Shell builtin - Job Control command
    the resumed process continues to execute in the background without receiving user input/sending user output from the terminal
    resumes execution of a suspended process without bringing it to the foreground

## Synopsis

`bg [job_spec ...]`

## Example

* Run long running command

> find / -ctime -1 > /dev/null

* Stop command using `CTRL-Z`, jobs will be stopped

* Push jobs to background - jobs starts running

> bg %3

* View running jobs status

> jobs -r

* Run command in background mode

> find / -ctime -1 > /dev/null &
