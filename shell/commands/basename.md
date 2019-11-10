# basename

    Strip directory and suffix from filenames.
    Print NAME with any leading directory components removed. If specified, also remove a trailing SUFFIX.
    A non-existent suffix is ignored. 

## Synopsis

`basename NAME [SUFFIX]`

## EXAMPLES

* Basename when no file extension: removes the path and displays only the filename

> basename /etc/passwd

    passwd

* Basename when there is a file extension: remove the path and return the filename with the extension

> basename /usr/local/apache2/conf/httpd.conf

    httpd.conf

> basename include/stdio.h .h

    stdio

* Get only the filename without extension: pass the extension as 2nd argument to the basename command

> basename /usr/local/apache2/conf/httpd.conf .conf

    httpd
