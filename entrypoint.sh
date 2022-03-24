#!/bin/sh
echo "creating crontab"
echo -e "$CRON_SCHEDULE /dobackup.sh > /logs/docker-s3-cron-backup.log 2>&1" > /etc/crontabs/root
echo "starting crond"
crond -f
