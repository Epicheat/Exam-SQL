#!/usr/bin/bash

user='exam'

cd `dirname $0`

[ $# == 0 ] && echo "Usage: $0 file" >&2 && exit 1

size=$(wc -l "$1" | cut -d' ' -f1)
end=$(grep -an "Questions:" -- "$1" | cut -d':' -f1)

IFS='
'
i=1;
for line in $(cat -A "$1" | tail -n $(expr $size - $end - 1)); do
    grep '\^M' -q <<< $line && m="^M" || m=''
    [ "$line" == "$m\$" ] && i=`expr $i + 1` || q[$i]+="`sed 's/\'$m'\$$//' <<< $line`"
done

[ -d /home/$user/rendu ] || mkdir /home/$user/rendu

i=1
j=0
while [ $i -lt 18 ]; do
    [ $i -lt 10 ] && o='0' || o=''
    echo -n $o$i' - '
    line=$(grep `sed 's/[0-9][0-9]. //' <<< ${q[$i]}` answers.sql -n)
    if [ "$line" == "" ]; then
	echo -e "\033[31mNot found :'(\033[0m"
    else
	echo -e "\033[32mFound !\033[0m"
	nb=$(cut -d':' -f1 <<< $line)
	head -n `expr $nb + 1` answers.sql | tail -n 1 > /home/$user/rendu/ex_$o$i.sql
	j=`expr $j + 1`
    fi
    i=`expr $i + 1`
done

echo "Estimated mark : $j/17"

[ -f /home/$user/rendu/auteur ] || echo "Don't forget your auteur file !"
