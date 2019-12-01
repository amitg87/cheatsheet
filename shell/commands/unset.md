# unset

    Unset values and attributes of shell variables and functions.
    Some variables cannot be unset; also see readonly.

## Synopsis

`unset [name ...]`

## Example

* Define a variable

> a=1

* Using variable value

> echo $a
    1

* Unset a variable

> unset a

> echo $a

## Note

* If a variable and function is created with same name

> a=1
> a() { echo 2; }

* Invocation would use function first

> a

    2

* Unsetting would unset variable first

> unset a
> a
2

* Without options, unset first tries to unset a variable, and if that fails, tries to unset a function. Some variables cannot be unset (readonly)
