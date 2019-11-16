# stat

    display file or file system status

## Synopsis

`stat [OPTION]... FILE...`

## Options

-c --format=FORMAT

    use the specified FORMAT instead of the default; output a newline after each use of FORMAT

The valid format sequences for files (without --file-system):

    %n     file name
    %F     file type

    %a     access rights in octal (note '#' and '0' printf flags)
    %A     access rights in human readable form

    %s     total size, in bytes

    %u     user ID of owner
    %U     user name of owner
    %g     group ID of owner
    %G     group name of owner

    %h     number of hard links
    %i     inode number

    %w     time of file birth, human-readable; - if unknown
    %W     time of file birth, seconds since Epoch; 0 if unknown
    %x     time of last access, human-readable
    %X     time of last access, seconds since Epoch
    %y     time of last data modification, human-readable
    %Y     time of last data modification, seconds since Epoch
    %z     time of last status change, human-readable
    %Z     time of last status change, seconds since Epoch

## Examples

* Print details a file

> stat a.txt

      File: 'a.txt'
      Size: 5         	Blocks: 8          IO Block: 4096   regular file
    Device: 803h/2051d	Inode: 396678      Links: 1
    Access: (0644/-rw-r--r--)  Uid: ( 1001/    amit)   Gid: ( 1001/    amit)
    Access: 2016-11-09 14:49:51.511476304 +0530
    Modify: 2016-11-09 14:49:53.407556181 +0530
    Change: 2016-11-09 14:49:53.407556181 +0530
    Birth: -

* Print specific attributes of a file - similar to ls command

> stat -c'%A %h %U %G %s %y %n' /tmp/sample_file

    -rw-r--r-- 1 amit amit 5 2016-11-09 14:49:53.407556181 +0530 a.txt
