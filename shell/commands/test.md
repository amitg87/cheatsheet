# test

    Exits with a status of 0 (true) or 1 (false) depending on the evaluation of EXPR.
    Expressions may be unary or binary.
    Unary expressions are often used to examine the status of a file. 
    There are string operators as well, and numeric comparison operators.

## Synopsis

`test [ expr ]`

## Expression

### File Operators

|File Operator|Description|
|--|--|
|-a FILE|True if file exists|
|-b FILE|True if file is block special|
|-c FILE|True if file is character special|
|-d FILE|True if file is a directory|
|-e FILE|True if file exists|
|-f FILE|True if file exists and is a regular file|
|-g FILE|True if file is set-group-id|
|-h FILE|True if file is a symbolic link|
|-L FILE|True if file is a symbolic link|
|-k FILE|True if file has its `sticky' bit set|
|-p FILE|True if file is a named pipe|
|-r FILE|True if file is readable by you|
|-s FILE|True if file exists and is not empty|
|-S FILE|True if file is a socket|
|-t FD|True if FD is opened on a terminal|
|-u FILE|True if the file is set-user-id|
|-w FILE|True if the file is writable by you|
|-x FILE|True if the file is executable by you|
|-O FILE|True if the file is effectively owned by you|
|-G FILE|True if the file is effectively owned by your group|
|-N FILE|True if the file has been modified since it was last read|

### Binary File Operators

|Operator|Description|
|--|--|
|FILE1 -nt FILE2|True if file1 is newer than file2 (according to modification date)|
|FILE1 -ot FILE2|True if file1 is older than file2|
|FILE1 -ef FILE2|True if file1 is a hard link to file2|

### String operators

|Operator|Description|Example - 0/true|Example - 1/false|
|--|--|--|--|
|-z STRING|True if string is empty|-z ""|-z "Amit"|
|-n STRING|True if string is not empty|-n " "|-n ""|
|STRING|True if string is not empty|" "|""|
|STRING1 = STRING2|True if the strings are equal| "a" = "a" | "a" = "b"|
|STRING1 != STRING2|True if the strings are not equal| "a" != "b" | "a" != "a"|

### Logical operators

|Operator|Description|Example - 0/true|Example - 1/false|
|--|--|--|--|
|! EXPR|True if expr is false| ! 1 -eq 2 | ! 1 -eq 1|
|EXPR1 -a EXPR2|True if both expr1 AND expr2 are true|1 -eq 1 -a 2 -eq 2|1 -eq 1 -a 2 -eq 1|
|EXPR1 -o EXPR2|True if either expr1 OR expr2 is true|1 -eq 1 -o 2 -eq 1|1 -eq 2 -o 2 -eq 1|

### Numerical Operator

`arg1 OP arg2`

|Operator|Description|Example - 0/true|Example - 1/false|
|--|--|--|--|
|-eq|equal|1 -eq 1|2 -eq 1|
|-ne|not-equal|1 -ne 2|1 -ne 1|
|-lt|less-than|1 -lt 2|2 -lt 1|
|-le|less-than-or-equal|1 -le 2, 1 -le 1|2 -le 1|
|-gt|greater-than|2 -gt 1|1 -gt 2|
|-ge|greater-than-or-equal|1 -ge 1, 2 -ge 1|1 -ge 2|


## Example

* Check if file exists or not

> test -e existingFile
> echo $?

    0

> test -e non
> echo $?

    1

* Sample if statement

```shell

if [ -e man.txt ]; then
    echo "File exist";
else
    echo "File does not exist";
fi
```

* Space is required - between operator and operand, after `[`, before `]`.

```shell
if [ "a" = "b" ]; then
    echo "True";
else
    echo "False";
fi
```

    File does not exist

```shell
if [ "a"="b" ]; then
    echo "True";
else
    echo "False";
fi

    File exist
