# date

    Get/set system date and time

## Synopsis

`date [OPTION]... [+FORMAT]`

## Options

-d, --date=STRING

    display time described by STRING, not ‘now’

-u

    print UTC(GMT) time

+FORMAT

    Set custom format for date

~~~~
Print date/time based on FORMAT. FORMAT controls the output.
Interpreted sequences are:
%d     day of month (e.g., 01)
%a     locale's abbreviated weekday name (e.g., Sun)
%A     locale's full weekday name (e.g., Sunday)

%m     month (01..12)
%b     locale's abbreviated month name (e.g., Jan)
%B     locale's full month name (e.g., January)

%y     last two digits of year (00..99)
%Y     year(1999, 2012)
%C     century; like %Y, except omit last two digits (e.g., 20)

%u     day of week (1..7); 1 is Monday
%j     day of year (001..366)
%U     week number of year, with Sunday as first day of week (00..53)

%H     hour (00..23)
%I     hour (01..12)

%M     minute (00..59)

%S     second (00..60)
%s     seconds since epoch 1970-01-01 00:00:00 UTC

%N     nanoseconds (000000000..999999999)

%p     locale's equivalent of either AM or PM; blank if not known
%P     like %p, but lower case

%Z     alphabetic time zone abbreviation (e.g., EDT)
%z     timezone respective to GMT e.g. India - +530

Escape Characters

%%     a literal %
%n     a newline
%t     a tab

Padding

By default, date pads numeric fields with zeroes. The following optional flags may follow `%':

-      (hyphen) do not pad the field
_      (underscore) pad with spaces
0      (zero) pad with zeros
^      use upper case if possible
#      use opposite case if possible
~~~~

-v

    Adjust the second, minute, hour, month day, week day, month or year according to val.
    If val is preceded with a plus or minus sign, the date is adjusted forwards or backwards according to the remaining string. The date can be adjusted as many times as required using these flags.
    If val is numeric, one of either y, m, w, d, H, M or S must be used to specify which part of the date is to be adjusted.
    
    It is not possible to adjust a date to an invalid absolute day, so using the switches -v 32d will simply fail.

## Example

* Print date

> date

    Tue Sep  4 19:14:58 IST 2018

* Print date in UTC

> date -u

    Tue Sep  4 13:44:59 UTC 2018

* Print date in custom format - dd/mm/yy

> date +%d/%m/%y

    04/05/18

> date "+DATE: %Y-%m-%d%nTIME: %H:%M:%S"

    DATE: 2019-11-07
    TIME: 12:07:53

* Get date - 1st day of second month

> date -v1d -v2m

* Get date relative - last week

> date -v-1w

## Recipes

* Convert seconds since epoch time to human readable form

> date -d @1485517138

    Fri Jan 27 17:08:58 IST 2017

* Convert milli-seconds since epoch time to human readable form

> date -d @$((value/1000))

* On Mac-OS - use

> date -r 123439819723 '+%m/%d/%Y %H:%M:%S %p'

    08/26/5881 20:18:43 PM

* Get time since epoch in seconds

> date +%s

    1525427129
