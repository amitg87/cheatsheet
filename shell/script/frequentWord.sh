#!/usr/bin/env bash
cat file.txt | tr ',.;:=*+!%&<>\{\}\-_\?"\(\)\\/' ' '| tr '\n\t' ' '| tr '0-9' ' '| tr -s ' ' | tr ' ' '\n'| sort | uniq -c | sort -rn