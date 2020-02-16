#!/usr/bin/env bash

# Simple backup script

TIME=$(date +%Y-%m-%d)
FILENAME=Backup-$TIME.tar.gz
SRCDIR=$HOME
DESDIR=/run/media/alexandre/wd/Backups
tar -cpzf "$DESDIR"/"$FILENAME" "$SRCDIR"
