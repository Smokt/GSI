#!/bin/bash

##
## Este script lee los ficheros de el fichero ./flst y devuelve los
## checksums en el fichero ./.Sums.
## El resultado se compone del hash del contenido, el hash de los
## permisos y el nombre de cada fichero.
##
## autor: alemart
##


## Vacío el fichero de resultados para solo tener los de esta ejecución
> ./.Sums

## Cat al fichero que contiene la lista de los ficheros sobre los que
## que se quiere aplciar el script
cat ./flst | while read fn;
do
    cS=`md5sum -b ${fn}`;
    pS=`ls -l $fn | md5sum -b`;
    echo "${cS:0:32};${pS:0:32};$fn" >>./.Sums;
done

