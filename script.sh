#Escriba su código aquí

#Eliminar filas en blanco
head -n 3 data1.csv > datas1.csv
cat datas1.csv > data1.csv
tail -n  2 data2.csv > datas2.csv
cat datas2.csv > data2.csv
rm datas*.csv

#Crear .txt con lista de archivos en la carpeta
ls -1 > lista1.txt
sed -n '/.csv/p' lista1.txt > lista.txt

