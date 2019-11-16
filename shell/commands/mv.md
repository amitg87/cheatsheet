# mv

    move/rename file

## Synopsis

`mv [Source-1] [Source-2] ..... [Destination]`
`mv [Old name] [New-name]`

## Options

-b

    make backup for each existing destination file
-n

    noclobber (do not over-write destination files)
-f

    do not prompt for overwriting file
-i

    prompt before overwrite
-u

    update(copy only if destination does not exist or source is newer than destination)
-v

    verbose

## Example

* Move files to directory

> mv file.txt directory

* Move multiple files to a directory

> mv file1.txt file2.txt directory

* Move one directory to another - results in target/source

> mv subdir/ dir/

* Move content of one directory to another

> mv source/* target/

## Note

* If you specify more than one of -i, -f, -n, only the final one takes effect.
* Common errors:
  * source file does not exist
  * target directory does not exist
