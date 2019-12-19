# shutdown

    Halt, power-off or reboot the machine
    All logged-in users are notified that the system is going down (custom message can be provided) and, within the last five minutes of TIME, new logins are prevented

|Time|Meaning|
|--|--|
||If no time argument is specified, "+1" is implied|
|now|shutdown now|
|+m 30|after 30 minutes|
|hh:mm|specific time - 24hr clock|

## Synopsis

`shutdown [OPTION]... TIME [MESSAGE]`

## Options

-r, --reboot

    Reboot the machine

-c

    Cancel a pending scheduled shutdown

## Example

* Shutdown now

> sudo shutdown

* Reboot now

> sudo shutdown -r now

* Shutdown after 120 minutes

> sudo shutdown +120

* Reboot it with a custom, 30 minute advance warning:

> sudo shutdown -r +30 "Planned software upgrades"

* Cancel shutdown - on Mac kill shutdown process

> shutdown -c
