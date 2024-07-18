#!/bin/bash
#source /home/.deck/.env/bin/activate

EXEC="python ~/Work/git/duhovne_pjesme_novi_sad_1966/scripts/new/lilypond_generator.py"
LILYPOND_VERSION="2.24.3"
LILYPOND_SRC_PATH=./lilypond/src
LILYPOND_BIN_PATH=/home/bebox/Work/git/lilypond-2.24.3/bin/lilypond
LILYPOND_CONFIG_PATH=./lilypond/config/
MUSESCORE_PATH=./musescore
POINT_AND_CLICK=--no-point-and-click
#POINT_AND_CLICK=--point-and-click

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
SONG33=znam
SONG34=001
SONG35=002
SONG36=003
SONG37=004
SONG38=005
SONG39=006
SONG40=007
SONG41=008
SONG42=009
SONG43=010

# musescore to lilypond converter
##eval "$EXEC" $MUSESCORE_PATH/$SONG1.mscx --ly-output $LILYPOND_SRC_PATH/$SONG1.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 1 --no-left-page $POINT_AND_CLICK --comment-tempo
##eval "$EXEC" $MUSESCORE_PATH/$SONG2.mscx --ly-output $LILYPOND_SRC_PATH/$SONG2.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 2 --no-left-page $POINT_AND_CLICK --comment-tempo
##eval "$EXEC" $MUSESCORE_PATH/$SONG3.mscx --ly-output $LILYPOND_SRC_PATH/$SONG3.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 3 --no-left-page $POINT_AND_CLICK --comment-tempo
##eval "$EXEC" $MUSESCORE_PATH/$SONG4.mscx --ly-output $LILYPOND_SRC_PATH/$SONG4.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 4 --no-left-page $POINT_AND_CLICK --comment-tempo
##eval "$EXEC" $MUSESCORE_PATH/$SONG5.mscx --ly-output $LILYPOND_SRC_PATH/$SONG5.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 5 --no-left-page $POINT_AND_CLICK --comment-tempo
##eval "$EXEC" $MUSESCORE_PATH/$SONG6.mscx --ly-output $LILYPOND_SRC_PATH/$SONG6.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 6 --no-left-page $POINT_AND_CLICK --comment-tempo
#eval "$EXEC" $MUSESCORE_PATH/$SONG7.mscx --ly-output $LILYPOND_SRC_PATH/$SONG7.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 7 --no-left-page $POINT_AND_CLICK --no-comment-tempo
#eval "$EXEC" $MUSESCORE_PATH/$SONG8.mscx --ly-output $LILYPOND_SRC_PATH/$SONG8.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 8 --left-page $POINT_AND_CLICK --comment-tempo
##eval "$EXEC" $MUSESCORE_PATH/$SONG9.mscx --ly-output $LILYPOND_SRC_PATH/$SONG9.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 9 --no-left-page $POINT_AND_CLICK --comment-tempo
##eval "$EXEC" $MUSESCORE_PATH/$SONG10.mscx --ly-output $LILYPOND_SRC_PATH/$SONG10.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 10 --no-left-page $POINT_AND_CLICK --comment-tempo
##eval "$EXEC" $MUSESCORE_PATH/$SONG11.mscx --ly-output $LILYPOND_SRC_PATH/$SONG11.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 11 --no-left-page $POINT_AND_CLICK --comment-tempo
##eval "$EXEC" $MUSESCORE_PATH/$SONG12.mscx --ly-output $LILYPOND_SRC_PATH/$SONG12.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 12 --no-left-page $POINT_AND_CLICK --comment-tempo
##eval "$EXEC" $MUSESCORE_PATH/$SONG13.mscx --ly-output $LILYPOND_SRC_PATH/$SONG13.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 13 --no-left-page $POINT_AND_CLICK --comment-tempo
##eval "$EXEC" $MUSESCORE_PATH/$SONG14.mscx --ly-output $LILYPOND_SRC_PATH/$SONG14.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 14 --no-left-page $POINT_AND_CLICK --comment-tempo
#eval "$EXEC" $MUSESCORE_PATH/$SONG15.mscx --ly-output $LILYPOND_SRC_PATH/$SONG15.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 15 --no-left-page $POINT_AND_CLICK --comment-tempo
##eval "$EXEC" $MUSESCORE_PATH/$SONG16.mscx --ly-output $LILYPOND_SRC_PATH/$SONG16.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 16 --no-left-page $POINT_AND_CLICK --comment-tempo
##eval "$EXEC" $MUSESCORE_PATH/$SONG17.mscx --ly-output $LILYPOND_SRC_PATH/$SONG17.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 17 --no-left-page $POINT_AND_CLICK --comment-tempo
#eval "$EXEC" $MUSESCORE_PATH/$SONG18.mscx --ly-output $LILYPOND_SRC_PATH/$SONG18.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 18 --left-page $POINT_AND_CLICK --comment-tempo
#eval "$EXEC" $MUSESCORE_PATH/$SONG19.mscx --ly-output $LILYPOND_SRC_PATH/$SONG19.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 19 --left-page $POINT_AND_CLICK --comment-tempo
##eval "$EXEC" $MUSESCORE_PATH/$SONG20.mscx --ly-output $LILYPOND_SRC_PATH/$SONG20.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 20 --no-left-page $POINT_AND_CLICK --comment-tempo
#eval "$EXEC" $MUSESCORE_PATH/$SONG21.mscx --ly-output $LILYPOND_SRC_PATH/$SONG21.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 21 --left-page $POINT_AND_CLICK --comment-tempo
##eval "$EXEC" $MUSESCORE_PATH/$SONG22.mscx --ly-output $LILYPOND_SRC_PATH/$SONG22.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 22 --no-left-page $POINT_AND_CLICK --comment-tempo
##eval "$EXEC" $MUSESCORE_PATH/$SONG23.mscx --ly-output $LILYPOND_SRC_PATH/$SONG23.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 23 --no-left-page $POINT_AND_CLICK --comment-tempo
#eval "$EXEC" $MUSESCORE_PATH/$SONG24.mscx --ly-output $LILYPOND_SRC_PATH/$SONG24.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 24 --left-page $POINT_AND_CLICK --comment-tempo
##eval "$EXEC" $MUSESCORE_PATH/$SONG25.mscx --ly-output $LILYPOND_SRC_PATH/$SONG25.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 25 --no-left-page $POINT_AND_CLICK --comment-tempo
#eval "$EXEC" $MUSESCORE_PATH/$SONG26.mscx --ly-output $LILYPOND_SRC_PATH/$SONG26.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 26 --left-page $POINT_AND_CLICK --comment-tempo
##eval "$EXEC" $MUSESCORE_PATH/$SONG27.mscx --ly-output $LILYPOND_SRC_PATH/$SONG27.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 27 --no-left-page $POINT_AND_CLICK --comment-tempo
##eval "$EXEC" $MUSESCORE_PATH/$SONG28.mscx --ly-output $LILYPOND_SRC_PATH/$SONG28.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 28 --no-left-page $POINT_AND_CLICK --comment-tempo
##eval "$EXEC" $MUSESCORE_PATH/$SONG29.mscx --ly-output $LILYPOND_SRC_PATH/$SONG29.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 29 --no-left-page $POINT_AND_CLICK --comment-tempo
##eval "$EXEC" $MUSESCORE_PATH/$SONG30.mscx --ly-output $LILYPOND_SRC_PATH/$SONG30.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 30 --no-left-page $POINT_AND_CLICK --comment-tempo
##eval "$EXEC" $MUSESCORE_PATH/$SONG31.mscx --ly-output $LILYPOND_SRC_PATH/$SONG31.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 31 --no-left-page $POINT_AND_CLICK --comment-tempo
##eval "$EXEC" $MUSESCORE_PATH/$SONG32.mscx --ly-output $LILYPOND_SRC_PATH/$SONG32.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 32 --no-left-page $POINT_AND_CLICK --comment-tempo
##eval "$EXEC" $MUSESCORE_PATH/$SONG33.mscx --ly-output $LILYPOND_SRC_PATH/$SONG33.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 33 --no-left-page $POINT_AND_CLICK --comment-tempo
#eval "$EXEC" $MUSESCORE_PATH/$SONG34.mscx --ly-output $LILYPOND_SRC_PATH/$SONG34.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 34 --no-left-page $POINT_AND_CLICK --comment-tempo
#eval "$EXEC" $MUSESCORE_PATH/$SONG35.mscx --ly-output $LILYPOND_SRC_PATH/$SONG35.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 35 --left-page $POINT_AND_CLICK --comment-tempo
#eval "$EXEC" $MUSESCORE_PATH/$SONG36.mscx --ly-output $LILYPOND_SRC_PATH/$SONG36.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 36 --no-left-page $POINT_AND_CLICK --comment-tempo
#eval "$EXEC" $MUSESCORE_PATH/$SONG37.mscx --ly-output $LILYPOND_SRC_PATH/$SONG37.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 37 --left-page $POINT_AND_CLICK --comment-tempo
#eval "$EXEC" $MUSESCORE_PATH/$SONG38.mscx --ly-output $LILYPOND_SRC_PATH/$SONG38.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 38 --no-left-page $POINT_AND_CLICK --comment-tempo
#eval "$EXEC" $MUSESCORE_PATH/$SONG39.mscx --ly-output $LILYPOND_SRC_PATH/$SONG39.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 39 --left-page $POINT_AND_CLICK --comment-tempo
#eval "$EXEC" $MUSESCORE_PATH/$SONG40.mscx --ly-output $LILYPOND_SRC_PATH/$SONG40.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 40 --no-left-page $POINT_AND_CLICK --comment-tempo
#eval "$EXEC" $MUSESCORE_PATH/$SONG41.mscx --ly-output $LILYPOND_SRC_PATH/$SONG41.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 41 --left-page $POINT_AND_CLICK --comment-tempo
#eval "$EXEC" $MUSESCORE_PATH/$SONG42.mscx --ly-output $LILYPOND_SRC_PATH/$SONG42.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 42 --no-left-page $POINT_AND_CLICK --comment-tempo
#eval "$EXEC" $MUSESCORE_PATH/$SONG43.mscx --ly-output $LILYPOND_SRC_PATH/$SONG43.ly --lilypond-version $LILYPOND_VERSION --custom-config --ordinal-number 43 --left-page $POINT_AND_CLICK --comment-tempo

