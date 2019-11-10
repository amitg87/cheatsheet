# ln

    make links between files
    Create hard links by default, can create symbolic links.
    When creating hard links, each TARGET must exist.

|Type|Description|
|--|--|
|Hard|Both link and file share i-node <br>File is not deleted until all of it's hard-links are deleted (count becomes 0)<br>Directory can not have hard link<br>Both source and target must be on same file system, can not span across multiple file system<br>write permission required on source and target|
|Soft|Can span across file system<br>two different files link and actual file are created<br>Can also link to directories<br>if file is deleted link becomes useless(broken link)<br>upper limit of derefernces to avoid cycle of links|

## Synopsis

`ln [OPTION]... TARGET`

    create a link to TARGET in the current directory with same name
`ln [OPTION] TARGET [DIRECTORY|FILE]`

    create links to each TARGET in DIRECTORY/FILE

## Options

-v

    verbose
-s

    symbolic link

## Examples

* Create Hard Link - Notice same inode and increased count

> ls -l fruits.txt

    -rw-rw-r-- 1 amit amit       37 Nov 26 20:03 fruits.txt
> ln fruits.txt eatable.txt  
> ls -li

    399494 -rw-rw-r-- 2 amit amit       37 Nov 26 20:03 eatable.txt
    399494 -rw-rw-r-- 2 amit amit       37 Nov 26 20:03 fruits.txt

* Deleting target of hard link

> rm fruits.txt  
> ls -li eatable.txt

    399494 -rw-rw-r-- 1 amit amit       37 Nov 26 20:03 eatable.txt

* Soft Link - notice different inode and count 1

> ln -s fruits.txt eatable.txt
> ls -l eatable.txt

    395339 lrwxrwxrwx 1 amit amit       10 Dec 19 18:06 eatable.txt -> fruits.txt
    399494 -rw-rw-r-- 1 amit amit       37 Nov 26 20:03 fruits.txt

* Deleting target of soft link - broken link

> rm fruits.txt  
> cat eatable.txt

    cat: eatable.txt: No such file or directory

* Creating link in current directory

> ln -s /usr/bin/man
