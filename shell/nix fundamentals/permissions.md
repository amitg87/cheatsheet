# Unix Permissions Cheat Sheet

> Parts borrowed from [lansana - unix-permissions-cheat-sheet](https://github.com/lansana/unix-permissions-cheat-sheet)

## Permissions

Files and directories are owned by a **user**.
Files and directories are also assigned to a **group**.
If a user is not the owner, nor a member of the group, then they are classified as **other**.

Permissions on Unix and other systems like it are split into three classes:

- u - User - the user who owns file/directory
- g - Group - other users in the user group
- o - Other - not the owner, not part of user group
- a - All - User+Group+Other

Meaning of permission:

- File
  - r --> read a file
  - w --> writing file
  - x --> execute file
  - s --> set SUID or SGID on execution
- Directory:
  - r --> list directory content
  - w --> create/delete file in directory
  - x --> access directory(you can do cd or access subdirectory)
  - t --> sticky bit / restricted deletion flag

- SUID/SGID/Sticky
  - s --> both owner/group execute and SUID/SGID are set e.g. -rwsrws---
  - S --> SUID/SGID is set, but owner/group execute is not set. e.g. -r-Sr-S---
  - t --> both others execute and sticky bit are set e.g. -rwxrwxrwt
  - T --> sticky bit is set, but others execute is not set e.g. -rwxrwxr-T

Actions

`+` Adding permissions to the file  
`-` Removing permission from the file  
`=` Explicitly set the file permissions

File type

`-` Regular file
`d` Directory
`b` Block device - Block special files also provide a mechanism for communicating with device drivers via the file system. These files are called block devices because they transfer large blocks of data at a time. e.g. /dev/sda
`c` Character device - Character special files provide a mechanism for communicating with a device one character at a time. Usually character devices represent a "raw" device. e.g. /dev/tty
`l` Symbolic Link - special file that points to another file
`p` Pipe - named pipe
`s` Socket - Socket files are another form of interprocess communication, but sockets can pass data and information between two processes that are not running on the same machine. Socket files are created when communication to a process on another machine located on a network is required.

## Changing permissions

In order to change permissions, we need to first understand the two notations of permissions.

1. Symbolic notation
2. Octal notation

### Symbolic notation

Symbolic notation is what you'd see on the left-hand side if you ran a command like `ls -l` in a terminal.

The first character in symbolic notation indicates the `file type`. The remaining characters are in sets of three, each representing a class of permissions - `user`, `group`, `other`. Each of the three characters for a class represents the read, write and execute permissions.

- `r` will be displayed if reading is permitted
- `w` will be displayed if writing is permitted
- `x` will be displayed if execution is permitted
- `-` will be displayed in the place of `r`, `w`, and `x`, if the respective permission is *not* permitted

Here are some examples of symbolic notation:

- `-rwxr--r--`: A regular file whose **user** class has read/write/execute, **group** class has only read permissions, **other** class has only read permissions
- `drw-rw-r--`: A directory whose **user** class has read/write permissions, **group** class has read/write permissions, **other** class has only read permissions
- `crwxrw-r--`: A character special file whose **user** has read/write/execute permissions, **group** class has read/write permissions, **other** class has only read permissions

### Octal notation

Octal (base-8) notation consists of at least 3 digits (sometimes 4, the left-most digit, which represents the setuid bit, the setgid bit, and the sticky bit).

Each of the three right-most digits are the sum of its component bits in the binary numeral system.

For example:

- The read bit (`r` in symbolic notation) adds 4 (0100) to its total
- The write bit (`w` in symbolic notation) adds 2 (0010) to its total
- The execute bit (`x` in symbolic notation) adds 1 (0001) to its total

So what number would you use if you wanted to set a permission to read and write? 4 + 2 = 6.

Setting SUID and SGID using the octal method places these bits out in front of the standard permissions. The permissions SUID, SGID and sticky take on the values 4, 2 and 1 respectively.

## SUID and SGID

Additional permissions are given to programs via a mechanism known as the Set User ID ( SUID) and Set Group ID ( SGID) bits. When you execute a program that has the SUID bit enabled, you inherit the permissions of that program's owner. Programs that do not have the SUID bit set are run with the permissions of the user who started the program.
For directories it also may mean that when a new file is created in the directory it will inherit the group of the directory (and not of the user who created the file).
As an example - SUID is used by passwd to access/read/write protected file /etc/passwd and /etc/shadow

> ls -l /usr/bin/passwd
-r-sr-xr-x   1 root     bin         19031 Feb  7 13:47 /usr/bin/passwd*

## Sticky Bit

For directories, it prevents unprivileged users from removing or renaming a file in the directory unless they own the file or the directory; this is called the restricted deletion flag for the directory, and is commonly found on world-writable directories like /tmp.
If the sticky bit is enabled on the directory, files can only be removed if you are one of the following users:

1. The owner of the sticky directory
2. The owner the file being removed
3. The super user, root

You should consider enabling the sticky bit for any directories that nonprivileged users can write.
e.g. temporary directories and public file upload sites.

## All together now

Let's use the examples from the symbolic notation section and show how it'd convert to octal notation

|Symbolic notation|Octal notation|Plain English|
|:---------------:|:------------:|-------------|
|`-rwxr--r--`     |0744          |**user** class can read/write/execute; **group** class can read; **other** class can read|
|`-rw-rw-r--`     |0664          |**user** class can read/write; **group** class can read/write; **other** class can read  |
|`-rwxrwxr--`     |0774          |**user** class can read/write/execute; **group** class can read/write/execute; **other** class can read|
|`----------`     |0000          |None of the classes have permissions|
|`-rwx------`     |0700          |**user** class can read/write/execute; **group** class has no permissions; **other** class has no permissions|
|`-rwxrwxrwx`     |0777          |All classes can read/write/execute|
|`-rw-rw-rw`      |0666          |All classes can read/write|
|`-r-xr-xr-x`     |0555          |All classes can read/execute|
|`-r--r--r--`     |0444          |All classes can read|
|`--wx-wx-wx`     |0333          |All classes can write/execute|
|`--w--w--w-`     |0222          |All classes can write|
|`---x--x--x`     |0111          |All classes can execute|
|`-rwsrwsrwt`     |7777          |All classes can read/write/execute, SUID/SGID/Sticky are set|
|`-rwsrwsrwx`     |6777          |All classes can read/write/execute, SUID/SGID are set|
