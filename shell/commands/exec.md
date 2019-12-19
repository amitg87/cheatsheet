# exec

    The exec utility shall open, close, and/or copy file descriptors as specified by any redirections.
    If exec is specified with command, it shall replace the shell with command without creating a new process.

## Synospsis

`exec file [redirection ...]`

## Example

* Open file as file descriptor 3 for reading

> exec 3< file

* Open file as file descriptor 4 for writing - overwrite mode

> exec 4> writefile

* Open file as file descriptor 4 for writing - append mode

> exec 4>> writefile

* Make file descriptor 5 a copy of file descriptor 0

> exec 5<&0

* Close file descriptor

> exec 3<&−

* Cat the file maggie by replacing the current shell with the cat utility

> exec cat maggie

* Execute cat replacing bash - exiting cat will close terminal

> exec cat
