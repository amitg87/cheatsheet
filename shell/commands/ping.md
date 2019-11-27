# ping

    send ICMP ECHO_REQUEST to network hosts

## Option

-c count

    Stop after sending count ECHO_REQUEST packets. With deadline option, ping waits for count ECHO_REPLY packets, until the timeout expires.

-i interval

    Wait interval seconds between sending each packet. The default is to wait for one second between each packet normally.
-D

    Print timestamp (unix time + microseconds as in gettimeofday) before each line.

## Example

* test network connection – ping

> ping www.google.com

* limit number of attempt - 4, print time, interval - 3 seconds

> ping www.google.com -c 4 -D -i 3
