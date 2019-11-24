# if

    Conditional execution of code
    if exit status of CONDITION is zero, then `then` list is executed in turn

## Synopsis

    ```shell
    if CONDITION; then
        COMMANDS;
    elif CONDITION; then
        COMMANDS;
    else
        COMMANDS;
    fi
    ```

## Example

* Count number of users logged in shell

```shell
USERS=`who|wc -l`
if [ $USERS -eq 0 ] ; then
    echo "No users logged in"
else
    echo $USERS
fi
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
