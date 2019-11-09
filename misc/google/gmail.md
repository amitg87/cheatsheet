# GMail

Partly borrowed from [Google Answer](https://support.google.com/mail/answer/7190)

## Search By

### Fields

* Recipient `to:`
* Sender `from:`
* CC `cc:`
* BCC `bcc:`
* Subject `subject:`
* Label `label:`
    > narrow search to inbox - label:inbox, trash - label:trash, lable: important  
* Attachment `has:`
    > 'has:attachment, 'has:drive, has:document,'has:spreadsheet', 'has:presentation', 'has:youtube', 'has:yellow-star', 'has: blue-info'  
* Attachment file type/name `filename:`
    > filename: pdf
    > filename:homework.txt
* Is `is:`
    > 'is:important', 'is:starred', 'is:read', 'is:unread', 'is:chat'

### Logical

* OR - match multiple terms - `OR or { }`
* MINUS - Remove from your results `-`
    > dinner - movie
* WORDS - Find messages with words near each other - `AROUND`
    > dinner AROUND 5 friday - meaning dinner and friday separated by 5 words

### Words

* Exact search for word or phrase `"word"` or `+word`
* Multiple word `(term1 term2)` e.g. subject:(dinner movie)

### Location

* Search Anywhere including any folder, including Spam and Trash `in:anywhere`

### Time

Have to use value as YYYY or YYYY/M/D

* After `after:`
    > after:2004/04/16
* Before `before:`
    > before:2004/04/18
* Older `older:`
    > older:2013, older:2012/7/30  
* Newer `newer:`
    > newer:2018
* Older than `older_than:` a time period using d (day), m (month), and y (year)
    > older_than:5y
* Newer than `newer_than:` a time period using d (day), m (month), and y (year)
    > newer_than:2d

### Category

* Search by certain category  

    > category:primary, category:social, category:promotions, category:updates, category:forums, category:reservations, category:purchases

* Search by size in bytes - size, larger, smaller

    > size: 100000
    > larger:10M

