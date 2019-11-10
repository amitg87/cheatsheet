# chgrp

    change group ownership of each FILE to GROUP

## SYNOPSIS

`chgrp [OPTION]... GROUP FILE...`

## Options

-R, --recursive

    operate on files and directories recursively

## Example

* Change the group of /u to "staff"

> chgrp staff /u

* Change the group of /u and subfiles to "staff"

> chgrp -R staff /u
