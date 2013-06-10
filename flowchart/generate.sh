#!/bin/bash
#just add filenames between EOF tags

preamble() {
    echo "\documentclass{article}" > tmp.tex
    echo "\usepackage[margin=0in]{geometry}" >> tmp.tex
    echo "\usepackage{tikz}" >> tmp.tex
    echo "\begin{document}" >> tmp.tex
    cat $1.tex >> tmp.tex
    echo "\end{document}" >> tmp.tex
}

render() {
    pdflatex tmp.tex
    cp tmp.pdf $1.pdf
    pdftops -eps tmp.pdf ../final/$1.eps
}

while read -r file; do
    if grep -q "documentclass" $file.tex; then
        cat $file.tex > tmp.tex
    else
        preamble $file
    fi
    render $file
done <<EOF
    before
    after
    wizard-seq_dia
EOF

