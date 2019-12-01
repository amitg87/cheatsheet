# until

    Expand and execute COMMANDS as long as the final command in the `until' CONDITION has an exit status which is not zero.

## Synopsis

```shell
until CONDITION;
do
    COMMANDS;
done
```

## Example

* Keep asking till you get a yes - 'y', 'Y', '1'

```shell
function choice()
{
    choosen=''
    local prompt="@"
    local answer
    read -p "$prompt" answer
    case "$answer" in
        [yY1] ) choosen='y';;
        [nN0] ) choosen='n';;
        *     ) choosen="$answer";;
    esac
}
choosen="";
until [ "$choosen" == "y" ];
do
    printf "Are you sure" >&2
    choice
    if [ "$choosen" == "y" ]; then
        printf "Now you are doing good"
    fi
done
```

* Until loop is identical to a while loop with condition negated using the ! operator

```shell
i=1
until [ ! $i -le 5 ]
do
    echo $i
    i=$((i+1));
done
```

* Infinite loop

```shell
until false
do
    echo "Press [CTRL+C] to stop.."
    sleep 1
done
```
