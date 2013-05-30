#!/bin/sh
target="simon@tapir.haninge.kth.se:public_html/final/"
#target="192.168.0.14:public_html/final/"

htlatex conf_id_gateways_kers-final.tex

scp conf_id_gateways_kers-final*.{html,css,png,pdf} $target

rm conf_id_gateways_kers-final.4ct
rm conf_id_gateways_kers-final.4tc

