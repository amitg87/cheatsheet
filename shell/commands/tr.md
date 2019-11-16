# tr

    translate or delete characters
    Translate, squeeze, and/or delete characters
    Takes input from stdin not from file - always writes to output stream

## SYNOPSIS

`tr [OPTION]... SET1 [SET2]`

SET2 is extended to length of SET1 by repeating its last character as necessary. Excess characters of SET2 are ignored.

## Options

-c, -C, --complement

    use the complement of SET1 - anything not part of SET1

-d, --delete

    delete characters in SET1, do not translate

-s, --squeeze-repeats

    replace each sequence of a repeated character that is listed in the last specified SET, with a single occurrence of that character

~~~
SETs are specified as strings of characters.
Most represent themselves.
Interpreted sequences are:

\\    backslash
\b    backspace
\f    form feed
\n    new line
\r    return
\t    horizontal tab

CHAR1-CHAR2      all characters from CHAR1 to CHAR2 in ascending order
[:alnum:]        all letters and digits
[:alpha:]        all letters
[:blank:]        all horizontal whitespace
[:cntrl:]        all control characters
[:digit:]        all digits
[:graph:]        all printable characters, not including space
[:lower:]        all lower case letters
[:print:]        all printable characters, including space
[:punct:]        all punctuation characters
[:space:]        all horizontal or vertical whitespace
[:upper:]        all upper case letters
[:xdigit:]       all hexadecimal digits
[=CHAR=]         all characters which are equivalent to CHAR
~~~

## Examples

* Change case: uppercase to lowercase

> tr 'A-Z' 'a-z' <file.txt

* Delete all digits

> tr -d '[0-9]'

* Sqeeze space characters

> echo "feed me" | tr -s " "

    produces the output 'feedme'
> echo "feed me" | tr -s 'e'

    produces the output "fed me"

> echo "Shell Programming" | tr -s 'lm'

    produces the following output: Shel Programing

* Replace punctuation marks by space: Note: [ and ] are escaped others are not

> tr '!?":;\[\]{}(),.\t\n' ' ' < file.txt

* Convert spaces to newlines

> tr ' ' '\n'

* Complement - Delete all characters other than specified

> echo "solaris linux hp-ux" | tr -cd 'slh'

    slslh

* Remove all non-alpha-numeric and spaces

> tr -cd "[:alpha:][:digit:][:space:]"
