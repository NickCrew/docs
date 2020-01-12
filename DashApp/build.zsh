#!/usr/local/bin/zsh
#
# Use cheatset tool to generate Dash! docsets for all files

if [ $# -eq 1 ]; then
	BLDOUT=$1
else
	BLDOUT=./output
fi

if [ ! -d $BLDOUT ]; then
	mkdir $BLDOUT
fi

for file in ./rbfiles/*.rb(.);
do
	cheatset generate $file
	mv ./*.docset $BLDOUT/.
done

zip $BLDOUT.zip $BLDOUT/*

rm -rf $BLDOUT
