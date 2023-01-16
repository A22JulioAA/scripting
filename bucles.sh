#!/bin/bash
#Author: Julio
# -

homeUsuario=$JAVA_HOME

for file in $homeUsuario
do
    if [ -d $file ]
    then
        echo $file é un directorio
    else
        echo $file é un arquivo
    fi
done