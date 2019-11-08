# time

    Execute Commands and print a summary of the real time, user CPU time, and system CPU time spent executing PIPELINE when it terminates.
    Real refers to actual elapsed time; User and Sys refer to CPU time used only by the process.

|Time|Description|
|--|--|
|real|Real is wall clock time - time from start to finish of the call. This is all elapsed time including time slices used by other processes and time the process spends blocked (for example if it is waiting for I/O to complete)|
|user|User is the amount of CPU time spent in user-mode code (outside the kernel) within the process. This is only actual CPU time used in executing the process. Other processes and time the process spends blocked do not count towards this figure|
|sys|Sys is the amount of CPU time spent in the kernel within the process. This means executing CPU time spent in system calls within the kernel(man 2 - fork, exec, etc), as opposed to library code, which is still running in user-space. Like 'user', this is only CPU time used by the process. See below for a brief description of kernel mode (also known as 'supervisor' mode) and the system call mechanism.|
|user+sys|The total CPU time (user time + sys time) may be more or less than real time. Depends on how much actual CPU time your process used. If the process has multiple threads it could potentially exceed the wall clock time reported by Real|

## SYNOPSIS

`time COMMAND [ ARGS ]`

## Example

> time host wikipedia.org

    wikipedia.org has address 208.80.152.201
    wikipedia.org mail is handled by 10 mchenry.wikimedia.org.
    wikipedia.org mail is handled by 50 lists.wikimedia.org.

    real    0m0.287s
    user    0m0.010s
    sys     0m0.010s
