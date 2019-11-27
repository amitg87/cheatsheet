# hostname

    Show or set the system's host name

## Synopsis

`hostname`

## Option

-I

    Display all network addresses of the host. This option enumerates all configured addresses on all network interfaces. The loopback interface and IPv6 link-local addresses are omitted.

-A
    Displays all FQDNs of the machine. This option enumerates all configured network addresses on all configured network interfaces, and translates them to DNS domain names.

## Example

* View hostname

> hostname

* View IP address

> hostname -I

* Print FQDN hostname

> hostname -A

    ip-10-0-*-*.eu-west-1.compute.internal
