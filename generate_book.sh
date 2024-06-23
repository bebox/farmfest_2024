#!/bin/bash
#source /home/.deck/.env/bin/activate

EXEC="python ~/git/duhovne_pjesme_novi_sad_1966/scripts/new/lilypond_generator.py"
LILYPOND_VERSION="2.24.3"
LILYPOND_PATH=./lilypond/src
#LILYPOND_PATH=./tmp
MUSESCORE_PATH=./musescore
POINT_AND_CLICK=--no-point-and-click
#POINT_AND_CLICK=--point-and-click

eval "$EXEC" $MUSESCORE_PATH/01_blagoslivljaj_boga.mscx    --ly-output $LILYPOND_PATH/01_blagoslivljaj_boga.ly    --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 1 --no-left-page $POINT_AND_CLICK --comment-tempo
