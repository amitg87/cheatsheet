# unalias

    Remove each NAME from the list of defined aliases.
    Return success unless a NAME is not an existing alias.
    shell builtin

## Synopsis

`unalias [-a] name [name ...]`

## Options

-a

    remove all alias definitions.

## Examples

* Create alias

> alias rmr='rm -r'

* List alias -es

> alias

* Remove alias

> unalias rmr
