# env

    set environment and execute command, or print environment

## Synopsis

`env [option] [utility [argument]]

## Option

-i

    Execute the utility with only those environment variables specified by name=value options.  The environment inherited by env is ignored completely.

-u name

    If the environment variable name is in the environment, then remove it before processing the remaining options.

## Example

* Print all environment variables

> env

* Set an environment variable

> env VARIABLE=VALUE

* Unset an environment variable

> env -u VARIABLE

* Start process with new environment

> env -i env
