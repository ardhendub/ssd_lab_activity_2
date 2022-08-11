#!/bin/bash
awk 'BEGIN{FS="/"}{if (NR!=1 && $2=="usr") print $NF}' /etc/shells | uniq
