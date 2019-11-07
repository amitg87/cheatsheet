# cat

    concatenate files and print on the standard output
    With no FILE, or when FILE is -, read standard input.

## Synopsis

`cat [OPTION]... [FILE]...`

## Options

-n

    Number each line
-b

    Skip empty lines for numbering
-s

    Squeeze multiple blank lines into one

## Example

* Write to file

> cat > file

* Append to file

> cat >> file

* Print file

> cat file

* Echo typed content

> cat
> cat -

* Print lines with numbers

> cat -b file_with_empty_lines.txt
