#!/bin/bash
LC_CTYPE=C
MAC=65-
for i in {1..6}
do
    IFS= read -d '' -r -n 1 char < /dev/urandom
    MAC+=$(printf -- '-%02x\n' "'$char")
done
printf '%s\n' "$MAC"