python lilypond_transformer.py transpose-b lilypond/src --path-out lilypond/src_b
python lilypond_transformer.py transpose-eb lilypond/src --path-out lilypond/src_eb
python lilypond_transformer.py transpose-bass lilypond/src --path-out lilypond/src_bass
python lilypond_transformer.py bass-tones-only lilypond/src --path-out lilypond/src_bass_tones_only


declare -a array=("" "_b" "_eb" "_bass" "_bass_tones_only")
arraylength=${#array[@]}
for (( i=0; i<${arraylength}; i++ ));
do
  echo "index: $i, value: ${array[$i]}"
  $LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src${array[$i]}/$SONG1.ly  lilypond/bin${array[$i]}/$SONG1.pdf
  $LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src${array[$i]}/$SONG2.ly  lilypond/bin${array[$i]}/$SONG2.pdf
  $LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src${array[$i]}/$SONG3.ly  lilypond/bin${array[$i]}/$SONG3.pdf
  $LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src${array[$i]}/$SONG4.ly  lilypond/bin${array[$i]}/$SONG4.pdf
  $LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src${array[$i]}/$SONG5.ly  lilypond/bin${array[$i]}/$SONG5.pdf
  $LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src${array[$i]}/$SONG6.ly  lilypond/bin${array[$i]}/$SONG6.pdf
  $LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src${array[$i]}/$SONG7.ly  lilypond/bin${array[$i]}/$SONG7.pdf
  $LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src${array[$i]}/$SONG8.ly  lilypond/bin${array[$i]}/$SONG8.pdf
  $LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src${array[$i]}/$SONG9.ly  lilypond/bin${array[$i]}/$SONG9.pdf
  $LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src${array[$i]}/$SONG10.ly lilypond/bin${array[$i]}/$SONG10.pdf
  $LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src${array[$i]}/$SONG11.ly lilypond/bin${array[$i]}/$SONG11.pdf
  $LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src${array[$i]}/$SONG12.ly lilypond/bin${array[$i]}/$SONG12.pdf
  $LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src${array[$i]}/$SONG13.ly lilypond/bin${array[$i]}/$SONG13.pdf
  $LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src${array[$i]}/$SONG14.ly lilypond/bin${array[$i]}/$SONG14.pdf
  $LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src${array[$i]}/$SONG15.ly lilypond/bin${array[$i]}/$SONG15.pdf
  $LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src${array[$i]}/$SONG16.ly lilypond/bin${array[$i]}/$SONG16.pdf
  $LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src${array[$i]}/$SONG17.ly lilypond/bin${array[$i]}/$SONG17.pdf
  $LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src${array[$i]}/$SONG18.ly lilypond/bin${array[$i]}/$SONG18.pdf
  $LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src${array[$i]}/$SONG19.ly lilypond/bin${array[$i]}/$SONG19.pdf
  $LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src${array[$i]}/$SONG20.ly lilypond/bin${array[$i]}/$SONG20.pdf
  $LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src${array[$i]}/$SONG21.ly lilypond/bin${array[$i]}/$SONG21.pdf
  $LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src${array[$i]}/$SONG22.ly lilypond/bin${array[$i]}/$SONG22.pdf
  $LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src${array[$i]}/$SONG23.ly lilypond/bin${array[$i]}/$SONG23.pdf
  $LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src${array[$i]}/$SONG24.ly lilypond/bin${array[$i]}/$SONG24.pdf
  $LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src${array[$i]}/$SONG25.ly lilypond/bin${array[$i]}/$SONG25.pdf
  $LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src${array[$i]}/$SONG26.ly lilypond/bin${array[$i]}/$SONG26.pdf
  $LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src${array[$i]}/$SONG27.ly lilypond/bin${array[$i]}/$SONG27.pdf
  $LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src${array[$i]}/$SONG28.ly lilypond/bin${array[$i]}/$SONG28.pdf
  $LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src${array[$i]}/$SONG29.ly lilypond/bin${array[$i]}/$SONG29.pdf
  $LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src${array[$i]}/$SONG30.ly lilypond/bin${array[$i]}/$SONG30.pdf
  $LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src${array[$i]}/$SONG31.ly lilypond/bin${array[$i]}/$SONG31.pdf
  $LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src${array[$i]}/$SONG32.ly lilypond/bin${array[$i]}/$SONG32.pdf
  $LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src${array[$i]}/$SONG33.ly lilypond/bin${array[$i]}/$SONG33.pdf
  $LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src${array[$i]}/$SONG34.ly lilypond/bin${array[$i]}/$SONG34.pdf
  $LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src${array[$i]}/$SONG35.ly lilypond/bin${array[$i]}/$SONG35.pdf
  $LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src${array[$i]}/$SONG36.ly lilypond/bin${array[$i]}/$SONG36.pdf
  $LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src${array[$i]}/$SONG37.ly lilypond/bin${array[$i]}/$SONG37.pdf
  $LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src${array[$i]}/$SONG38.ly lilypond/bin${array[$i]}/$SONG38.pdf
  $LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src${array[$i]}/$SONG39.ly lilypond/bin${array[$i]}/$SONG39.pdf
  $LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src${array[$i]}/$SONG40.ly lilypond/bin${array[$i]}/$SONG40.pdf
  $LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src${array[$i]}/$SONG41.ly lilypond/bin${array[$i]}/$SONG41.pdf
  $LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src${array[$i]}/$SONG42.ly lilypond/bin${array[$i]}/$SONG42.pdf
  $LILYPOND_BIN_PATH -I $LILYPOND_CONFIG_PATH lilypond/src${array[$i]}/$SONG43.ly lilypond/bin${array[$i]}/$SONG43.pdf
done
