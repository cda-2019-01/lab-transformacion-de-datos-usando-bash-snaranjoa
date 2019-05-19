#Escriba su código aquí

#Eliminar filas en blanco
head -n 3 data1.csv > datas1.csv
cat datas1.csv > data1.csv
tail -n  2 data2.csv > datas2.csv
cat datas2.csv > data2.csv
rm datas*.csv

#Cambia tabulaciones y espacios por comas como separador
sed 's/[ ][ ]*/,/g' data2.csv > datas2.csv
sed 's/\t/,/g' datas2.csv > datas22.csv
cat datas22.csv > data2.csv
sed 's/\t/,/g' data1.csv > datas1.csv
cat datas1.csv > data1.csv
sed 's/\t/,/g' data3.csv > datas3.csv
cat datas3.csv > data3.csv
rm datas*.csv

#Crear .txt con lista de archivos en la carpeta
ls -1 > lista1.txt
sed -n '/.csv/p' lista1.txt > lista.txt

#Contador de filas
index=1

#Primer for
for n in $(cat lista.txt);
do
index=1
echo $n,$index; nl $n
index=$(($index + 1))
done
