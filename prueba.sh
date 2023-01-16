#!/bin/bash
# Author: Julio
# -

# almacenamos na variable usuario o valor do comando whoami que nos devolve o usuario actual conectado
usuario=$(whoami)
echo Usuario actual: $usuario
#Agora co comando read -p mostraremos unha mensaxe por consola e recolleremos de teclao o que escriba o usuario
read -p "Introduce o novo nome para o usuario: " novoNome

#Con un condicional valoramos se a variable novoNome está vacía, mediante -z que nos indica se está vacia ou non.
if [ -z "$novoNome" ]
then
    echo Novo nome: Non se modificou - $usuario
else
    #Se a variable non esta vacía asignámoslle a usuario o novo nome e imprimímolo por pantalla
    usuario=$novoNome
    echo Novo nome: $novoNome
fi





