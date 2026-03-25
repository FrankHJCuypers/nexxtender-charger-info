#! /bin/bash
# Processes al *.dot files
# We generate pdf files.

mkdir -p ../intermediate
for f in *.dot
do
	if [ -f "$f" ]
	then
		echo "$f"
		basename=`basename $f .dot`
		dot -Tpdf $f > "../intermediate/$basename.pdf"
	fi
done
