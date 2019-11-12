# du

    Summarize disk usage of the set of FILEs, recursively for directories.
    With no arguments - the disk space for the current directory.
    Normally the disk space is printed in units of 1024 bytes or Block size.
    Non-integer quantities are rounded up to the next higher unit.

## Synopsis

`du -sh [file|folder]`

## Options

-a

    write counts for all files, not just directories

-B<SIZE>

    scale sizes by SIZE before printing them; e.g., '-BM' prints sizes in units of 1,048,576 bytes
--exclude=PATTERN

    exclude files that match PATTERN
-t, --threshold=SIZE

    exclude entries smaller than SIZE if positive, or entries greater than SIZE if negative
-c, --total

    produce a grand total
-h, --human-readable

    print sizes in human readable format (e.g., 1K 234M 2G)
-d `depth`

    Depth - Display an entry for all files and directories depth directories deep.
-s

    display only a total for each argument

The SIZE argument is an integer and optional unit (example: 10K is 10*1024).  Units are K,M,G,T,P,E,Z,Y  (powers  of  1024)  or  KB,MB,... (powers of 1000).

## Example

* Print disk usage folder-wise

> du

* Print only summary

> du -s

* Print usage by each file

> du -a

* Print Human readable storage usage by directory

> du -sh `folder`

* Show subfolder usage - descending by size

> du -h -d 1 | sort -hr

* Print usage by files in KB/MB/GB

> du -BK -s
> du -BM -s
> du -BG -s

* Exclude files by pattern - exclude jpg files

> du -a --exclude=*.jpg

* Find files larger than size - larger than 10000 bytes

> du -ab -t+10000

* Find files smaller than size - less than 10 bytes

> du -ab -t-10

* Show folder wise usage

> du -hd 1

* disk usage of hidden folders

> du -hs .[!.]*

## Recipes

* Find largest files/directories in directory

> du -a | sort -k1 -nr | head

* Find hidden files folder in MB/GB

> gdu -hs .[!.]* | grep -E ^[0-9]+M
> gdu -hs .[!.]* | grep -E ^[0-9]+G
