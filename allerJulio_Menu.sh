#!/bin/bash
#Author: Julio Acuña
#-

#Limpar pantalla antes de empezar o programa
clear

#Declarar a variable de saída do programa
exit=0

#Función para listar os elementos dun directorio seleccionado polo usuario partindo do directorio HOME
function mostrarFicheiros(){
    clear 
    sair1=0

    while (( sair1 == 0 ))
    do
        echo Introduce a ruta que queiras listar: 
        read -p "$HOME/" ruta
        clear
        if [ -d $HOME/$ruta ]
        then
            for ficheiro in $HOME/$ruta/*
            do
                echo $ficheiro
            done
        else
            echo Non existe o directorio seleccionado
        fi

        echo Para saír pulsa 0...
        read num

        if [ $num == 0 ]
        then
            clear
            sair1=1
        else
            pass
        fi
    done
}

function comprobarFicheiro(){
    mostrarFicheiros
}

#Función para entrar nunha páxina web
function accederPaxina(){
    clear

    read -p "Introduce a páxina á que queres acceder: " paxina

    read -p "Desexa entrar á páxina en incógnito?(s/n)" incognito
   
   if [ $incognito == "s" ]
   then
    start chrome /incognito www.$paxina.es
   else
   start chrome www.$paxina.es
   fi
}

#Función calculadora para operar con 2 números 
function calculadora(){
    clear
    echo "Benvido á CALCULADORA"
    echo "-Suma(+)"
    echo "-Resta(-)"
    echo "-Multiplicación(*)"
    echo "-División(/)"
    read -p "Introduce a operación que queiras realizar:" opcion
    
    read -p "Introduce el primer número: " num1
    read -p "Introduce el segundo número: " num2

    case $opcion in
        "+")
        return $(($num1+$num2))
        
        ;;
        "-")
        return $(($num1-$num2))
        
        ;;
        "*")
        return $(($num1*$num2))
        
        ;;
        "/")
        if [ $num2 == 0 ]
        then
            echo Non se pode dividir entre 0
        else
            return $(($num1/$num2))
        fi
        ;;
    esac
    
}

#Función para decidir se continuar no programa ou saír
function saida(){
    clear
    echo "Seleccionouse a opción de saída, adiós Gerardo!"
    exit=1
    sleep 1s
}

#función para amosar as opcións que se lle ofrecen ao usuario
function mostrarOpcions(){
    #Mensaje inicial e limpeza de consola antes de iniciar a selección de opcións
    echo Hola Gerardo!
    sleep 1s
    clear
    
    echo Selecciona a opción:
    echo 1- Mostrar ficheiros dentro do directorio seleccionado
    echo 2- Comprobar se existe un ficheiro na ruta
    echo 3- 
    echo 4- Acceder a páxina web
    echo 5- Calculadora
    echo 6- Saír
}

#Función para seleccionar a opción que usa un CASE para estructurar as diferentes opciones
function seleccionarOpcion(){
 read -p "Selección: " seleccion  

 case $seleccion in
    1)
    mostrarFicheiros
    ;;
    2)
    comprobarFicheiro
    ;;
    3)
    pass
    ;;
    4)
    accederPaxina
    ;;
    5)
    calculadora
    echo $?
    ;;
    6)
    saida
    ;;

 esac
}



#Bloque principal onde se executan as funcións

while (( exit == 0 ))
do

    mostrarOpcions
    seleccionarOpcion

done

echo O programa finalizou correctamente


