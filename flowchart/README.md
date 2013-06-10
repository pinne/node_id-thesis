Inserting diagrams
==================
## Using dia

make your diagram, export it to .tex

exit the exported tex diagram, in the beginning add:
    \documentclass{article}
    \usepackage[margin=0in]{geometry}
    \usepackage{tikz}
    \begin{document}

append to the end of the tex diagram:
    \end{document}

run in terminal:

    ./generate.sh

In LaTeX preamble:

    \usepackage{graphicx}
    \usepackage{tikz}

Insert diagram where you want it in the LaTeX document:
    \begin{figure}[h!]
    \centering
       % trim image as needed|left|botm|right|top|                  image name
       \includegraphics[trim = 0mm 170mm 80mm 0mm, clip, width=15cm]{my_image}
       \caption{Flow chart for user interaction when selecting port forwarding on wizard page}
       \label{fig:before}
    \end{figure}

