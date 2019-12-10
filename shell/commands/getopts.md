# getopts

    Getopts is used by shell procedures to parse positional parameters.
    The getopts command is designed to be executed inside a loop. Each time through the loop, getopts examines the next command line argument and determines whether it is a valid option. This determination is made by checking to see whether the argument begins with a minus sign and is followed by any single letter contained inside options. If it does, getopts stores the matching option letter inside the specified variable and returns a zero exit status.

## Synopsis

`getopts optstring name [arg]`

Optstring - contains the option letters to be recognized
name - name of the variable that the option should be set to. Usually `$OPTION` is used.

`n:` - option with value
`n` - option

OPTARG - When an option requires an argument, getopts places that argument into the shell variable OPTARG
OPTIND - initially set to one and is updated each time getopts returns to reflect the number of the next command-line argument to be processed.

Option stacking - `-a -f -v` can be merged into `-afv`

## Example

* `shargs.sh`

> ./shargs.sh
> ./shargs.sh 1 2 3 4

* `getopts.sh` shell script
