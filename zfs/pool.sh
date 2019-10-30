#!/bin/sh

zpool create mongo /dev/$1
zpool set autoexpand=on mongo
zfs create mongo/db
chown -R mongodb:mongodb /mongo