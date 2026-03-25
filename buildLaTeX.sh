#! /bin/bash
# - runs latexmk in order to generate the document in the output directory
echo "1 $gitdescribe"
source CreateGitData.sh
echo "2 $gitdescribe"
latexmk -pdf -jobname=%A$gitdescribe -shell-escape nexxtender.tex
