#!/bin/bash
#source /home/.deck/.env/bin/activate

EXEC="python ~/Work/git/duhovne_pjesme_novi_sad_1966/scripts/new/lilypond_generator.py"
LILYPOND_VERSION="2.24.3"
LILYPOND_SRC_PATH=./lilypond/src
LILYPOND_BIN_PATH=/home/bebox/Work/git/lilypond-2.24.3/bin/lilypond
LILYPOND_CONFIG_PATH=./lilypond/config/
LILYPOND_EXPORT_PATH=./lilypond/bin
MUSESCORE_PATH=./musescore
POINT_AND_CLICK=--no-point-and-click
#POINT_AND_CLICK=--point-and-click

LILYPOND_TRANSFORMER=""
#LILYPOND_TRANSFORMER="python lilypond_transformer.py transpose-b lilypond/src"
#LILYPOND_TRANSFORMER="python lilypond_transformer.py transpose-eb lilypond/src"
#LILYPOND_TRANSFORMER="python lilypond_transformer.py transpose-bass lilypond/src"
#LILYPOND_TRANSFORMER="python lilypond_transformer.py bass-tones-only lilypond/src"

#song list
SONG1=al_ne_ja_vec_u_meni_krist
SONG2=bijel_ko_snijeg
SONG3=divan_si
SONG4=doksologija
SONG5=dubine
SONG6=duboka_je_ceznja
SONG7=haleluja
SONG8=hvala_ti_moj_isuse
SONG9=jesi_li_ociscen
SONG10=jira
SONG11=ljubav_si_beskrajna
SONG12=obasjaj_nas
SONG13=psalam_1
SONG14=psalam_4
SONG15=psalam_23
SONG16=psalam_32
SONG17=psalam_40
SONG18=soon_and_very_soon
SONG19=sretna_sigurnost
SONG20=sto_blize_tebi
SONG21=sto_grijeh_moze_oprati
SONG22=svoje_brige
SONG23=ti_mi_godis
SONG24=ti_si_od_vjecnosti
SONG25=ti_si_vjecan
SONG26=u_kristu_cvrst_je_temelj_moj
SONG27=u_kristu_samo
SONG28=u_svim_borbama
SONG29=u_tajnosti
SONG30=u_tvojim_rukama
SONG31=u_tvojim_rukama_english
SONG32=zahvalimo_gospodu
SONG33=001
SONG34=002
SONG35=003
SONG36=004
SONG37=005
SONG38=006
SONG39=007
SONG40=008
SONG41=009
SONG42=010

