#!/bin/bash

echo "Setup and configure script"
echo $1 : user
echo $2 : permission
echo $3 : directory
echo $4 : result

#read -p  "Por favor inserte el usuario: " user_group

#read -p  "Que permisos va a otorgar: " permission

#read -p "A que directorio los va a aplicar: " directory

#read -p "Donde desea guardar los resultados: " result


if [ -d "$3" ]
then
   echo "El directorio ya esta creado"
else
   echo "Creando el directorio"
   mkdir "$3"
fi


if [ "$1" == "root" ]
then 
   echo  "Cambiando los permisos del fichero"
   chmod "$2" "$3"
   echo "El permiso" $2 "le fue otorgado al directorio" $3 >> $4
else
   echo "No tiene permitido cambiar los permisos"
fi

