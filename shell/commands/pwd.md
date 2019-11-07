# pwd

    print working directory
    If current directory is symbolic link - symbolic path is shown
    Based on environment variable: $OLDPWD for previous directory and $PWD for current directory

## Options

-L, --logical

    use PWD from environment, even if it contains symlinks(default)

-P, --physical

    avoid all symlinks

## Example

* To differentiate between symbolic and physical

> ln -s /home/amit/temp/server /home/amit/server
> cd server

    /home/amit/temp/server
> pwd -L

    /home/amit/temp/server
> pwd -P

    /home/amit/server
