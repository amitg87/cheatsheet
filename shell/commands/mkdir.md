# mkdir

    Create directory(ies), if they do not already exist.

## Synopsis

`mkdir [options] [dir1] [dir2]`

## Options

-m, --mode=MODE

    set file mode (as in chmod), not a=rwx - umask

-p

    create parent - create all directory in that path

## Examples

* Create multiple directories

> mkdir dir1 dir2

* To create a directory all its parent should pre-exist

> mkdir nonExisting/amit  

    mkdir: cannot create directory `nonExisting/amit': No such file or directory

* Create directory path including all parent

> mkdir -p nonExisting/amit

* Create directory with specific permissions

> mkdir -m 0751 test  
> ls -ld test  

    drwxr-x--x  2 amitg  staff    68B Apr 30 13:28 test/
