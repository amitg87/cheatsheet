# ls

    LiSt information about directory and files
|Operand|Behavior|
|--|--|
|file|displays its name as well as any requested, associated information|
|directory|displays the names of files contained within that directory, as well as any requested, associated information|
|none|the contents of the current directory are displayed|
|mutiple|non-directory operands are displayed first; directory and non-directory operands are sorted separately and in lexicographical order|

## Synopsis

ls [OPTION]... [File]...

## Options

-a

    all. normal + hidden + .(current directory) + ..(parent directory)
-A

    almost all. only normal + hidden
-d

    show directory itself instead of contents
-1

    single column mode - list one file per line.
-l

    long listing - default sorted by name
    the following information is displayed for each file: file mode, number of links, owner name, group name, number of bytes in the file, abbreviated month, day-of-month file was last modified, hour file last modified, minute file last modified, and the pathname.
-i

    show i-node number(useful to see links)
-C

    default - columnwise - sorted by name - read by columns (left to right)
-x

    row-wise - sorted by name - read by rows (top to bottom)
-F

    show type of file /(directory), *(executable), @(symbolic links), %(whiteout), =(socket), |(pipe or FIFO)
-h

    Show file size in human readable format: Byte, Kilobyte, Megabyte, Gigabyte, etc
-c

    show modification time (use as -clt sort by most modification)
-u

    show access time (use -ult to sort by access time)

-S

    sort by size(decreasing size)
-t

    sort by time (use as -t, -ct for modification, -ut for access time)
-r

    reverse sort

## Example

* List current directory

> ls

* List current directory files - detailed

> ls -l

* List inodes

> ls -i

* List file blocks count

> ls -s

* List current Directory details

> ls -ld
> ls -ld .
> ls -ld `dir`

* List all files - including hidden and symbolic references . and ..

> ls -a

* List all files - including hidden files

> ls -A

## Recipes

* Count files in currenct directory

> ls -1 | wc -l

* Find recently modified files

* To retrieve a list of the five most recently accessed files

> ls -lut | head -5

* Find largest files

> ls -Sl | head -5

* Files newest files

> ls -lt | head -5

* Sort by creation time - oldest 5 files

> ls -lrt | head -5

* Oldest five files(creation)

> ls -lt | tail -5