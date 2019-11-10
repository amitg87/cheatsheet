# paste

    concatenates the corresponding lines of the given input files
    The paste command is sort of the inverse of cut - Instead of breaking lines apart, it puts them together.
    default delimeter is tab - \n, \t, \\, \0(empty string)
    The dash character - can be used in files to specify that input is from standard input.
    If `-' is specified for one or more of the input files, the standard input is used; standard input is read one line at a time, circularly, for each instance of `-'.

## Synopsis

`paste [OPTION]... [FILE]...`

FILE, or when FILE is -, read standard input.

## Options

-d, --delimiters=LIST

    reuse characters from LIST instead of TABs. If there are more files than there are characters listed in chars, paste "wraps around" the list of characters and starts again at the beginning.
-s, --serial

    paste one file before another instead of instead of in parallel

## Examples

* Input 1 - file containing names

> cat names

    Tony
    Emanuel
    Lucy
    Ralph
    Fred

* Input 2 file containing numbers

> cat numbers

    (307) 555-5356
    (212) 555-3456
    (212) 555-9959
    (212) 555-7741
    (212) 555-0040

* Paste them together - You can use paste to print the names and numbers side-by-side. Each line from names is displayed with the corresponding line from numbers, separated by a tab.

> paste names numbers

    Tony    (307) 555-5356
    Emanuel (212) 555-3456
    Lucy    (212) 555-9959
    Ralph   (212) 555-7741
    Fred    (212) 555-0040

* When more than two files are specified

> cat addresses

    55-23 Vine Street, Miami
    39 University Place, New York
    17 E. 25th Street, New York
    38 Chauncey St., Bensonhurst
    17 E. 25th Street, New York

> paste names addresses numbers

    Tony    55-23 Vine Street, Miami       (307) 555-5356
    Emanuel 39 University Place, New York  (212) 555-3456
    Lucy    17 E. 25th Street, New York    (212) 555-9959
    Ralph   38 Chauncey St., Bensonhurst   (212) 555-7741
    Fred   17 E. 25th Street, New York     (212) 555-0040

* Using custome delimeter - It's always safest to enclose the delimiter characters in single quotes

> paste -d'+*' names addresses numbers

    Tony+55-23 Vine Street, Miami*(307) 555-5356
    Emanuel+39 University Place, New York*(212) 555-3456
    Lucy+17 E. 25th Street, New York*(212) 555-9959
    Ralph+38 Chauncey St., Bensonhurst*(212) 555-7741
    Fred+17 E. 25th Street, New York*(212) 555-0040

* Paste together lines from the same file - Paste ls's output, use space as delimiter

> ls | paste -d',' -s
addresses,intro,lotsaspaces,names,numbers,phonebook

* Combine pairs of lines from a file into single lines

> paste -s -d '\t\n' myfile

* List the files in the current directory in three columns

> ls -1 | paste - - -

* Create a colon-separated list of directories named bin, suitable for use in the PATH environment variable

> ls -1 | paste -s -d : -
