#!/bin/bash

#Programas necessarios: Wget, Zip
#Sistema Operacional necessario: Linux 


echo -e "\e[32m
####################################################################################

ooooo ooooo  ooooooo  o888                               oooo                        
 888   888 o888   888o 888   ooooooo     ooooooo    ooooo888  ooooooooo8 oo oooooo   
 888ooo888 888     888 888 888     888   ooooo888 888    888 888oooooo8   888    888 
 888   888 888o  8o888 888 888     888 888    888 888    888 888          888        
o888o o888o  88ooo88  o888o  88ooo88    88ooo88 8o  88ooo888o  88oooo888 o888o       
                  88o8                                               
                                                                        by: NotScript 
##################################################################################### \e[1m               
"

echo "ATENÇÃO, A WORDLIST DEVE SER CRIADA NO MESMO DIRETORIO ONDE O SCRIPT SE ESTIVER!
"
echo "Digite o nome da wordlist: [ex: lista.txt]"
read WDL 
echo ""

echo  "Digite o nome da HQ:"
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
echo "Compactado! -> $(ls PolemicBooks.zip)"
fi
if [ $RESP = "n" ]
then
echo "OK, SAINDO..."
sleep 3
exit
fi

echo "
Deseja apagar o diretorio? (y/n)"
read wish 

if [ $wish = "y" ]
then
sudo rm -r -d "$HQ"/
echo "DELETADO! SAINDO"
sleep 3
exit
fi
if [ $wish = "n" ]
then
echo "OK, SAINDO"
sleep 3
exit
fi



