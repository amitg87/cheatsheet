# for

    for loop is count loop - pre-determined list of items/times

## Synopsis

### Form 1

    The `for' loop executes a sequence of commands for each member in a list of items.
    If `in WORDS ...;' is not present, then `in "$@"' is assumed. For each element in WORDS, NAME is set to that element, and the COMMANDS are executed.

```shell
for NAME [in WORDS ... ;]
do
    COMMANDS;
done
```

### Form 2

    C style introduced by c-shell

```shell
for (( INITIALIZE; CONDITION; INCREMENT ));
do
    COMMANDS;
done
```

## Examples

* Infinite loop

```shell
for (( ; ; ))
do
   echo "Pres CTRL+C to stop..."
   sleep 1
done
```

* For loop - c style - print 1 to 10 number

```shell
max=10
for ((i=1; i <= max ; i++))
do
    echo $i...
    sleep 1
done
```

* Count file/directory in current folder

```shell
filecount=0;
directorycount=0;
for filename in *
do
    if [ -f "$filename" ]; then #if a file
        filecount=$((filecount+1));
    elif [ -d "$filename" ]; then
        directorycount=$((directorycount+1));
    fi
done
echo "Files: " $filecount;
echo "Directory: " $directorycount;
```

* Count executables in $PATH

```shell
OLDIFS=$IFS
IFS=":"
count=0
for path in $PATH
do
    cd $path
    count=$((count+ `ls -1|wc -l`))
done

echo "Total number of executables: "$count
IFS=$OLDIFS
```

* For loop enumerated list

```shell
for i in 1 2 3 4 5 6 7 8 9 10
do
    for j in 1 2 3
    do
        echo -n "."
        sleep 1;
    done
    echo -n $i
done
```
