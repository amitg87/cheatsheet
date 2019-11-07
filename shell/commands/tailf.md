# tailf

    follow the growth of a log file
    tailf  is  deprecated. use tail -f instead.
    tailf will print out the last 10 lines of the given file and then wait for this file to grow.

## Synopsis

## Options

-n  
-`number`  
--lines=number

    Output the last number lines, instead of the last 10.

## Example

* Print last 100 lines and then follow

> tailf -100 catalina.out
> tailf -n 100 catalina.out

* Don't print old lines - follow now on

> tailf -n 0 catalina.out

## Note

* Define alias for tailf

> alias tailf="tail -f"
