# rmdir

    Removes the directory entry specified by each directory argument, provided it is empty.
    Arguments are processed in the order given.  In order to remove both a parent directory and a subdirectory of that parent, the subdirectory must be specified first so the parent directory is empty when rmdir tries to remove it.

## Synopsis

`rmdir [OPTION]... DIRECTORY...`

## Options

-p, --parents

    remove DIRECTORY and its ancestors

## Examples

* delete directory

> rmdir dir

* delete directory including parent directories

> rmdir -p a/b/c
> rmdir a/b/c a/b a
