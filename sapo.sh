#!/bin/bash
filename="$1"
while read -r line
do
   URLS="$line"
   IP='10.109.1.1'
   today_date=`date +%d/%b/%Y`
   conact_1=" - - ["
   concat_2=":00:00:00 +0000] "
   date_concat=$conact_1$today_date$concat_2
   GET='"GET '
   protocol=' HTTP/1.1" 304 0 304 0 0 0 655 456 645 368 0'
   final_url=$IP$conact_1$today_date$concat_2$GET$URLS$protocol
   echo $final_url
done < "$filename"
