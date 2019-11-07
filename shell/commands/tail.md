# tail

    output the last part of files
    Print the last 10 lines of each FILE to standard output.  With more than one FILE, precede each with a header giving the file name.
    With no FILE, or when FILE is -, read standard input.

## Synopsis

`tail [OPTION]... [FILE]...`

## Options

-`number`  
-n `number`  

    display last n lines

-f `file`  
--follow[={name|descriptor}]

    follow mode. output appended data as the file grows 

-c `number`  

    display last <n> bytes.  
    NUM may have a multiplier suffix: b 512, kB 1000, K 1024, MB 1000*1000, M 1024*1024, GB 1000*1000*1000, G 1024*1024*1024, and so on for T, P, E, Z, Y.

-q  

    never print file names while following

## Examples

* Print last 100 lines of file

> tail -100 catalina.out  
> tail -n 100 catalina.out  
> tail -n -100 catalina.out

* Skip first 'k' lines

> tail -n +2 names.txt

* follow changes of one or more file - each change is presented with filename

> tail -f out.log error.log

* Suppress filename while tailing multiple files

> tail -fq out.log error.log

## Recipes

* Oldest five files by creation date

> ls -lt | tail -5

* Print 15th line to 20th

> head -n 20 /etc/passwd | tail -n 5

* -f options -> keeps appending on as file grows on until manually terminated. good for observing log files while other program is writing to log file.

* Problem - With --follow (-f), tail defaults to following the file descriptor. Even if a tail'ed file is renamed, tail will continue to track its end.

* This default behavior is not desirable when you really want to track the actual name of the file, not the file descriptor (e.g., log rotation). Use --follow=name in that case. That causes tail to track the named file in a way that accommodates renaming, removal and creation.
