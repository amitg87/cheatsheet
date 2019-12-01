#!/bin/bash

# function
killed() {
    print "Killed... ";
    exit
}
interrupt() {
    printf "Interrupted... ";
    exit
}
user1(){
    printf "User1... ";
}
user2(){
    printf "User2... ";
}
debug() {
    printf "Debug... ";
}

# Associate function/commands to signals
trap killed KILL
trap interrupt INT
trap user1 USR1
trap user2 USR2
trap debug DEBUG
trap : TERM
trap '' CONT

# Print list of commands for signals
trap -p KILL
trap -p INT
trap -p USR1
trap -p USR2
trap -p

count=$SECONDS
while : ;
do
     sleep 1
     echo $SECONDS
done