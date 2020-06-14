# Ako Server Config

This repository contains a set of files to build, install, run and manage **Ako** on **FreeBSD** on **AWS**.

These files can be adapted to other IaaS/PaaS providers, or to other Meteor projects who wish to use a similar configuration.

Ako uses:

* **PM2** as process manager
* **Caddy** as reverse proxy
* **MongoDB** as database
* **Redis** for oplogging
* **ZFS** for fs, snapshots and backups
* **Grafana** for monitoring