#eval "$EXEC" $MUSESCORE_PATH/$SONG1.mscx --ly-output $LILYPOND_SRC_PATH/$SONG1.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 1 --no-left-page $POINT_AND_CLICK --comment-tempo
#eval "$EXEC" $MUSESCORE_PATH/$SONG2.mscx --ly-output $LILYPOND_SRC_PATH/$SONG2.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 2 --no-left-page $POINT_AND_CLICK --comment-tempo
#eval "$EXEC" $MUSESCORE_PATH/$SONG3.mscx --ly-output $LILYPOND_SRC_PATH/$SONG3.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 3 --no-left-page $POINT_AND_CLICK --comment-tempo
#eval "$EXEC" $MUSESCORE_PATH/$SONG4.mscx --ly-output $LILYPOND_SRC_PATH/$SONG4.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 4 --no-left-page $POINT_AND_CLICK --comment-tempo
#eval "$EXEC" $MUSESCORE_PATH/$SONG5.mscx --ly-output $LILYPOND_SRC_PATH/$SONG5.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 5 --no-left-page $POINT_AND_CLICK --comment-tempo
#eval "$EXEC" $MUSESCORE_PATH/$SONG6.mscx --ly-output $LILYPOND_SRC_PATH/$SONG6.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 6 --no-left-page $POINT_AND_CLICK --comment-tempo
eval "$EXEC" $MUSESCORE_PATH/$SONG7.mscx --ly-output $LILYPOND_SRC_PATH/$SONG7.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 7 --no-left-page $POINT_AND_CLICK --no-comment-tempo
eval "$EXEC" $MUSESCORE_PATH/$SONG8.mscx --ly-output $LILYPOND_SRC_PATH/$SONG8.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 8 --left-page $POINT_AND_CLICK --comment-tempo
#eval "$EXEC" $MUSESCORE_PATH/$SONG9.mscx --ly-output $LILYPOND_SRC_PATH/$SONG9.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 9 --no-left-page $POINT_AND_CLICK --comment-tempo
#eval "$EXEC" $MUSESCORE_PATH/$SONG10.mscx --ly-output $LILYPOND_SRC_PATH/$SONG10.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 10 --no-left-page $POINT_AND_CLICK --comment-tempo
#eval "$EXEC" $MUSESCORE_PATH/$SONG11.mscx --ly-output $LILYPOND_SRC_PATH/$SONG11.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 11 --no-left-page $POINT_AND_CLICK --comment-tempo
#eval "$EXEC" $MUSESCORE_PATH/$SONG12.mscx --ly-output $LILYPOND_SRC_PATH/$SONG12.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 12 --no-left-page $POINT_AND_CLICK --comment-tempo
#eval "$EXEC" $MUSESCORE_PATH/$SONG13.mscx --ly-output $LILYPOND_SRC_PATH/$SONG13.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 13 --no-left-page $POINT_AND_CLICK --comment-tempo
#eval "$EXEC" $MUSESCORE_PATH/$SONG14.mscx --ly-output $LILYPOND_SRC_PATH/$SONG14.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 14 --no-left-page $POINT_AND_CLICK --comment-tempo
eval "$EXEC" $MUSESCORE_PATH/$SONG15.mscx --ly-output $LILYPOND_SRC_PATH/$SONG15.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 15 --no-left-page $POINT_AND_CLICK --comment-tempo
#eval "$EXEC" $MUSESCORE_PATH/$SONG16.mscx --ly-output $LILYPOND_SRC_PATH/$SONG16.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 16 --no-left-page $POINT_AND_CLICK --comment-tempo
#eval "$EXEC" $MUSESCORE_PATH/$SONG17.mscx --ly-output $LILYPOND_SRC_PATH/$SONG17.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 17 --no-left-page $POINT_AND_CLICK --comment-tempo
eval "$EXEC" $MUSESCORE_PATH/$SONG18.mscx --ly-output $LILYPOND_SRC_PATH/$SONG18.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 18 --left-page $POINT_AND_CLICK --comment-tempo
eval "$EXEC" $MUSESCORE_PATH/$SONG19.mscx --ly-output $LILYPOND_SRC_PATH/$SONG19.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 19 --no-left-page $POINT_AND_CLICK --comment-tempo --one-page-breaking
#eval "$EXEC" $MUSESCORE_PATH/$SONG20.mscx --ly-output $LILYPOND_SRC_PATH/$SONG20.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 20 --no-left-page $POINT_AND_CLICK --comment-tempo
eval "$EXEC" $MUSESCORE_PATH/$SONG21.mscx --ly-output $LILYPOND_SRC_PATH/$SONG21.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 21 --left-page $POINT_AND_CLICK --comment-tempo
#eval "$EXEC" $MUSESCORE_PATH/$SONG22.mscx --ly-output $LILYPOND_SRC_PATH/$SONG22.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 22 --no-left-page $POINT_AND_CLICK --comment-tempo
#eval "$EXEC" $MUSESCORE_PATH/$SONG23.mscx --ly-output $LILYPOND_SRC_PATH/$SONG23.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 23 --no-left-page $POINT_AND_CLICK --comment-tempo
eval "$EXEC" $MUSESCORE_PATH/$SONG24.mscx --ly-output $LILYPOND_SRC_PATH/$SONG24.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 24 --left-page $POINT_AND_CLICK --comment-tempo
#eval "$EXEC" $MUSESCORE_PATH/$SONG25.mscx --ly-output $LILYPOND_SRC_PATH/$SONG25.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 25 --no-left-page $POINT_AND_CLICK --comment-tempo
eval "$EXEC" $MUSESCORE_PATH/$SONG26.mscx --ly-output $LILYPOND_SRC_PATH/$SONG26.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 26 --left-page $POINT_AND_CLICK --comment-tempo
#eval "$EXEC" $MUSESCORE_PATH/$SONG27.mscx --ly-output $LILYPOND_SRC_PATH/$SONG27.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 27 --no-left-page $POINT_AND_CLICK --comment-tempo
#eval "$EXEC" $MUSESCORE_PATH/$SONG28.mscx --ly-output $LILYPOND_SRC_PATH/$SONG28.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 28 --no-left-page $POINT_AND_CLICK --comment-tempo
#eval "$EXEC" $MUSESCORE_PATH/$SONG29.mscx --ly-output $LILYPOND_SRC_PATH/$SONG29.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 29 --no-left-page $POINT_AND_CLICK --comment-tempo
#eval "$EXEC" $MUSESCORE_PATH/$SONG30.mscx --ly-output $LILYPOND_SRC_PATH/$SONG30.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 30 --no-left-page $POINT_AND_CLICK --comment-tempo
#eval "$EXEC" $MUSESCORE_PATH/$SONG31.mscx --ly-output $LILYPOND_SRC_PATH/$SONG31.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 31 --no-left-page $POINT_AND_CLICK --comment-tempo
#eval "$EXEC" $MUSESCORE_PATH/$SONG32.mscx --ly-output $LILYPOND_SRC_PATH/$SONG32.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 32 --no-left-page $POINT_AND_CLICK --comment-tempo
eval "$EXEC" $MUSESCORE_PATH/$SONG33.mscx --ly-output $LILYPOND_SRC_PATH/$SONG33.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 33 --no-left-page $POINT_AND_CLICK --comment-tempo
eval "$EXEC" $MUSESCORE_PATH/$SONG34.mscx --ly-output $LILYPOND_SRC_PATH/$SONG34.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 34 --left-page $POINT_AND_CLICK --comment-tempo
eval "$EXEC" $MUSESCORE_PATH/$SONG35.mscx --ly-output $LILYPOND_SRC_PATH/$SONG35.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 35 --no-left-page $POINT_AND_CLICK --comment-tempo
eval "$EXEC" $MUSESCORE_PATH/$SONG36.mscx --ly-output $LILYPOND_SRC_PATH/$SONG36.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 36 --left-page $POINT_AND_CLICK --comment-tempo
eval "$EXEC" $MUSESCORE_PATH/$SONG37.mscx --ly-output $LILYPOND_SRC_PATH/$SONG37.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 37 --no-left-page $POINT_AND_CLICK --comment-tempo
eval "$EXEC" $MUSESCORE_PATH/$SONG38.mscx --ly-output $LILYPOND_SRC_PATH/$SONG38.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 38 --left-page $POINT_AND_CLICK --comment-tempo
eval "$EXEC" $MUSESCORE_PATH/$SONG39.mscx --ly-output $LILYPOND_SRC_PATH/$SONG39.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 39 --no-left-page $POINT_AND_CLICK --comment-tempo
eval "$EXEC" $MUSESCORE_PATH/$SONG40.mscx --ly-output $LILYPOND_SRC_PATH/$SONG40.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 40 --left-page $POINT_AND_CLICK --comment-tempo
eval "$EXEC" $MUSESCORE_PATH/$SONG41.mscx --ly-output $LILYPOND_SRC_PATH/$SONG41.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 41 --no-left-page $POINT_AND_CLICK --comment-tempo
eval "$EXEC" $MUSESCORE_PATH/$SONG42.mscx --ly-output $LILYPOND_SRC_PATH/$SONG42.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 42 --left-page $POINT_AND_CLICK --comment-tempo

eval "$LILYPOND_TRANSFORMER"

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
$LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src/$SONG17.ly
$LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src/$SONG18.ly
$LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src/$SONG19.ly
$LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src/$SONG20.ly
$LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src/$SONG21.ly
$LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src/$SONG22.ly
$LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src/$SONG23.ly
$LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src/$SONG24.ly
$LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src/$SONG25.ly
$LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src/$SONG26.ly
$LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src/$SONG27.ly
$LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src/$SONG28.ly
$LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src/$SONG29.ly
$LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src/$SONG30.ly
$LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src/$SONG31.ly
$LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src/$SONG32.ly
$LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src/$SONG33.ly
$LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src/$SONG34.ly
$LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src/$SONG35.ly
$LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src/$SONG36.ly
$LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src/$SONG37.ly
$LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src/$SONG38.ly
$LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src/$SONG39.ly
$LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src/$SONG40.ly
$LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src/$SONG41.ly
$LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src/$SONG42.ly

#clean folders
mv ./*.pdf $LILYPOND_EXPORT_PATH
rm $LILYPOND_SRC_PATH/*.pdf
