# enable

    Enable and disable builtin shell commands.
    Allows you to use a disk command which has the same name as a shell builtin without specifying a full pathname.
    Without options, each NAME is enabled.
    If -n is used, the NAMEs become disabled; otherwise NAMEs are enabled.

## Synopsis

`enable [OPTION] [name ...]`

## Options

-a

    print a list of builtins showing whether or not each is enabled
-n

    disable each NAME or display a list of disabled builtins
-p

    print the list of builtins in a reusable format
-s

    print only the names of Posix `special' builtins

## Example

* shift is internal command

> type shift

* disable shift

> enable -n shift

* using shift will result in error

> shift

    shift: command not found

* Re-enable shift

> enable shift
