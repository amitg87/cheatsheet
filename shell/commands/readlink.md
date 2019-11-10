# readlink

    print resolved symbolic links or canonical file names

## Synopsis

`readlink FILE...`

## Example

* Find link

> ln -s old/installation
> readlink installation

    old/installation

## Tip

* Difference between realpath and readlink: realpath is recursive for symbolic links, readlink is single hop
  
> realpath /usr/bin/java

    /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java

> readlink /usr/bin/java

    /etc/alternatives/java
