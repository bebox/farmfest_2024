#!/bin/bash
#source /home/.deck/.env/bin/activate

EXEC="python ~/Work/git/duhovne_pjesme_novi_sad_1966/scripts/new/lilypond_generator.py"
LILYPOND_VERSION="2.25.16"
LILYPOND_PATH=./lilypond/src
#LILYPOND_PATH=./tmp
MUSESCORE_PATH=./musescore
POINT_AND_CLICK=--no-point-and-click
#POINT_AND_CLICK=--point-and-click

eval "$EXEC" $MUSESCORE_PATH/sretna_sigurnost.mscx --ly-output $LILYPOND_PATH/sretna_sigurnost.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 1 --no-left-page $POINT_AND_CLICK --comment-tempo
eval "$EXEC" $MUSESCORE_PATH/sto_grijeh_moze_oprati.mscx --ly-output $LILYPOND_PATH/sto_grijeh_moze_oprati.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 1 --no-left-page $POINT_AND_CLICK --comment-tempo
eval "$EXEC" $MUSESCORE_PATH/u_kristu_cvrst_je_temelj_moj.mscx --ly-output $LILYPOND_PATH/u_kristu_cvrst_je_temelj_moj.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 1 --no-left-page $POINT_AND_CLICK --comment-tempo
eval "$EXEC" $MUSESCORE_PATH/hvala_ti_moj_isuse.mscx --ly-output $LILYPOND_PATH/hvala_ti_moj_isuse.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 1 --no-left-page $POINT_AND_CLICK --comment-tempo
eval "$EXEC" $MUSESCORE_PATH/psalam_23.mscx --ly-output $LILYPOND_PATH/psalam_23.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 1 --no-left-page $POINT_AND_CLICK --comment-tempo
eval "$EXEC" $MUSESCORE_PATH/ti_si_od_vjecnosti.mscx --ly-output $LILYPOND_PATH/ti_si_od_vjecnosti.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 1 --no-left-page $POINT_AND_CLICK --comment-tempo
eval "$EXEC" $MUSESCORE_PATH/001.mscx --ly-output $LILYPOND_PATH/001.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 1 --no-left-page $POINT_AND_CLICK --comment-tempo
eval "$EXEC" $MUSESCORE_PATH/002.mscx --ly-output $LILYPOND_PATH/002.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 1 --no-left-page $POINT_AND_CLICK --comment-tempo
eval "$EXEC" $MUSESCORE_PATH/003.mscx --ly-output $LILYPOND_PATH/003.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 1 --no-left-page $POINT_AND_CLICK --comment-tempo
eval "$EXEC" $MUSESCORE_PATH/004.mscx --ly-output $LILYPOND_PATH/004.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 1 --no-left-page $POINT_AND_CLICK --comment-tempo
eval "$EXEC" $MUSESCORE_PATH/005.mscx --ly-output $LILYPOND_PATH/005.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 1 --no-left-page $POINT_AND_CLICK --comment-tempo
eval "$EXEC" $MUSESCORE_PATH/006.mscx --ly-output $LILYPOND_PATH/006.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 1 --no-left-page $POINT_AND_CLICK --comment-tempo
eval "$EXEC" $MUSESCORE_PATH/007.mscx --ly-output $LILYPOND_PATH/007.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 1 --no-left-page $POINT_AND_CLICK --comment-tempo
eval "$EXEC" $MUSESCORE_PATH/008.mscx --ly-output $LILYPOND_PATH/008.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 1 --no-left-page $POINT_AND_CLICK --comment-tempo
eval "$EXEC" $MUSESCORE_PATH/009.mscx --ly-output $LILYPOND_PATH/009.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 1 --no-left-page $POINT_AND_CLICK --comment-tempo
eval "$EXEC" $MUSESCORE_PATH/010.mscx --ly-output $LILYPOND_PATH/010.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 1 --no-left-page $POINT_AND_CLICK --comment-tempo
