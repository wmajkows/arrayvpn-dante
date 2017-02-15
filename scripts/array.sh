#!/bin/bash
server=$ARRAY_SERVER
user=$ARRAY_USER
password=$ARRAY_PASSWORD

/root/array_vpnc -hostname ${ARRAY_SERVER} -username ${ARRAY_USER} -passwd ${ARRAY_PASSWORD} &

while [ 1 ]; do

  if [ $(ip add sh dev tun0 | grep inet | wc -l) -ne 0 ]; then
     break
  fi

  sleep 5

done

/usr/sbin/danted -f /etc/danted.conf -D

/bin/bash
