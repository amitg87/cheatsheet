# touch

    Update the access and modification times of each FILE to the current time.
    A FILE argument that does not exist is created empty, unless -c is supplied.

## Synopsis

`touch [OPTION]... FILE...`

## OPTIONS

-a

    change only access time
-c

    do not create file
-r `file`

    use as reference file instead of current timeq
-m

    change only modification time
-d, --date=STRING

    Linux - parse STRING and use it instead of current time

## Example

* Create new file

> touch newFile

* Modify 'last access' and 'modification' time

> touch existingFile

* Modify from another file

> touch -r origiFile newFile

* Modify with custom time

> touch -d "Wed Sep  5 17:38:54 IST 2018" oldfile

## Note

* Changes to timestamps can violate conditions like - accessed before creation time.
* Changing timestamp can trigger watch tools - they trigger file modification event.
