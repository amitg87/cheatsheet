# dirname

    strip non-directory suffix from file name
    The dirname utility deletes the filename portion, beginning with the last slash `/' character to the end of string (after first stripping trailing slashes), and writes the result to the standard output.
    If NAME contains no /'s, output '.' (meaning the current directory).

## Synopsis

`dirname NAME`

## EXAMPLES

> dirname /home/martin/docs/base.wiki

    /home/martin/docs

> dirname /home/martin/docs/

    /home/martin

> dirname /

    /

## Tip

* if NAME contains no /'s, output '.' (meaning the current directory)

> dirname base.wiki

    .
> dirname .

    .
