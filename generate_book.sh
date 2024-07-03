#!/bin/bash
#source /home/.deck/.env/bin/activate

EXEC="python ~/Work/git/duhovne_pjesme_novi_sad_1966/scripts/new/lilypond_generator.py"
LILYPOND_VERSION="2.24.3"
LILYPOND_SRC_PATH=./lilypond/src
LILYPOND_BIN_PATH=../lilypond-2.24.3/bin/lilypond
LILYPOND_CONFIG_PATH=./lilypond/config/
LILYPOND_EXPORT_PATH=./lilypond/bin
MUSESCORE_PATH=./musescore
POINT_AND_CLICK=--no-point-and-click
#POINT_AND_CLICK=--point-and-click

#song list
SONG1=hvala_ti_moj_isuse
SONG2=psalam_23
SONG3=sretna_sigurnost
SONG4=sto_grijeh_moze_oprati
SONG5=ti_si_od_vjecnosti
SONG6=u_kristu_cvrst_je_temelj_moj
SONG7=001
SONG8=002
SONG9=003
SONG10=004
SONG11=005
SONG12=006
SONG13=007
SONG14=008
SONG15=009
SONG16=010

eval "$EXEC" $MUSESCORE_PATH/$SONG1.mscx --ly-output $LILYPOND_SRC_PATH/$SONG1.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 1 --no-left-page $POINT_AND_CLICK --comment-tempo
eval "$EXEC" $MUSESCORE_PATH/$SONG2.mscx --ly-output $LILYPOND_SRC_PATH/$SONG2.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 1 --no-left-page $POINT_AND_CLICK --comment-tempo
eval "$EXEC" $MUSESCORE_PATH/$SONG3.mscx --ly-output $LILYPOND_SRC_PATH/$SONG3.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 1 --no-left-page $POINT_AND_CLICK --comment-tempo
eval "$EXEC" $MUSESCORE_PATH/$SONG4.mscx --ly-output $LILYPOND_SRC_PATH/$SONG4.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 1 --no-left-page $POINT_AND_CLICK --comment-tempo
eval "$EXEC" $MUSESCORE_PATH/$SONG5.mscx --ly-output $LILYPOND_SRC_PATH/$SONG5.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 1 --no-left-page $POINT_AND_CLICK --comment-tempo
eval "$EXEC" $MUSESCORE_PATH/$SONG6.mscx --ly-output $LILYPOND_SRC_PATH/$SONG6.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 1 --no-left-page $POINT_AND_CLICK --comment-tempo
eval "$EXEC" $MUSESCORE_PATH/$SONG7.mscx --ly-output $LILYPOND_SRC_PATH/$SONG7.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 1 --no-left-page $POINT_AND_CLICK --comment-tempo
eval "$EXEC" $MUSESCORE_PATH/$SONG8.mscx --ly-output $LILYPOND_SRC_PATH/$SONG8.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 1 --no-left-page $POINT_AND_CLICK --comment-tempo
eval "$EXEC" $MUSESCORE_PATH/$SONG9.mscx --ly-output $LILYPOND_SRC_PATH/$SONG9.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 1 --no-left-page $POINT_AND_CLICK --comment-tempo
eval "$EXEC" $MUSESCORE_PATH/$SONG10.mscx --ly-output $LILYPOND_SRC_PATH/$SONG10.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 1 --no-left-page $POINT_AND_CLICK --comment-tempo
eval "$EXEC" $MUSESCORE_PATH/$SONG11.mscx --ly-output $LILYPOND_SRC_PATH/$SONG11.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 1 --no-left-page $POINT_AND_CLICK --comment-tempo
eval "$EXEC" $MUSESCORE_PATH/$SONG12.mscx --ly-output $LILYPOND_SRC_PATH/$SONG12.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 1 --no-left-page $POINT_AND_CLICK --comment-tempo
eval "$EXEC" $MUSESCORE_PATH/$SONG13.mscx --ly-output $LILYPOND_SRC_PATH/$SONG13.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 1 --no-left-page $POINT_AND_CLICK --comment-tempo
eval "$EXEC" $MUSESCORE_PATH/$SONG14.mscx --ly-output $LILYPOND_SRC_PATH/$SONG14.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 1 --no-left-page $POINT_AND_CLICK --comment-tempo
eval "$EXEC" $MUSESCORE_PATH/$SONG15.mscx --ly-output $LILYPOND_SRC_PATH/$SONG15.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 1 --no-left-page $POINT_AND_CLICK --comment-tempo
eval "$EXEC" $MUSESCORE_PATH/$SONG16.mscx --ly-output $LILYPOND_SRC_PATH/$SONG16.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 1 --no-left-page $POINT_AND_CLICK --comment-tempo

$LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src/$SONG1.ly
$LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src/$SONG2.ly
$LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src/$SONG3.ly
$LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src/$SONG4.ly
$LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src/$SONG5.ly
$LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src/$SONG6.ly
$LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src/$SONG7.ly
$LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src/$SONG8.ly
$LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src/$SONG9.ly
$LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src/$SONG10.ly
$LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src/$SONG11.ly
$LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src/$SONG12.ly
$LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src/$SONG13.ly
$LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src/$SONG14.ly
$LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src/$SONG15.ly
$LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src/$SONG16.ly

#clean folders
mv ./*.pdf $LILYPOND_EXPORT_PATH
rm $LILYPOND_SRC_PATH/*.pdf
