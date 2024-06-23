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
  broj = "2"
  title = "BIJEL KO' SNIJEG"
  composer = "Jon Foreman"
  style = "Psalam 51"
  tagline = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { Izvorno: White As Snow, Fall and Winter } }
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
  \time 4/4
  \tempo 4 = 112
  \partial 2
  f8 e8 d8 c8 \bar "||" |
  \markMojCenter a4. c8 g4 d'4 ~|
  d1 |
  r1 |
  g,4 a4 d4 e4 |
  g4 a2 e4 |
  g1 |
  r1 |
  r2 f8 e8 d8 c8 \bar "||" |
  \markMojCenter e4 e4 d2 |
  r4 r8 e8 f8 e8 d8 c8 |
  e4 e4 d8 (c4. )|
  r4 r8 e8 f8 e8 d8 c8 |
  e4 e4 d4 e4 |
  r2 c8 f4 e8 ~|
  e4 e4 d8 c4. ~|
  c2 g'8 a8 h8 c8 ~\bar "||" |
  \markMojCenter c2. h4 |
  g2 g8 a4. |
  e2. d8 (c8 )|
  c2. r8 a'8 |
  c2. h4 |
  g2. r8 a8 |
  c4 a8 c8 ~c8 a4 d8 ~|
  d8 a8 (g4 )f8 e8 d8 c8 \bar "||" |
  \markMojCenter e4 e4 d2 |
  r4 c8 d8 f8 e8 d8 c8 |
  e4 e4 d8 (c4. )|
  r2 c8 d4 g8 ~|
  g4 f8 e8 ~e4 d8 f8 ~|
  f4. c8 c8 e4 e8 ~|
  e2 r2 |
  r1 \bar "||" | \break
  \markMoj r2 e'2 |
  d4. d8 e8 (d4 )d8 |
  d8 c4. r4 g8 f'8 ~|
  f8 e4 d8 ~d8 c4 g8 ~|
  g2 e'2 |
  d4. d8 e8 (d4 )d8 |
  d8 c4. r4 g8 f'8 ~|
  f8 e4 d8 ~d8 c4 g8 ~|
  g2 e'2 |
  d4. d8 e8 (d4 )d8 |
  d8 c4. r4 g8 f'8 ~|
  f8 e4 d8 ~d8 c4 g8 ~|
  g2 e'2 |
  d4. d8 e8 (d4 )d8 |
  d8 c4. r2 |
}

harmonyOne = \chordmode  {
  s2 |
  a2:m7 a2:m7/g |
  f1:9^7 |
  a2:m7 a2:m7/g |
  f1:9^7 |
  a2:m7 a2:m7/g |
  f1:9^7 |
  a2:m7 a2:m7/g |
  f1:9^7 |
  a2:m7 a2:m7/g |
  f1:9^7 |
  a2:m7 a2:m7/g |
  f1:9^7 |
  a2:m7 a2:m7/g |
  f1:9^7 |
  a2:m7 a2:m7/g |
  f1:9^7 |
  a2:m7 a2:m7/g |
  f1:9^7 |
  a2:m7 a2:m7/g |
  f1:9^7 |
  a2:m7 a2:m7/g |
  f1:9^7 |
  a2:m7 a2:m7/g |
  f1:9^7 |
  a2:m7 a2:m7/g |
  f1:9^7 |
  a2:m7 a2:m7/g |
  f1:9^7 |
  a2:m7 a2:m7/g |
  f1:9^7 |
  a2:m7 a2:m7/g |
  f1:9^7 |
  c1 |
  s1 |
  f1:9^7 |
  s1 |
  c1 |
  s1 |
  f1:9^7 |
  s1 |
  a1:m7 |
  s1 |
  f1:9^7 |
  s1 |
  a1:m7 |
  s1 |
  f1:9^7 |
  \bar "|."
}

lyricOneZero = \lyricmode {
  \repeat unfold 16 { \skip1 }
  \set stanza = "1."
  Smi -- luj mi se 
  Gos -- po -- de, __ 
  po ne -- iz -- mjer -- noj 
  lju -- ba -- vi, __ 
  po ve -- li -- kom smi -- 
  lo -- va -- nju svom 
  sav moj grijeh __ 
  iz -- bri -- ši! __
  Bo -- že ti stvo -- 
  ri 
  mi sr -- ce 
  ne -- vi -- 
  no, __ i 
  ob -- no -- 
  vi __ mi 
  ra -- dost svog spa -- se -- 
  nja! \set stanza = "2." Žr -- tva na -- šem 
  Gos -- po -- du, 
  duh je ras -- ka -- jan i 
  po -- ni -- zan. __ 
  Te -- bi, sa -- 
  mom te -- bi ja __ 
  sam zgrije -- ši -- o. __ 
  Ti 
  me od sveg o -- 
  pe -- ri, i bit __ 
  ću bijel ko' snijeg! 
  Ti 
  me od sveg o -- 
  pe -- ri, i bit __ 
  ću bijel ko' snijeg! 
  Ti 
  me od sveg o -- 
  pe -- ri, i bit __ 
  ću bijel ko' snijeg! 
  Ti 
  me od sveg o -- 
  pe -- ri. 
}

lyricOneOne = \lyricmode {
  \repeat unfold 46 { \skip1 }
  Bo -- že ti stvo -- 
  ri 
  mi sr -- ce 
  ne -- vi -- 
  no, __ i 
  ob -- no -- 
  vi __ mi 
  ra -- dost mog spa -- se -- 
  nja! 
}

\score {
    <<
    \new ChordNames { \jazzChords \harmonyOne }
    \new Staff { \staffOne }
    \addlyrics { \lyricOneZero }
    \addlyrics { \lyricOneOne }
    >>
}
