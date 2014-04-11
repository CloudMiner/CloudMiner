#! /bin/bash

# Este guión consulta información de usuario contenida en el fichero
# pasado como primer argumento. El usuario consultado se pide uno a uno
# por línea de comandos.

if [ $# -ne 1 ] ; then
	echo "Uso: $0 fichero_de_passwd" >&2
	exit 1
fi

if [ ! -f "$1" ] ; then
	echo "El fichero $1 no existe o no es regular."
	exit 2
fi

echo "Introduzca el usuario (fin para acabar): "
read usuario

while [ "$usuario" != "fin" ] ; do
	grep "^$usuario:" "$1" >temp
#	info1=$(grep "^$usuario:" "$1" | cut -d ':' -f 1)
	if [ "$?" = 0 ] ; then
		info=$(cut -d ':' -f 1 temp)
		echo "Login: $info"
		info=$(cut -d ':' -f 3 temp)
		echo "Nombre: $info" #completar AQUI!!
		
	else
		echo "El usuario $usuario no existe en $1"
	fi
	echo ""
	echo "Introduzca el usuario (fin para acabar): "
	read usuario
 done
