# shopt

    Toggle the values of variables controlling optional behavior.
    Environment variable - SHELLOPTS - current list of shell options enabled

## Synopsis

`shopt [-pqsu] [-o long-option] optname [optname...]`

## Option

-s

    enable (set) each OPTNAME;
-u

    unsets each OPTNAME.
-q

    flag suppresses output; the exit status indicates whether each OPTNAME is set or unset.

no options
-p

    a list of all settable options is displayed, with an indication of whether or not each is set.

## Example

* Print list of shell options - enabled/disabled status

> shopt
> shopt -p

* Check status of variable

> shopt sourcepath
