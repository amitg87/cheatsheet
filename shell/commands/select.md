
# select

    The WORDS are expanded, generating a list of words. The set of expanded words is printed on the standard error, each preceded by a number.
    If the line consists of the number corresponding to one of the displayed words, then NAME is set to that word. If the line is empty, WORDS and the prompt are redisplayed.
    If EOF is read, the command completes. Any other value read causes NAME to be set to null.
    If 'WORDS' is not present, `in "$@"' is assumed.
    PS3 is used for prompt.

## Synopsis

```shell
select NAME [WORDS ... ;]
do
    COMMANDS;
done
```

## Example

* Check readability of files in current directory

```shell
directoryList="$(ls)";
OLD_PS3=$PS3;
PS3="Check readability of files:" ; export PS3
select directory in $directoryList;
do
    if [ -n $directory ]; then
        echo $directory
        if [ -r $directory ]; then
            printf "Can read:%s\n" $directory
        else
            printf "Can't read: %s\n" $directory
        fi
    else
        printf "Doesn't exist" $directory
    fi
done
printf "Done";
PS3=$OLD_PS3;
```
