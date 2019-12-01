# break

    Exit from within a FOR, WHILE or UNTIL loop.
    Breaking out of netsted loop - if N is specified, break N levels.

## Synopsis

`break [n]`

## Example

* Infinite loop
  * if q, Q, quit - break
  * else run command

```shell
while :
do
    echo "type q,Q, Quit to exit"
    read CMD
    case $CMD in
        [qQ]|[qQ][uU][iI][tT])
            break ;;
        *)
            $CMD ;;
    esac
done
```
