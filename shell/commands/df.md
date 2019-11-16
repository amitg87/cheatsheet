# df

    report file system disk space usage
    displays the amount of disk space available on the file system containing each file name argument. If no file name is given, the space available on all currently mounted file systems is shown.
    If an argument is the absolute file name of a disk device node containing a mounted file system, df shows the space available on that file system rather than on the file system containing the device node.

## Synopsis

`df [OPTION]... [FILE]...`

## OPTIONS

-B, --block-size=SIZE
    scale sizes by SIZE before printing them; e.g., '-BM' prints sizes in units of 1,048,576 bytes; see SIZE format below

-h

    print sizes in powers of 1024 (e.g., 1023M)

--total

    elide all entries insignificant to available space, and produce a grand total

-T

    print file system type

The SIZE argument is an integer and optional unit (example: 10K is 10*1024).  Units are K,M,G,T,P,E,Z,Y  (powers  of  1024)  or  KB,MB,... (powers of 1000).

## Example

* Print disk usage in GB

> df -BG

    Filesystem     1G-blocks  Used Available Use% Mounted on
    /dev/disk1          233G  190G       43G  82% /
