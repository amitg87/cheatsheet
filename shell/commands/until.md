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
