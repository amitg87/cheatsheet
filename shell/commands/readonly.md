# readonly

    The given NAMEs are marked readonly and the values of these NAMEs may not be changed by subsequent assignment.

## Synopsis

`readonly [-af] [name[=value] ...]`
`readonly -p`

## Option

-p

    a list of all readonly names is printed.

## Example

* Variables can be marked as read-only, writes are not allowed second time

> FRUIT=kiwi
> readonly FRUIT
> echo $FRUIT
> FRUIT=cantaloupe

    -bash: FRUIT: readonly variable

* Readonly variables can not be unset.

> unset FRUIT

    -bash: unset: FRUIT: cannot unset: readonly variable
