# echo

    Write arguments to the standard output
    shell internal command
    Multiple ARGS are separated by a single space character and followed by a newline, on the standard output.

## Synopsis

`echo [-neE] [arg ...]`

## Options

-n

    do not append a newline
-e

    enable interpretation of the following backslash escapes
-E

    explicitly suppress interpretation of backslash escapes

|Backslash-escaped Character|Description|
|--|--|
|\n|new line|
|\r|carriage return|
|\t|horizontal tab|
|\v|vertical tab|
|\\|backslash|
|\0nnn|the character whose ASCII code is NNN (octal). NNN can be 0 to 3 octal digits|
|\xHH|the eight-bit character whose value is HH (hexadecimal). HH can be one or two hex digits

## Example

* Print environment variables

> echo $JAVA_HOME $JDK_HOME

    path1 path2

> echo -e $JAVA_HOME "\n"$JDK_HOME

    path1
    path2

* Print all file beginning with `.`

> echo .[!.]*

* Print string with variable substitution

> NAME="Amit"
> echo "Hello $NAME"

    Hello Amit
