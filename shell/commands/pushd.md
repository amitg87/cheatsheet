# pushd

    Adds a directory to the top of the directory stack, or rotates the stack, making the new top of the stack the current working directory.
    With no arguments, exchanges the top two directories.

## Synopsis

`pushd [dir | +N | -N] [-n]`

## Option

+N

    Rotates the stack so that the Nth directory (counting from the left of the list shown by `dirs', starting with zero) is at the top.
-N

    Rotates the stack so that the Nth directory (counting from the right of the list shown by `dirs', starting with zero) is at the top.
-n

    suppress the normal change of directory when adding directories to the stack, so only the stack is manipulated.

## Example

* Change to directory and push to top of stack

> pushd ~/Downloads/

* Only push to top of stack

> pushd -n ~/Downloads/

* Switch to specific directory in stack - index from top

> pushd +1

* Switch to specific directory in stack - index from bottom

> pushd -1
