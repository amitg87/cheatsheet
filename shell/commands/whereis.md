# whereis

    locate the binary, source, and manual page files for a command

## Synopsis

`whereis <filename>`

## Options

-b

    search only binaries
-m

    search only manual sections
-s

    search only sources

## Examples

* Search all git

> whereis git

    git: /usr/bin/git /usr/share/man/man1/git.1.gz

* Search only binary

> whereis -b git

    git: /usr/bin/git
