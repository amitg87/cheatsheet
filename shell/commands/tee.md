# tee

    Copy standard input to each FILE, and also to standard output
    named after T shaped pipe
    useful for debugging pipe-d commands - print intermediate results

## SYNOPSIS

`tee [OPTION]... [FILE]...`

## Options

-a, --append

    append to the given FILEs, do not overwrite

## Examples

* Print and save result of command into file(s). If multiple files are specified - will be written to all files.

> ls | tee ls-output.txt

## Tip

* To debug command pipeline - insert tee between stages

> `command-1`|tee -a /tmp/state-1 |`command-2`
