# who / who am i

    Show Who is logged in
    The who utility displays a list of all users currently logged on, showing for each user the login name, tty name, the date and time of
     login, and hostname if not local.

## Synopsis

`who [OPTION]... [ FILE ]`
`who am i`

## Options

-b

    boot-time. time of last system boot.
-H

    headers for each column
-r

    get runlevel of user
-q

    count number of users logged in
-p

    print active processes spawned by init
-a, --all

    same as -b -d --login -p -r -t -T -u
-s

    print only name, line, and time (default)

## Examples

* Print boot time

> who -b

* Print all logged in users

> who -aH

* Print logged in user count

> who -q

* Print run-level - typical level-3

> who -r
