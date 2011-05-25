#!/bin/bash

find /data/mail/INBOX -type f -print0 | \
  xargs -0 -n 1 -r /bin/bash -c 'lbdb-fetchaddr -c "utf-8" < "$1"' lbdb-fetchaddr


# remove dups
SORT_OUTPUT=name /usr/lib/lbdb/lbdb-munge

