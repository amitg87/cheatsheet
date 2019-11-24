# while

    Expand and execute COMMANDS as long as the final command in the

## Synopsis

    ```shell
    while CONDITION;
    do
        COMMANDS;
    done
    ```

## Example

* Infinite loop

```shell
while :
do
    echo "Press [CTRL+C] to stop.."
    sleep 1
done
```

```shell
while true
do
    echo "Press [CTRL+C] to stop.."
    sleep 1
done
```

* Infinite loop - read characters - identify type

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

* here files - read files line by line

```shell
while read file; do
    ls "$file"
done < some-input
```

* here files - append output to a file

```shell
while :
do
   date
   who
   sleep 300
done >> logfile
```

* Sentinel type loop

```shell
i=1
while [ $i -le 5 ]
do
    echo $i
    i=$((i+1));
done
```

* Number guess game

```shell
magicnum=$(($RANDOM%10+1))
echo 'guess number between 1 and 10'
echo "Random number is : $magicnum"
set +x
while read guess; do
    sleep 1;
    if [ "$guess" = $magicnum ];
    then
        echo 'Right!';
        break;
    fi
    echo 'Wrong!!!';
done
```
