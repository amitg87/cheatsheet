# sort

    sort lines of text files/stream
    With no FILE, or when FILE is -, read standard input.
    Uses file merge sort, uses TMPDIR for temporary files storage.

## Synopsis

`sort [OPTION]... [FILE]...`

## Options

-c

    check if sorted; do not sort; with quiet - do not report bad line
-f, --ignore-case

    fold lower case to upper case characters (alternatively do tr)
-n

    numeric sort - compare according to string numerical value
-R

    random sort - shuffle, but group identical keys.
-r

    reverse the result of comparisons
-k POS1[,POS2]

    sort via a key(Sort on multiple fields); key: start a key at POS1 (origin 1), end it at POS2 (default end of line). empty sort keys before all non-empty sort keys.
-s

    stable sort - stabilize sort by disabling last-resort comparison
-t, --field-separator=SEP

    use SEP instead of non-blank as field separator/delimiter. e.g.  -t'|'
-u, --unique

    with -c, check for strict ordering; without -c, output only the first of an equal run

~~~
SIZE may be followed by the following multiplicative suffixes: % 1% of memory, b 1, K 1024 (default), and so on for M, G, T, P, E, Z, Y.
~~~

## Example

* Input file

> cat zip.txt

    Adam|12345
    Wendy|23456
    Bob|34567
    Sam|45678
    Joe|56789

* Sort by name

> gsort zip.txt

    Adam|12345
    Bob|34567
    Joe|56789
    Sam|45678
    Wendy|23456

* Sort on 2nd column - 'k2' second column, custom delimiter '|', numeric sort '-n'

> sort -k2 -t\| -n zip.txt
> sort -k2 -t'|' -n zip.txt

    Adam|12345
    Wendy|23456
    Bob|34567
    Sam|45678
    Joe|56789

* Shuffle file

> sort -R zip.txt

* Multisort - Sort on 2nd column then first.

> sort -k1,1 -k2,2 -n quota.txt

    an 1000
    bob 1000
    chad 1000
    don 1500
    eric 2000
    fred 2000
    eric 5000

> sort -k1,2 -n quota.txt

    an 1000
    bob 1000
    chad 1000
    don 1500
    eric 2000
    eric 5000
    fred 2000

* Sort process by PID

> ps -ef | sort -nk2

## Notes

* Algirithm details : Unix Sort uses an External R-Way merge sorting algorithm. In essence it divides the input up into smaller portions (that fit into memory and on disk /tmp) and then merges each portion together at the end.

This is classic example of the standard External R-Way merge , to sort a data of size N bytes with a main memory size of M so it creates N/M runs and merges R(16) at a time, the number of passes through the data is log(N/M)/log(R) passes.In fact the lower bound(runtime) for external sorting is Ω((N/M)log(N/M)/log(R)). All the external memory sorting algorithms provided in the literature are optimal so the fight here is minimizing the constant before the number of passes.

Tuning parameters:

--batch-size=NMERGE

    merge at most NMERGE inputs at once;
-S, --buffer-size=SIZE

    use SIZE for main memory buffer
--parallel=N

    change the number of sorts run concurrently to N
-T, --temporary-directory=DIR

    use DIR for temporaries, not $TMPDIR or /tmp; multiple options specify multiple directories
