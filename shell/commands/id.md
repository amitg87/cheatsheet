# id

    Print user and group information for the specified USER, or (when USER omitted) for the current user.

## SYNOPSIS

`id [OPTION]... [USER]`

## Options

-u

    get user id

-g

    get group id

-r
    get real id instead of effective id

-n

    resolve name(s)

## Example

* Print all user and groups

> id

    uid=1001(amit) gid=1001(amit) groups=1001(amit),4(adm),24(cdrom),27(sudo),30(dip),46(plugdev),109(lpadmin),124(sambashare)

> id -un

    amit

> id -u

    1001
