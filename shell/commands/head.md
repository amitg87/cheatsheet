# head

    Output the first part of files.
    Default - Print the first 10 lines of each FILE to standard output.
    With more than one FILE, precede each with a header giving the file name. Like this ==> filename <==
    With no FILE, or when FILE is -, read standard input.
    head and tail are complimentary of each other

## Synopsis

`head [OPTION]... [FILE]...`

## Options

-`number`  
-n `number`

    display <n> lines, display first 10(default) lines

-c `number`

    display first <n> bytes  
    NUM may have a multiplier suffix: b 512, kB 1000, K 1024, MB 1000*1000, M 1024*1024, GB 1000*1000*1000, G 1024*1024*1024, and so on for T, P, E, Z, Y.

-q

    never print headers giving file names

## Example

* Print first 100 lines - all 3 do same thing

> head -100 catalina.out  
> head -n 100 catalina.out  
> head -n +100 catalina.out

    print first 100 lines from log

* Print first 10 lines of multiple files. Will print with headers as filename

> head all_var.c catalina.2016-11-15.log

    head each file - print file name as header

## Recipes

* retrieve a list of the five most recently accessed files

> ls -lut | head -5
