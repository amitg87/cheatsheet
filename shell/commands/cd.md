# cd

    Change directory.
    Shell builtin - not an external command.
    By default follows symbolic links.

    The variable CDPATH defines the search path for the directory containing DIR. Alternative directory names in CDPATH are separated by a colon (:).
    If DIR begins with a slash (/), then CDPATH is not used. (Absolute path)

## Synopsis

`cd [-L|-P] [dir]`

## Options

-L (default)

    follow symbolic links

-P

    use the physical directory structure without following symbolic links

## Examples

* Go Back to previous Directory

> cd -

* Go to home directory (~ and $HOME means user home)

> cd
> cd ~

* Go to parent directory

> cd ..

* Go to specific directory

> cd dir1/dir2
> cd ~/relative-path-from-home
> cd /absolute-dir/path

## Note

* Directory Shortcuts  
  * `-` previous directory
  * `~` home directory
  * `.` current directory
  * `..` parent directory

* Difference between -L and -P
  * We have symbolic link `/home/amit/temp/server` -> `/home/amit/server`
    > ln -s /home/amit/temp/server /home/amit/server  

  * When switching directory with -L (default) -> you follow logical symbolic directories
    > cd /home/amit/temp/server  
    > pwd  
        >> /home/amit/temp/server

  * You can force to use physical directory with -P
    > cd -P /home/amit/temp/server  
    > pwd  
        >> /home/amit/server

* Use CDPATH to define the base directory for cd command. Useful when frequently performing cd to subdirectories of a specific parent directory, you can set the CDPATH to the parent directory and perform cd to the subdirectories without giving the parent directory.
  * Set CDPATH to $ORACLE_HOME for DBA, $HOME for regular users, /etc for sysadmins.
  * When searching for directory it will sequentially search through each directory in CDPATH list

  > export CDPATH=.:~:/etc:/var
