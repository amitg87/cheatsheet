# continue

    Resume the next iteration of the enclosing FOR, WHILE or UNTIL loop.
    If N is specified, resume at the N-th enclosing loop.

## Synopsis

`continue [n]`

## Example

* Iterate over all files in current directory - continue for non-files.

```shell
for FILE in * ;
do
    if [ ! -f "$FILE" ] ; then
        echo "$FILE is not a file."
        continue
    fi
    echo "$FILE is a file."
    # process the file
done
```
