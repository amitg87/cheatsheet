# find

    Find files - search for files in directory
    Searches the directory tree rooted at each given file name by evaluating the given expression from left to right, according to the rules of precedence, until the outcome is known (the left hand side is false for and operations, true for or), at which point find moves on to the next file name.
    By default, find visits directories in pre-order, i.e., before their contents. Note, the default is not a breadth-first traversal.

## Synopsis

`find [-Olevel] [path...] [expression]`

## Examples

> find /reports/1998 -name alpha -type f -print -exec lp {} \;

* Starting directory - /reports/1998
* Filter by name (files whose name is alpha) -name alpha
* File by type - only files -type f
* Action - display pathname for matching files `-print` - print matching files using lp command -exec lp {} \;

### Search based on Accessed, Modified, Created time of a file

|Name| Details|
|--|--|
|Access| Last time the file was read, view or displayed (e.g. more, less)|
|Modify| Last the file content was modified (e.g. vi)|
|Change| Last meta data of the file been modified (e.g. chmod, chown)|

Date/Time Option

|Option|Description|
|--|--|
|-mtime|Modified Time(days)|
|-atime|Accessed Time(days)|
|-ctime|Created Time(days)|
|-cmin|Created Time(Minutes)|
|-amin|Accessed Time(Minutes)|
|-mmin|Modified Time(Minutes)|

Time range

|Option|Description|
|--|--|
|+n|files last modified more than n days ago|
|n|files last modified exactly n days ago|
|-n|files last modified fewer than n days ago|

* Modified in fewer than 5 days

> find / -mtime -5 -print

* Modified more than 90 days ago

> find / -mtime +90 -print

* Find files created in last 3 days

> find . -ctime -3 -print

* Find files created in 1 to 3 days - more than 1 day and less than 3 day

> find . -ctime +1 -a -ctime -3

* Find files created/modified/accessed in last 60 minutes

> find / -mmin -60  
> find / -cmin -60  
> find / -amin -60

### Search based on Size

|Option|Description|
|--|--|
|+n|files that contain more than n blocks|
|n|files that contain exactly n blocks|
|-n|files that contain fewer than n blocks|

Size Unit Option

|Option|Description|
|--|--|
|G|GB - Giga Byte|
|M|MB - Mega Byte|
|K|KB - Kilo Byte|
|C|bytes/characters|

* find files bigger than 2000 blocks

> find / -size +2000 -print

* Find large files > 1G

> find . -size +1G -print

* Find Size between 50MB – 100M

> find / -size +50M -size -100M

* Find and Delete 100MB Files

> find / -size +100M -exec rm -rf {} \;

* Finding system files greater than a certain size

> find / -size +2000000k -printf "Size: %kK\tPath: %p\n"

### Search Based on Name

* Case Sensitive Search -name

> find / -name alpha -print

* Case Insensitive Search -iname

> find /home -iname tecmint.txt

* Getting rid of ViM swap (.swp) files

> find . -name ".*.swp" | xargs rm -f

* Find all log files with certain string

> find . –name "*.log" –print | xargs grep "Exception"

* File all Hidden Files

> find /tmp -type f -name ".*"

### Search based on type of file

|Type|Description|
|--|--|
|f|Regular or normal file|
|d|Directory|
|b|Block special device file|
|c|Character special device file (raw)|
|l|Symbolic link|
|p|Named pipe|

* Find only files

> find . -type f

* Find only directories

> find . -type d

* Find Directories Using Name

> find / -type d -name Tecmint

* Find and remove Multiple File

> find . -type f -name "*.txt" -exec rm -f {} \;  
> find . -type f -name "*.mp3" -exec rm -f {} \;

* Find all symbolic links

> find . -type l -print -exec ls -l {} \;
> find . -type f -ls

* File all Hidden Directories

> find /tmp -type d -name ".*"

### Search Empty Files

