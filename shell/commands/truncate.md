# truncate

    shrink or extend the size of a file to the specified size
    A FILE argument that does not exist is created.
    If a FILE is larger than the specified size, the extra data is lost. If a FILE is shorter, it is extended and the extended part (hole) reads as zero bytes.

## Synopsis

`truncate OPTION... FILE...`
`truncate [-c] -s [+|-]size[K|k|M|m|G|g|T|t] file ...`

## Options

-c

    do not create any files

-s, --size=SIZE

    set or adjust the file size by SIZE
    SIZE may be one  of following: K/k 1024, M/m 1024*1024, and so on for G, T, P, E, Z, Y.
    SIZE may also be prefixed by one of the following modifying characters: `+' extend by, `-' reduce by, `<' at most, `>' at least, `/' round down to multiple of, `%' round up to multiple of.
    Mac - use [+|-]size[K|k|M|m|G|g|T|t] file

## Examples

* Truncate file to a size

> truncate -s 0 b.txt

* Generate arbitrary content - 1000 bytes

> truncate -s 1000 b.txt

* Generate arbitrary content - 100K bytes

> truncate -s 100K newFile

* Reduce file size by 1MB

> truncate -s -1M file
