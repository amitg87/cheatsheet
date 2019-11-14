# grep, egrep, fgrep, zgrep, zegrep, zfgrep

    global regular expression print - file pattern searcher
    grep searches the named input FILEs for lines containing a match to the given PATTERN.
    By default, grep prints the matching lines. IF multiple files are specified - each match is prefixed by file name.
    If no files are specified, or if the file “-” is given, grep searches standard input.

    In addition, the variant programs egrep, fgrep and rgrep are the same as grep -E, grep -F, and grep -r, respectively. These variants are deprecated, but are provided for backward compatibility.
    grep - regular expression search tool
    egrep - extended grep: extended regular expression
    fgrep - fast grep: search multiple regular expression. search for fixed strings. uses faster algos.
    zgrep, zegrep, zfgrep - grep, egrep, fgrep for zip files

## Synopsis

`grep [OPTIONS] PATTERN [FILE...]`

## OPTIONS

### Matching Control

-e PATTERN

    Use PATTERN as the pattern. This can be used to specify multiple search patterns, or to protect a pattern beginning with a hyphen (-). (-e is specified by POSIX .)
-i

    Ignore case distinctions in both the PATTERN and the input files.
-v

    Invert the sense of matching, to select non-matching lines.
-w

    search for as a word (as if surrounded by `[[:<:]]' and `[[:>:]]'
-x

    Select only those matches that exactly match the whole line.

### General Output Control

-c, --count

    Suppress normal output; instead print a count of matching lines for each input file.
-l, --files-with-matches

    Suppress normal output; instead print the name of each input file from which output would normally have been printed. The scanning will stop on the first match.
-L, --files-without-match

    Suppress normal output; instead print the name of each input file from which no output would normally  have been printed. The scanning will stop on the first match.
-m NUM, --max-count=NUM

    Stop reading a file after NUM matching lines. If the input is standard input from a regular  file,  and NUM matching lines are output, grep ensures that the standard input is positioned to just after the last matching line before exiting, regardless of the presence of trailing context lines. This enables a calling process to resume a search. When grep stops after NUM matching lines, it outputs any trailing context lines.

### Output Line Prefix Control

-n, --line-number
    Prefix each line of output with the 1-based line number within its input file.

-H, --with-filename
    Print the file name for each match. This is the default when there is more than one file to search.

### Context Line Control

-A NUM

    Print NUM lines of trailing context after matching lines.
-B NUM

    Print NUM lines of leading context before matching lines.
-C NUM

    Print NUM lines of output context.(before and after)

### File and Directory Selection

-r

    Read all files under each directory, recursively
    if no file operand is given, grep searches the working directory
--exclude=GLOB

    Skip files whose base name matches GLOB (using wildcard matching). A file-name glob can use *, ?, and [...]  as wildcards, and \ to quote a wildcard or backslash character literally.
--include=GLOB

    Search only files whose base name matches GLOB (using wildcard matching as described under --exclude).
--exclude-dir=DIR

    Exclude directories matching the pattern DIR from recursive searches.

## Example

* Search

> grep CMDB grep.txt

    Barbi 25 EasyCMDB Christchurch
    Max 25 Easy CMDB Christchurch

* Case Insensitive search

> grep -i nathan grep.txt

* Count

> grep -c CMDB grep.txt

* Search exact term

> grep 'Easy CMDB' grep.txt
Max 25 Easy CMDB Christchurch

* Show line number

> grep -n 'Easy' grep.txt

    3:Barbi 25 EasyCMDB Christchurch
    4:Max 25 Easy CMDB Christchurch

* Search for exact word - ai would match 'Chennai', using exact word match

> grep -w 'ai' grep.txt

* Recursive search

> grep -r 'Nathan' .

* Search for file having pattern

> grep -l 'Nathan' grep.txt

* Invert search - lines not having expression

> grep -v 'Easy' grep.txt

    surendra 31 IBM Chennai
    Steve 45 BOA London
    Nathan 20 Wipro Newyark
    David 20 ai Newyark

* Search for 'a' followed by zero or more 'b' then 'c'

> grep -E 'ab*c' regex.txt

* Search for 'a' followed by one or more 'b' then 'c'

> grep -E 'ab+c' regex.txt

* Search for 'a' followed by max one 'b' then 'c'

> grep -E 'ab?c' regex.txt

* Search for 'a' followed by 'b' or 'd' then 'c'

> grep -E 'a(b|d)c' regex.txt

* Search for 'a' followed by one to three 'b' or 'd' then 'c'

> grep -E 'a(b|d){1,3}c' regex.txt 

## Recipe

* Find number of occurences in each file

> grep -lrc 'Nathan' .
