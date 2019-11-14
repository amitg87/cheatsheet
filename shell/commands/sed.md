# sed

    Stream Editor - sed
    one pass filter/transform on input stream/file
    reads the specified files or standard input, modifying the input as specified by a list of commands. The input is then written to the standard output.

## SYNOPSIS

`sed [-Ealn] command [file ...]`
`sed [-Ealn] [-e command] [-f command_file] [-i extension] [file ...]`

for of a command -
`[address[,address]]function[arguments]`

## Options

### Seach and Replace

-n, --quiet, --silent

    suppresses default behavior - each line of input is echoed to the standard output after all of the commands have been applied to it.
-e command

    add the script to the list of commands to be executed
-f command-file

    Append the editing commands found in the file command_file to the list of commands. The editing commands should each be listed on a separate line.
-E

    Interpret regular expressions as extended (modern) regular expressions rather than basic regular expressions.

## Examples

* Search and replace term - 's/searchterm/replaceterm/'

> sed -e 's/paech/peach/' fruit_prices.txt

* Prepend $ to all numbers

> sed -E 's/[0-9]+/\$&/g' fruit_prices.txt

* Global replacement - multiple occurences on same line - replace all

> echo 'yellow yellow dirty fellow' | sed -e 's/yellow/white/g'
> echo 'yellow yellow dirty fellow' | sed -e 's/yellow/white/'

* Remove characters till end of line

> id | sed 's/(.*$//'

    uid=500

* Transform match

> echo 'surendra' | sed 's/surendra/Mr. &/'

* Remove all lines with `.unsort...`

> sed -E 's/.unsort_[0-9]{8}//' some_file
