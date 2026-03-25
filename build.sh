#! /bin/bash
# - Generates pdf or png files from diagrams (puml, dot)
#   in the intermediate directory.
# - runs latexmk in order to generate the document in the output directory
cd puml
./pumlToPdfOrPng.sh

cd ../dot
./DotToPdf.sh

cd ..
./buildLaTeX.sh

