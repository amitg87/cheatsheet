# export

    Creating new environment variable
    NAMEs are marked for automatic export to the environment of subsequently executed commands.

## Synopsis

`export [-nf] [name[=value] ...]`

`export -p`

## Example

* Export variable into environment of current shell

> export variable

* Initialization and export can be combined

> export variable=value

* List of exported variables

> export -p

* Remove environment variable

> export -n VARIABLE

* Export function

> export -f function
