# function

    Create a simple command invoked by NAME which runs COMMANDS.
    Arguments on the command line along with NAME are passed to the function as $0 .. $n

## Synopsis

```shell
function NAME ()
{ 
    COMMANDS
}
```

```shell
NAME ()
{
    COMMANDS;
}
```

## Example

* List directory in $PATH

```shell
function lspath() {
    OLDIFS="$IFS"
    IFS=:
    for DIR in $PATH ; do
        echo $DIR ;
    done
    IFS="$OLDIFS"
}
lspath $PATH
```

* Add directory to $PATH

```shell
function SetPath() {
    PATH=${PATH:="/sbin:/bin"};
    for _DIR in "$@"
    do
        if [ -d "$DIR" ] ; then
            PATH="$PATH":"$DIR";
        fi
    done
    export PATH
unset _DIR
}
```

* Create a function - asks for yes/no

```shell
# Let the user make a choice about something and return a standardized
# answer. How the default is handled and what happens next is up to
# the if/then after the choice in main
# Called like: choice <promtp>
# e.g. choice "Do you want to play a game?"
# Returns: global variable CHOICE
function choice () {
    CHOICE=''
    local prompt="$*"
    local answer
    read -p "$prompt " answer
    case "$answer" in
        [yY1] ) CHOICE='y';;
        [nN0] ) CHOICE='n';;
        * ) CHOICE="$answer";;
    esac
}
choice "Do you agree?"
```
