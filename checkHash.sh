#!/bin/bash

##
## Este script comprueba que los ficheros listados en ./flst no han
## sido modificados, tanto en su contenido como en sus permisos.
## En el caso de que se hayan modificado en alguno de estos aspectos
## se emitirá un aviso por consola.
##
## autor: alemart
##


cat ./.Sums | while read line;
do
    cHash=${line:0:32};
    pHash=${line:33:32};
    file=${line:66};

    echo "$cHash $file" | md5sum --quiet -c;

    n_pHash=`ls -l $file | md5sum -b`;
    n_pHash=`echo ${n_pHash:0:32}`;
    if [ "$pHash" != "$n_pHash" ]; then
        echo "### Se han modificado los permisos del fichero $file ###"
    fi

done


