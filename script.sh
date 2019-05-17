#Escriba su código aquí

#Crear .txt con lista de archivos en la carpeta
ls -1 > lista1.txt
sed -n '/.csv/p' lista1.txt > lista.txt
