for f in *.csv
do
    filename=$(basename "$f")
    extension="${filename##*.}"
    filename="${filename%.*}"
    mongoimport --port $1 -d Northwind -c "$filename" --type csv --file "$f" --headerline
done
