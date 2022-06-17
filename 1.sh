#!/bin/bash

read -p "Escreva o nome do arquivo: " arq
echo

cat $arq | sed -r 's/[[:alnum:]].* {2,}/ /g'

