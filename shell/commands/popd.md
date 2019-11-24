# popd

    Removes entries from the directory stack. 
    With no arguments, removes the top directory from the stack, and cd's to the new top directory.

## Synopsis

`popd [+N | -N] [-n]`

## Option

+N

    removes the Nth entry counting from the left of the list shown by `dirs', starting with zero.
-N

    removes the Nth entry counting from the right of the list shown by `dirs', starting with zero.
-n

    suppress the normal change of directory when removing directories from the stack, so only the stack is manipulated.

## Example

* Removes the first directory +0, +1 for second

> popd +0
> popd +1

* Removes the last directory -0, -1 for second last

> popd -0
> popd -1
