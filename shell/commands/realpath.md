# realpath

    print the resolved path(canonicalised absolute pathname)

## Example

* See a symbolic link

> ls -l /usr/bin/java

    lrwxrwxrwx 1 root root 22 Sep 27 19:21 /usr/bin/java -> /etc/alternatives/java

## Tip

* Difference between realpath and readlink: realpath is recursive for symbolic links, readlink is single hop
  
> realpath /usr/bin/java

    /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java

> readlink /usr/bin/java

    /etc/alternatives/java

> realpath ..
