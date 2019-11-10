# cut

    remove sections from each line of files
    With no FILE, or when FILE is -, read standard input.

## Synopsis

`cut OPTION... [FILE]...`

## Options

-b, --bytes=LIST

    select only these bytes
-c, --characters=LIST

    select only these characters
-d, --delimiter=DELIM

    use DELIM instead of TAB for field delimiter
-f, --fields=LIST

    select only these fields; also print any line that contains no delimiter character, unless the -s option is specified
--complement

    complement the set of selected bytes, characters or fields

Use  one,  and only one of -b, -c or -f.  Each LIST is made up of one range, or many ranges separated by commas.  Selected input is written in the same order that it is read, and is written exactly once.  Each range is one of:

|Range|Meaning|
|---|---|
|N|N'th byte, character or field, counted from 1|
|N-|from N'th byte, character or field, to end of line|
|N-M|from N'th to M'th (included) byte, character or field|
|-M|from first to M'th (included) byte, character or field|
|N,M,..|character N,M|

## Examples

* Display user names(1st column)

> cat /etc/passwd | cut -f 1 -d:

* Display all columns except 1st column - custom delimeter

> head /etc/passwd | cut -f 1 -d: --complement

cat /tmp/data_2017.txt | tr '/' "\t" | cut -d$'\t' -f1,5-8,10 > /tmp/data_2017_processed.txt

* Input File

> cat catTest.txt

    amit   gangrade
    asdf asdf asdf adsf

    mit gangrade

* Fourth character in each line

> cat catTest.txt | cut -c4

    t
    f

* cut first 3 characters of each line

> cat catTest.txt | cut -c1-3

    ami
    asd

    mit

* Charater 3 to end of line

> cat catTest.txt | cut -c3-

    it   gangrade
    df asdf asdf adsf

    t gangrade

* First and third character

> cat catTest.txt | cut -c1,3

    ai
    ad

    mt
