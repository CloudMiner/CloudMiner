#! /bin/bash

# Este guión consulta información de usuario contenida en el fichero
# pasado como primer argumento. El usuario consultado se pide uno a uno
# por línea de comandos.

if [ $# -ne 1 ] ; then
	echo "Uso: $0 tabla ('full' para hacer un dump de toda la base de datos)" >&2
	exit 1
fi

echo "DROP TABLE cloudminer.$1;" > "$1"_drop.sql

#if [ "$1" != "full" ] ; then
#	mysqldump --user='clminer' -p'cloudminer2014' cloudminer "$1" > ./dumps/"$1"_bak.sql --compact --no-create-info --complete_insert --skip-quote-names
#else
	