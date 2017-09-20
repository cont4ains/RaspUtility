#!/bin/bash
#BUSCA UMA LISTA DE ASTEROIDES DE ESTAO PROXIMOS DA TERRA

printf "Lista dos Asteroides nas proximidades da terra\n\n"
echo "http://www.painelglobal.com.br/terremoto.php?mapa=20-0901-43"  #DEFINA O SITE A SER ANALISADO
   wget -O- -i- |
   hxnormalize -x |
   hxselect -i "table.table_sismo" |  #DEFINA A CLASS DA PAGINA HTML
   lynx -stdin -dump > spaco #ARQUIVO DE TEXTO COM OS DADOS
