# cp

    copy files and directories

## Synopsis

`cp [Source-1] [Source-2] ..... [Destination]`  
`cp [OPTION]... SOURCE... DIRECTORY`

## Options

-b

    make backup for each existing destination file
-l

    create links instead of copying
-s

    create symbolic link instead of copying
-R
-r

    recursive
-u

    update(copy only if destination does not exist or source is newer than destination)
-f

    if an existing destination file cannot be opened, remove it and try again (this option is ignored when the -n option is also used)
-n

    noclobber (do not over-write destination files)
-v

    verbose
-i

    interactive

## Examples

* Copy files from one current to other directory

> cp file1 file2 target/

* Create copy of file

> cp file file.bkp

* Copy directory a and all subdirectories to b

> cp -r a/ b/

* Copy content of directory a to b

> cp -r a/* b/

* Copy only if source file is newer than target file

> cp -uv 1.txt dir1/

## Note

* Common errors:
  1. source file does not exist
  2. source is directory and recursive option not set
