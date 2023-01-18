#!/bin/bash
#Author: Julio
# -

homeUsuario=$HOME/SistemasInformaticos/*

for file in $homeUsuario
do
    if [ -d $file ]
    then
        echo $file é un directorio
        sleep 1s
        
    else
        echo $file é un arquivo
        sleep 1s
        
    fi
done