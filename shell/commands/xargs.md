# xargs

    build and execute command lines from standard input - xargs reads items from the standard input, and executes the command one or more times with any initial-arguments followed by items read from standard input.

    default command to xargs is /bin/echo
    Blank lines on the standard input are ignored.
    to handle filenames with blanks and newlines, use -0 and -print0 with find

## Synopsis

## Option

-0

    Input items are terminated by a null character instead of by whitespace, and the quotes and backslash are not special (every character is taken literally). Disables the end of file string, which is treated like any other argument. Useful when input items might contain white space, quote marks, or backslashes. The GNU find -print0 option produces input suitable for this mode.

--show-limits

    Display the limits on the command-line length which are imposed by the operating system, xargs' choice of buffer size and the -s option. Pipe the input from /dev/null (and perhaps specify --no-run-if-empty) if you don't want xargs to do anything.

-n max-args

    Use at most max-args arguments per command line. Fewer than max-args arguments will be used if the size (see the -s option) is exceeded, unless the -x option is given, in which case xargs will exit.

## Example

* Convert multiline output into single line

> find . -name "*bash*" 2>/dev/null | xargs

* Run command on each output line - for each `*.java` file, print `ls -l`

> find . -name "*.java" | xargs ls -l

* Remove `*.tmp` files

> find . -name "*.tmp" | xargs rm

* Counting number of lines in each file using xargs and find

> ls -1 *.txt | xargs wc -l

* Handle filenames with space

> find . -name "*.tmp" -print0 | xargs -0 rm

* Print xargs command line limits

> xargs --show-limits

* Limit max-arguments in each xargs execution

> find . -empty | xargs echo executed\; ls

    executed; ls ./traceroute.md ./read.md

> find . -empty | xargs -n 1 echo executed\; ls

    executed; ls ./traceroute.md
    executed; ls ./read.md

## Note

* `find -exec` will be slower than `find|xargs` - `-exec` execute multiple times for each result, xargs processes arguments in group
