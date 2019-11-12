# man

    Manual pages
    Art of learning new on *NIX boils to down skill in reading man pages.
    Uses default pager

## Synopsis

`man [section] command`

### Man sections

The manual is generally split into eight numbered sections, organized as follows:

|Section|Types of pages|
|--|--|
|1|Executable programs or shell commands|
|2|System calls (functions provided by the kernel)|
|3|Library calls (functions within program libraries, covering in particular the C standard library)|
|4|Special files (usually found in /dev) and drivers|
|5|File formats and conventions eg /etc/passwd|
|6|Games|
|7|Miscellaneous  (including  macro  packages  and  conventions), e.g. man(7), groff(7)|
|8|System administration commands (usually only for root)|

Each page argument given to man is normally the name of a program, utility  or  function. The manual page associated with each of these arguments is then found and displayed.

A section, if provided, will direct man to look only in that section of the manual. The default action is to search in all of the available sections following a pre-defined order ("1  n  l  8  3  2 3posix  3pm  3perl  5  4 9 6 7" by default, unless overridden by the MANSECT directive in config), and to show only the first page found, even if page exists in several sections.

e.g. flock (read as f-lock ie file lock) -> command(section 1) and system call(section 2)
man flock -> will show man from section 1

A manual page consists of several sections depending on section. Conventional  section  names include

|Section|Description|
|--|--|
|NAME|This section gives the name of the command along with a short description of the command.|
|SYNOPSIS|This section describes all the different modes in which the command can be run. If a command accepts arguments they are shown in this section.|
|DESCRIPTION|This section includes a verbose description of the command. If a command accepts arguments, each argument will be fully explained in this section.|
|OPTIONS|Options to customize behavior|
|EXIT STATUS|Exit status indicate whether program terminated normally or not.|
|RETURN VALUE|Return values of system calls in man(2/3)|
|ERRORS|Possible errors returned from system calls in man(2/3)|
|ENVIRONMENT|Environment variable used|
|FILES|This section lists the files that are required for a command to function correctly. It might also list the files that can be used to configure a command.|
|NOTES|This section usually lists some additional information about the command. Sometimes it lists known bugs with a particular command.|
|EXAMPLE|This section usually shows you how to execute a command, along with some sample output.|
|AUTHORS|These sections list the command's authors or provide some contact information regarding a command.|
|SEE ALSO|This section lists other commands that are related to this command.|

### man-db

man-db is an implementation of the standard Unix documentation system accessed using the man command. It uses a Berkeley DB database in place of the traditional flat-text whatis databases.

Use man-db for text index database cache.
Man pages located in /usr/share/man.
written using scripts like nroff

### Writing man pages

In addition, one can simply inspect the source code for man pages installed on the system to see how they are written, typically found in and other directories.

### Config

/etc/man.conf
/etc/manpaths

## Options

-a

    all man pages, one by one

-f

    print short description of all man pages

-k term
-ki term

    Search in man pages, 'i' for case-insensitive search

-w

    print path of all man pages
    equivalent to manpath

## Examples

* View man page of command man

> man man
> man 1 man

    default section 1

* View man page from certain section

> man 2 sbrk
> man 3 malloc
> man 5 passwd
> man 7 groff

    2 - system calls, 3 - library, 5 - files

* View all man pages one by one

> man -a passwd

* Save man page data

> man man > man.txt

* Print path to man file

> man -w man
