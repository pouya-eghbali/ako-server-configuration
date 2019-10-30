#!/bin/sh

echo "Preparing to restore @$1"
service mongod stop
zfs rollback -r mongo/db@$1
service mongod start
echo "Restored the snapshot"
