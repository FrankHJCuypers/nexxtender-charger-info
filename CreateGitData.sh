#!/bin/bash
echo "3"
export gitdescribe=`git describe --tags --always --dirty --match [[:digit:]].[[:digit:]].[[:digit:]]`
export gitdate=`git show -s --format=%cs`
echo "\newcommand{\gitdescribe}{$gitdescribe}" > gitinfo.tex
echo "\newcommand{\gitdate}{$gitdate}" >> gitinfo.tex
