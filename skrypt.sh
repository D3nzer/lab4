#!/bin/bash

if [ "$1" == "--help" ]; then
echo "Dostepne opcje:  "
echo "--date wyswietla aktualna date"
echo "--logs LICZBA tworzy LICZBA plikow o nazwie logLICZBA.txt i wpisuje do nich dane"
echo "--logs jak wyzej ale tworzy 100 plikow"
fi
dzisiaj=$(date)
if [ "$1" == "--date" ]; 
then
echo $dzisiaj
fi

if [ "$1" == "--logs" ] && [ -n "$2" ];
then
for i in $(seq $2)
do
	echo log$i >> log$i.txt
	echo $0 >> log$i.txt
	echo $dzisiaj >> log$i.txt
done
elif [ "$1" == "--logs" ];
then
for i in $(seq 100)
do
	echo log$i >> log$i.txt
	echo $0 >> log$i.txt
	echo $dzisiaj >> log$i.txt
done
fi
