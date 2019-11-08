# which

    shows the full path of (shell) commands.
    It does this by searching the PATH for executable files matching the names of the arguments. It does not follow symbolic links.

## Synopsis

`which <filename>`

## Options

-a

    print all matching pathnames of each argument not just first

## Example

* Find executable

> which java

    /home/amit/Installation/jdk1.8.0_31//bin/java

* Find all executable

> which -a java

    /home/amit/Installation/jdk1.8.0_31//bin/java
    /usr/bin/java
