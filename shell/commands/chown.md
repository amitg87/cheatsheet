# chown

    change owner and/or group of file.
    OWNER and GROUP may be numeric as well as symbolic names.
    In case of symbolic link - changes are always made to referent file, not the symbolic link.

## SYNOPSIS

`chown [OPTION]... [OWNER][:[GROUP]] FILE...`

## DESCRIPTION

|Format|Meaning|
|--|--|
|OWNER|user is made the owner of each given file, and the files' group is not changed|
|OWNER:GROUP|user is made owner and group ownership of the files is changed as well|
|OWNER:|user is made the owner of the files and the group of the files is changed to that user's login group|
|:GROUP|the owner is omitted, only the group of the files is changed|
|:|neither the owner nor the group is changed.

## OPTIONS

-R, --recursive
    operate on files and directories recursively

## Examples

* Change the owner of /u to "root"

> chown root /u

* Likewise, but also change its group to "staff"

> chown root:staff /u

* Change the owner of /u and subfiles to "root"

> chown -R root /u
