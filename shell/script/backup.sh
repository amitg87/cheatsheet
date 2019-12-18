#!/bin/sh
Failed() {
    if [ $1 -ne 0 ]; then
        echo "Failed. Exiting."
    exit
    fi
    echo $2
}
YesNo() {
   echo -e "$1 (y/n)?\c"
   read RESPONSE
   case $RESPONSE in
       [yY]|[Yy][Ee][Ss]|*)
           RESPONSE=1;;
       [nN]|[Nn][Oo])
      RESPONSE=0;;
       *)
      RESPONSE=0;;
   esac
}
echo -e "Deleting old backups, please wait... "
rm -r ~/backup > /dev/null 2>&1
Failed $? "Backup Deleted Successfully."

YesNo "Make Backup"
if [ $RESPONSE -eq 1 ]; then
    echo -e "Making backup, please wait..."
    cp -r . ~/backup
    Failed $? "Backup successful."
fi
