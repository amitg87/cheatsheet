# dirs

    Display the list of currently remembered directories. 
    Directories find their way onto the list with the `pushd' command; you can get back up through the list with the `popd' command.
    Current directory is always at top of stack.

## Synopsis

`dirs [-clpv] [+N] [-N]`

    Only one of clpv can be used

## Option

+N

    displays the Nth entry counting from the left of the list shown by dirs when invoked without options, starting with zero.
-N

    displays the Nth entry counting from the right of the list shown by dirs when invoked without options, starting with zero.
-l

    flag specifies that `dirs' should not print shorthand versions of directories which are relative to your home directory.
-v

    `dirs' to print the directory stack with one entry per line, prepending the directory name with its position in the stack.
-p

    flag does the same thing, but the stack position is not prepended.
-c

    clears the directory stack by deleting all of the elements.

## Example

* List dirs stack

> dirs

    ~/temp/target ~/temp/backup ~/temp/audit ~/temp

* List dirs stack - absolute path

> dirs -l

    /Users/amitg/temp/target /Users/amitg/temp/backup /Users/amitg/temp/audit /Users/amitg/temp

* List dirs stack - with index

> dirs -v

    0  ~/temp/target
    1  ~/temp/backup
    2  ~/temp/audit
    3  ~/temp

* List dirs stack - without index

> dirs -p

    ~/temp/target
    ~/temp/backup
    ~/temp/audit
    ~/temp

* List dirs +1 from top to bottom

> dirs +1

    ~/temp/backup

* List dirs -1 from bottom to top

> dirs -1

    ~/temp/audit
