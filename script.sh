#Escriba su código aquí

#Eliminar filas en blanco
head -n 3 data1.csv > datas1.csv
cat datas1.csv > data1.csv
tail -n  2 data2.csv > datas2.csv
cat datas2.csv > data2.csv
rm datas*.csv

#Imprimir número de la fila en primera columna
awk '{print FNR "," $0 }' data1.csv > datas1.csv
awk '{print FNR "," $0 }' data2.csv > datas2.csv
awk '{print FNR "," $0 }' data3.csv > datas3.csv

#Agregar nueva columna con nombre del archivo
for f in datas*.csv;
do
	sed -i "/^$f,/! s/^/$f,/" "$f"
done

#Unir los archivos
{ for f in datas*.csv; do tail -n+1 "$f"; done; } > archivo.csv
cat archivo.csv

rm datas*.csv
