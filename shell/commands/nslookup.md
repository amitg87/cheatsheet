# nslookup

    query Internet domain name servers

## Synopsis

`nslookup name [server]`

## Options

## Example

* nslookup with custom name server

> nslookup tesco.com pdns194.ultradns.net

    Server:     pdns194.ultradns.net
    Address:    156.154.65.194#53

    Name:   tesco.com
    Address: 156.154.240.85

* nslookup with default name server

> nslookup tesco.com

    Server:     4.2.2.2
    Address:    4.2.2.2#53

    Non-authoritative answer:
    Name:   tesco.com
    Address: 156.154.240.85
