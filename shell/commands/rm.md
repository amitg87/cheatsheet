# rm

    rm removes each specified file. 
    By default, it does not remove directories.
    removes symbolic links, not the files referenced by the links.

## Synopsis

`rm [OPTION]... [FILE]...`

## Options

-d

    Attempt to remove empty directories as well as other types of files.
-f

    ignore non-existent file, which otherwise is error
-i

    interactive - Prompt before every removal
-r, -R

    recursive - remove each listed directory, too, along with all of its contents.
    implies the -d option
-v

    verbose

## Examples

* Remove files and directory

> rm file1
> rm -d file1 file2 empty-directory/

* Remove directory and all files in it

> rm -r dir1

* Remove empty directory

> rm -d empty_dir
