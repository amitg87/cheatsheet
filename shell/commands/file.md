# file

    determine/classify file type - based on magic line
    tests each argument in an attempt to classify it - filesystem tests, magic tests, and language tests
    type printed will be one of - text, executable, data
        filesystem test - checks size and filetype based on stat(2)
        magic test - magic line or number in beginning of file - compared against system magic number file
        language test - checks content - not reliable
    config 
        /usr/share/file/magic.mgc
        /usr/share/file/magic/

## Synopsis

`file <file-name>`

## Options

-b, --brief

    Do not prepend filenames to output lines (brief mode).

## Examples

> file -b /dev/sda*
> file /dev/ttys006

    /dev/ttys006: character special (16/6)

* Adding shebang (#!/bin/sh) to beginning for shell script marks it as shell script

> file a.sh

    a.sh: POSIX shell script text executable, ASCII text