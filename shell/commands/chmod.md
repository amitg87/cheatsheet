# chmod

    change file mode bits of file(s)

## SYNOPSIS

`chmod [OPTION]... MODE[,MODE]... FILE...`  
`chmod [OPTION]... OCTAL-MODE FILE...`

## OPTIONS

-R, --recursive

    change files and directories recursively
-f

    Do not display a diagnostic message if chmod could not modify the mode for file.

## Examples

* Assign specific permission - assign to all

> chmod a=rwx file  
> chmod ugo=rwx file

* Add permission to file

> chmod a+x a.out

* Remove permission

> chmod go-w code.c

* Multiple changes in single command

> chmod go-w,a+x a.out

* Set SUID and SGID bit

> chmod ug+s executable

* Set sticky bit on directory

> chmod +t directory

* Assign permission using octal method  -rw-r--r--

> chmod 0644 .profile

* Set SUID/SGID/Sticky in octal mode - resulting in -rwsrwsrwt

> chmod 7777 ls.txt

* Set SUID/SGID in octal mode - resulting in -rwsrwsrwx

> chmod 6777 ls.txt
