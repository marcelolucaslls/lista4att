#!/bin/bash

a=""
arq=""
echo "PARA O PROGRAMA FUNCIONAR, PRIMEIRO ESCOLHA O ARQUIVO COM O R"
echo "r - Digite o nome de um arquivo que será processado."
echo "a - Remova todas as letras do arquivo."
echo "b - Remova todos os dígitos do arquivo."
echo "c - Substitua todos os caracteres que não são letras nem dígitos do arquivo por $."
echo "q - Saia do script."

while [ "$a" != "q" ] ; do
	read -p "Qual opção você deseja? " a
	if [ $a == "r" ] ; then
		read -p "Informe o arquivo que sera processado: " arq
	elif [ $a == "a" ] ;then
		sed -e 's/[A-Z]//g' -e 's/[a-z]//g' < $arq
	elif [ $a == "b" ] ; then 
		sed -e 's/[0-9]//g' < $arq 
	elif [ $a == "c" ] ; then
		sed -e 's/[^a-zAZ0-9]/$/g' < $arq
	fi
done

	
