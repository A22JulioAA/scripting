#!/bin/bash


exit=1

while (( exit != 0 ))
do
    echo Hola
    read -p "Salir?" salir

    if [ $salir == 0 ]
    then
        exit=$salir
    fi
done