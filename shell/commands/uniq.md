# uniq

    report/omit/filter adjacent matching(repeating) lines from INPUT (or standard input), writing to OUTPUT (or standard output).
    With no options, matching lines are merged to the first occurrence.
    Always use sort before uniq. 'uniq' does not detect repeated lines unless they are adjacent.

## Synopsis

`uniq [OPTION]... [INPUT [OUTPUT]]`

## Options

-c, --count

    prefix lines by the number of occurrences

-d, --repeated

    only print duplicate lines, one for each group

-i, --ignore-case

    ignore differences in case when comparing

-u, --unique

    only print unique lines

-s, --skip-chars=N

    avoid comparing the first N characters

## Example

* Input

> cat fruits1.txt

    peach
    peach
    Peach
    orange
    apple
    apple
    peach

* Find uniques

> uniq fruits1.txt

    peach
    Peach
    orange
    apple
    peach

_Notice peach occurs twice_
Why? Only adjacent duplicate lines are merged, non-adjacent remain as is.
_Notice peach and Peach are different_
Default case sensitive comparison.

* Find uniques - case insensitive way

> uniq -i fruits1.txt

    peach
    orange
    apple
    peach

* Only duplicates

> sort fruits1.txt | uniq -d

    peach
    apple

* Print counts

> uniq -c fruits1.txt

    2 peach
    1 Peach
    1 orange
    2 apple
    1 peach

* Skipping characters while comparing

> cat similar.txt

    beach
    peach
> uniq -s 1 -c input.txt

    2 beach
