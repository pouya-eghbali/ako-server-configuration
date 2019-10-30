#!/bin/sh

zfs destroy -r mongo/db@7daysago

zfs rename -r mongo/db@6daysago  @7daysago
zfs rename -r mongo/db@5daysago  @6daysago
zfs rename -r mongo/db@4daysago  @5daysago
zfs rename -r mongo/db@3daysago  @4daysago
zfs rename -r mongo/db@2daysago  @3daysago
zfs rename -r mongo/db@yesterday @2daysago
zfs rename -r mongo/db@today     @yesterday

mongo --eval 'db.fsyncLock()' --quiet   # Flush and lock
sleep 0.6                               # storage.journal.commitIntervalMs
zfs snapshot -r mongo/db@today
mongo --eval 'db.fsyncUnlock()' --quiet # Unlock mongo
