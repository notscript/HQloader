#!/bin/bash

#Programas necessarios: Wget, Zip
#Sistema Operacional necessario: Linux 



echo "Digite o nome da wordlist:"
read WDL 
echo ""

echo "Digite o nome da HQ:"
read HQ
echo ""

sudo wget -nv --directory-prefix="$HQ" -i "$WDL"

echo "
DONE BITCH!
DESEJA ZIPAR O DIRETORIO? (y/n)"
read RESP

if [ $RESP = "y" ]
then 
zip -r PolemicBooks.zip "$HQ"/
echo "Compactado!"
ls
fi
if [ $RESP = "n" ]
then
echo "OK, SAINDO..."
sleep 3
fi

echo "
Deseja apagar o diretorio?"
read wish 

if [ $wish = "y" ]
then
sudo rm -r -d "$HQ"/
fi
if [ $wish = "n" ]
then
echo "OK, SAINDO"
sleep 3
fi