Find Empty Files
> find /tmp -type f -empty  
> find . -size 0

Find all Empty Directories
> find /tmp -type d -empty

### Search based on Permissions

* Find Read Only Files

> find / -perm /u=r

* Find Executable Files

> find / -perm /a=x

* Find Files With 777 Permissions

> find . -type f -perm 0777 -print

* Find Files Without 777 Permissions

> find / -type f ! -perm 777

* Find SUID Files

> find / -perm /u=s

* Find SGID Files

> find / -perm /g=s

* Find all the files whose StickyBit is set

> find / -perm /o=t

* Find Files with 777 Permissions and Chmod to 644

> find / -type f -perm 0777 -print -exec chmod 644 {} \;

* Find SGID Files with 644 Permissions

> find / -perm 2644

* Find Sticky Bit Files with 551 Permissions

> find / -perm 1551

### Search based on Owner and Group

* Search for all the files with name test.txt and the owner of this file is Surendra

> find / -user Surendra –name test.txt

* find all the files whos name is test.txt and owned by a group called redcluster

> find / -group redcluster –name test.txt

### Search Modifiers - Limit Search based on depth

* Finding files only in the current directory not searching on subdirectories

> find . -maxdepth 1 -type f -newer first_file

### Search Modifiers - Search based on logical operation

Logical Operations

|Option|Description|
|--|--|
|-a|AND|
|-o|OR|
|!|Negation|

* Find all files in the /dev directory and its subdirectories that are not block special device files, character special device files, or directories

> find /dev ! \( -type b -o -type c -o type d \) -print

* Find only file - ignore directories, etc

> find . ! \( -type d \)

### Search Based on regex

-regex pattern
File name matches regular expression pattern. This is a match on the whole path, not a search. For example, to match a file named './fubar3', you can use the regular expression '.*bar.' or '.*b.*3', but not 'f.*r3'. The regular expressions understood by find are by default Emacs Regular Expressions, but this can be changed with the -regextype option.

-regextype type
Changes the regular expression syntax understood by -regex and -iregex tests which occur later on the command line. Currently-implemented types are emacs (this is the default), posix-awk, posix-basic, posix-egrep and posix-extended.

* Find files with name pattern *txt

> find . -regex ".*txt" -regextype posix-extended

### Search Depth control

-maxdepth levels
Descend at most levels (a non-negative integer) levels of directories below the command line arguments. -maxdepth 0 means only apply the tests and actions to the command line arguments.

> find . -maxdepth 1 -regex ".*txt"
> find . -maxdepth 2 -regex ".*txt"

## Actions

### Print Action -print

-print is an action that tells find to display the pathnames of all files that match the options given before -print. If you put the -print action before other options in the command line, those options are not used in the selection process.
If no action is specified on the command line, -print is usually done by default. 

* Prints all files that contain fewer than 20 blocks. The -mtime option is ignored because it comes after the -print action on the command line

> find / -size -20 -print -mtime +30

### Execute Action -exec

-exec is an action that lets you specify a UNIX command to run on each of the files that match the options
given:

Following -exec, you should specify a complete UNIX command and put {} where the filename will be inserted. Add \; at the end of the command to complete the required syntax.

* chmod runs on every file named alpha so that everyone can read the file

> find / -name alpha -exec chmod a+r {} \;  

* Remove all files named core

> find / -name core -exec rm -f {} \;

* Remove all node_module folders (or any type of folder/file)

> find . -name "node_modules" -exec rm -rf '{}' +

**Note**: If you have thousands of files to process, xargs is more efficient than -exec. With -exec several commands are run whereas with xargs only one command with all files names as parameter is created.
> find / -name core -print | xargs rm -f

Handling filenames with spaces

> find . -name "*file*" -print0 | xargs -0 echo

### Execute Action -delete

find has an option called –delete which can be used in place of  -exec rm {} \;

* Delete all empty files

> find . -empty -delete
