# case

    Selectively execute COMMANDS based upon WORD matching PATTERN. The `|' is used to separate multiple patterns.

## Synopsis

```shell
case WORD in
PATTERN1)
    COMMANDS1
    ;;
PATTERN2)
    COMMANDS2
    ;;
*)
    DEFAULT-COMMANDS
    ;;
esac
```

### Example

* Identify input string

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

* Identify input character

```shell
while :
do
    echo "type alphanumeric character:"
    read char
    case $char in
        [0-9])
            echo digit
            ;;
        [a-z])
            echo lowercase
            ;;
        [A-Z])
            echo uppercase
            ;;
        * ) echo "Something went wrong";;
    esac
done
```

* Greet based on hour of day

```shell
hour=$(date +%H)
case "$hour" in
    0?|1[01])
        echo "Good morning"
        ;;
    1[2-7])
        echo "Good afternoon"
        ;;
    *)
        echo "Good evening"
        ;;
esac
```
