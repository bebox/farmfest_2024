\version "2.24.1"
\include "deutsch.ly"
jazzChords = {}
aFourL = {}
markMoj = {}
\include "../config/include.ily"

\layout {
  indent = 0
}

\header {
  titlex = "Farmfest 2023"
  broj = "24"
  composer = "The Insyderz"
  title = "U TAJNOSTI"
  style = "Andy Park"
  tagline = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { Izvorno: In The Secret, Skalleluia Too! } }
}

\paper {
  \aFourL
  %min-systems-per-page = #7
  %annotate-spacing = ##t
  %system-system-spacing.padding = #3.2
  %page-breaking = #ly:one-page-breaking
  %last-bottom-spacing.minimum-distance = #8
}

staffOne = \relative c' {
  \key fis \major
  \time 4/4
  \tempo 4 = 93
  \markMoj r4 fis16 gis8 fis16 eis4 fis16 gis8 fis16 ~|
  fis1 |
  r4 fis16 gis8 fis16 eis4 fis16 gis8 fis16 ~|
  fis1 \bar "||" |
  \markMoj r16 fis16 fis16 gis16 ~gis16 ais8. r16 fis16 fis16 gis16 ~gis16 ais8. |
  fis2 r2 |
  r8 ais16 ais16 ais8 ais8 gis4 ais4 |
  fis2 r2 |
  r16 fis16 fis16 gis16 ~gis16 ais8. r8 fis16 fis16 gis16 ais8 h16 ~|
  h16 ais16 gis16 fis16 ~fis4 r2 |
  r8 ais16 ais16 ais8 ais8 gis4 ais4 |
  fis2 r2 |
  r8 ais16 ais16 ais8 ais8 gis4 ais4 |
  fis2 r2 | \break
  \markMoj r1 |
  r1 \bar ":|." | \break
  \markMoj r8 fis8 fis8 cis'8 cis4 gis4 |
  r8 fis8 fis8 cis'8 cis8. h16 ~h8 ais8 |
  r8 fis8 fis8 cis'8 cis4 gis4 |
  fis1 |
  r8 fis8 fis8 cis'8 cis4 gis4 |
  r8 fis8 fis8 cis'8 cis8. h16 ~h8 ais8 |
  r8 fis8 fis8 cis'8 cis4 gis4 |
  fis1 |
}

harmonyOne = \chordmode  {
  fis2 cis2 |
  h1 |
  fis2 cis2 |
  h1 |
  fis2 cis2 |
  h1 |
  dis2:m ais2:m |
  h1 |
  fis2 cis2 |
  h2 gis2:m |
  dis2:m ais2:m |
  h1 |
  dis2:m cis2 |
  h1 |
  fis4 cis8. h16 s2 |
  fis4 cis8. h16 s2 |
  fis2 cis2 |
  dis2:m h2 |
  fis2 cis2 |
  h1 |
  fis2 cis2 |
  dis2:m h2 |
  fis2 cis2 |
  h1 |
  \bar "|."
}

lyricOneZero = \lyricmode {
  \repeat unfold 14 { \skip1 }
  \set stanza = "1."
  U ti -- ši -- ni, i u taj -- no -- 
  sti,
  u sa -- mo -- ći Ti si 
  tu. 
  Ka -- da mo -- lim, u ti -- ši -- ni glas __ 
  slu -- šam tvoj. __ 
  Že -- lim Te u -- po -- zna -- 
  ti. 
  Že -- lim Te u -- po -- zna -- 
  ti. 
  Že -- lim Te spo -- znat. 
  Že -- lim Tvoj ču -- ti __ glas, 
  bo -- lje u -- po -- znat 
  Te. 
  Že -- lim te ta -- knut. 
  Li -- ce ti vi -- dje -- ti, 
  bo -- lje u -- po -- znat 
  Te. 
}

lyricOneOne = \lyricmode {
  \repeat unfold 14 { \skip1 }
  \set stanza = "2."
  Ci -- lju te -- žim, Bo -- že, naj -- vi -- 
  šem, 
  vjen -- cu ne -- ra -- spa -- dlji -- 
  vom. 
  Gu -- ram na -- prijed, i -- dem pre -- ko pre -- 
  pre -- ka svih. __ 
}

\score {
    <<
    \new ChordNames { \jazzChords \harmonyOne }
    \new Staff { \staffOne }
    \addlyrics { \lyricOneZero }
    \addlyrics { \lyricOneOne }
    >>
}
