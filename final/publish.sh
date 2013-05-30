#!/bin/sh
htlatex conf_id_gateways_kers-draft.tex

scp conf_id_gateways_kers-draft*.{html,css,png,pdf} \
    simon@tapir.haninge.kth.se:public_html/draft/ 
    #192.168.0.14:public_html/draft/

rm conf_id_gateways_kers-draft.4ct
rm conf_id_gateways_kers-draft.4tc
