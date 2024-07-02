#!/bin/bash
#source /home/.deck/.env/bin/activate

EXEC="python ~/git/duhovne_pjesme_novi_sad_1966/scripts/new/lilypond_generator.py"
LILYPOND_VERSION="2.24.3"
LILYPOND_PATH=./lilypond/src
#LILYPOND_PATH=./tmp
MUSESCORE_PATH=./musescore
POINT_AND_CLICK=--no-point-and-click
#POINT_AND_CLICK=--point-and-click

eval "$EXEC" $MUSESCORE_PATH/sretna_sigurnost.mscx --ly-output $LILYPOND_PATH/sretna_sigurnost.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 1 --no-left-page $POINT_AND_CLICK --comment-tempo
eval "$EXEC" $MUSESCORE_PATH/sto_grijeh_moze_oprati.mscx --ly-output $LILYPOND_PATH/sto_grijeh_moze_oprati.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 1 --no-left-page $POINT_AND_CLICK --comment-tempo
eval "$EXEC" $MUSESCORE_PATH/u_kristu_cvrst_je_temelj_moj.mscx --ly-output $LILYPOND_PATH/u_kristu_cvrst_je_temelj_moj.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 1 --no-left-page $POINT_AND_CLICK --comment-tempo
