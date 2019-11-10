# umask

    get/set file mode creation mask of the current shell execution environment.
    When an user creates a file, its default permission is based on the value set in umask.
    Default value - 0022. Result in permission -rwxr-xr-x. File permission is calculated by 7777&!umask.
    If MODE begins with a digit, it is interpreted as an octal number.
    Type - shell built in

## Synopsis

`umask [-p] [-S] [mode]`

## Option

-S

    makes the output symbolic
-p

    the output is in a form that may be used as input

## Example

* Get current umask

> umask
> umask -p

    0022
    umask 0022

* Get current umask - symbolic form

> umask -S

    u=rwx,g=rwx,o=rx

* Set current umask

> umask 0027

    Resulting permissions rw-r-----

* Change umask

> umask go-x
> umask u=rwx,g=x,o=x

    umask becomes - u=rwx,g=x,o=x - 0066
