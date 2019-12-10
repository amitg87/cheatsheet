# printf

    Formatted output
    printf formats and prints ARGUMENTS under control of the FORMAT.

## Synopsis

`printf format [arguments]`

Syntax is identical C-style printf statement.
format is a character string which contains three types of formatting sequence

* plain characters: simply copied to standard output
* character escape sequences: converted and copied to the standard output
* format specifications:  each of which causes printing of the next successive argument.

arguments - strings that correspond to the formatting sequences specified in format.

The formatting sequences have the form:
%[-]m.nx
Here % starts the formatting sequence and x identifies the formatting sequences type.

|Letter|Description|
|--|--|
|s|String|
|c|Character|
|d|Decimal (integer) number|
|x|Hexadecimal number|
|o|Octal number|
|e|Exponential floating-point number|
|f|Fixed floating-point number|
|g|Compact floating-point number|

Depending on the value of x, the integers m and n are interpreted differently. Usually m is the minimum length of a field, and n is the maximum length of a field. If you specify a real number format, n is treated as the precision that should be used.
The hyphen ( -) left justifies a field. By default, all fields are right justified.

## Example

* Simple prompt

> printf "Is that a mango?\n"

* Variable substitution

> NAME="amit"
> printf "Hello $AMIT! Where is the money\$?"

* Print files with type - formatted

```shell
printf "%-32s %s\n" "File Name" "File Type"
for i in *;
do
    printf "%-32s " "$i"
    if [ -d "$i" ]; then
        echo "directory"
    elif [ -h "$i" ]; then
        echo "symbolic link"
    elif [ -f "$i" ]; then
        echo "file"
    else
        echo "unknown"
    fi;
done
```

* Print numbers

> printf "%3.2f\n" 10.123345

    10.12
> printf "%3.5f\n" 10.123345

    10.12335
> printf "%3.5e\n" 10.123345

    1.01233e+01
> printf "%3.5g\n" 10.123345

    10.123
