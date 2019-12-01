#!/usr/bin/env bash



echo "forkbomb --> :(){ :|: & };:"
#forkbomb --> :(){ :|: & };:

#Explanation:
#It’s actually a shell function; an unnamed function :() with the body enclosed in {}.
#The statement ‘:|:’ makes a call to the function itself and pipes the output to another function call—thus we are calling the function twice. & puts all processes in the background and hence you can’t kill any process.
# Finally ‘;’ completes the function definition and the last ‘:’ initiates a call to this unnamed function. So it recursively creates processes and eventually your system will hang. This is one of the most dangerous Linux commands and may cause your computer to crash!

#Remedy: How to avoid a fork bomb? Of course, by limiting the process limit: you need to edit /etc/security/limits.conf.
# Edit the variable nproc to user_name hard nproc 100. You require root privileges to modify this file.