+------------------------------------------------------------------------+
+   ######################## INFORME SESIÓN 4 ########################   +
+                           Alejandro Martinez                           +
+------------------------------------------------------------------------+

o  Script buildHash.sh

El script buildHash.sh crea un fichero ./.Sums que contiene los hashes creados
por el algoritmo md5 del contenido y de los permisos de los ficheros listados
en el fichero ./flst, el cual toma como entrada.
De esta manera, tendremos que llenar este fichero con nustros ficheros objetivo,
en esta lista no han de haber directorios, de manera que podríamos usarlo como
output de algun comando como los siguientes:

    $ find /<carpetaObejtivo> -type f > ./flst
    $ ls /<carpetaObjetivo> > ./flst

o  Script checkHash.sh

Este script toma como entrada la salida del anterior, y comprueba uno por uno
que no haya habido modificaciones en el contenido y en los permisos de cada uno
de los ficheros. Y en cado de que encuentre alguna diferencia nos avisará por
pantalla.


Ninguno de los dos scripts necesita opciones especiales para su ejecución. Con
lanzarlos será suficiente.

o To Do
Mejorar el script checkHash haciendo uso de diff, se puede usar un directorio
temporal al que se lo podría hacer clear tras cada ejecución.
    - más escrituras en disco
    - menos memoria
    ...

