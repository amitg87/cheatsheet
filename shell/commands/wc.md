# wc

    word count - print counts of newline, word, and byte for each file/stream
    By default prints number of bytes, words, lines
    If no files are specified, the standard input is used and no file name is displayed. The prompt will accept input until receiving EOF, or [^D] in most environments.

## Synopsis

`wc [OPTION]... [FILE] [FILE]`

## Options

-c  

    get number bytes

-m  

    get number characters

-n  

    get number lines

-w  

    get number words

## Example

* Word count on file

> wc fruits.txt

    1       2      14

* Count lines, words, characters separately

> wc -l fruits.txt
> wc -w fruits.txt
> wc -c fruits.txt

## Note

* Only one of -c or -m can be used at a time.
* Number of Bytes is bigger than number of character for multi-byte character encodings like UNICODE.

> wc -c unicode.txt
> wc -m unicode.txt

    अँकड़ाहट -> bytes - 25, characters - 9
