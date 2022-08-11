#!/bin/bash
LC_CTYPE=C
MAC=25-60-2F
for i in {1..3}
do
    IFS= read -d '' -r -n 1 char < /dev/urandom
    MAC+=$(printf -- '-%02x\n' "'$char")
done
printf '%s\n' "$MAC"
