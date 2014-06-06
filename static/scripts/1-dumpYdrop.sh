#! /bin/bash

if [ $# -ne 1 ] ; then
	echo "Uso: $0 <tabla> ('full' para hacer un dump y drop de toda la base de datos)" >&2
	exit 1
fi


if [ "$1" != "full" ] ; then
	mysqldump --user='clminer' -p'cloudminer2014' cloudminer "$1" > ./dumps/"$1"_data_bak.sql --no-create-info --complete_insert --skip-quote-names --single-transaction
	echo "DROP TABLE cloudminer.$1;" > "$1"_drop.sql
	#echo "SELECT * FROM cloudminer.$1;" > "$1"_drop.sql
    mysql --user='clminer' -p'cloudminer2014' cloudminer < "$1"_drop.sql
    rm "$1"_drop.sql
else
    mysqldump --user='clminer' -p'cloudminer2014' cloudminer > ./dumps/full_data_bak.sql --no-create-info --complete_insert --skip-quote-names --single-transaction
    echo "DROP DATABASE cloudminer; CREATE DATABASE cloudminer;" > cloudminer_drop.sql
    mysql --user='clminer' -p'cloudminer2014' < cloudminer_drop.sql
    rm cloudminer_drop.sql
fi
