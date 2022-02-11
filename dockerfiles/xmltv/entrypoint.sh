#!/bin/sh
service cron start & tail -f /var/log/cron-1.log