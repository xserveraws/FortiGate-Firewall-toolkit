#!/bin/bash

FWS=fgt.list
USERNAME=admin
PASSWD='my-password'

#echo -n "Enter the username: "
#read -e  USERNAME
#echo -n "Enter the SSH password: "
#read -s -e PASSWD
#echo -ne '\n'

grep -v '^[     ]*#' $FWS | while read fw
do
        set $fw
        mkdir -p $2
        OUTFILE=$2/$2.out
        ./fgt-set.exp $1 $2 $USERNAME $PASSWD $OUTFILE
done
