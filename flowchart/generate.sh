#!/bin/sh
pdflatex before.tex
pdftops -eps before.pdf ../final/before.eps
pdflatex after.tex
pdftops -eps after.pdf ../final/after.eps
