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
  broj = "9"
  title = "JESI LI OČIŠĆEN?"
  composer = "Elisha Hoffman"
  style = ""
  tagline = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { Izvorno: Are You Washed in the Blood? } }
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
  \key as \major
  \time 4/4
  \tempo 4 = 142
  \partial 2
  c4 es4 \bar "||" |
  \markMojCenter as2 as2 |
  as4 es4 c4 es4 |
  as2 as2 |
  as2 as4 b4 |
  c2 c4 c4 |
  c2 des4 c4 |
  b1 ~ |
  b2 c4 b4 |
  as2 as2 |
  as4 c4 b4 as4 |
  f2 f2 |
  f2 as4 f4 |
  es2 as4 as4 |
  as2 g4 g4 |
  as1 ~ |
  as2 c4 b4 \bar "||" |
  \markMojCenter as1 ~ |
  as2 as4 g4 |
  f1 ~ |
  f2 as4 f4 |
  es2 as4 b4 |
  c2 des4 c4 |
  b1 ~ |
  b2 c4 b4 |
  as2 as2 |
  as4 c4 b4 as4 |
  f2 f2 |
  f2 as4 f4 |
  es2 as4 as4 |
  as2 g4 g4 |
  as1 ~ |
  as2 r2 |
}

harmonyOne = \chordmode  {
  s2 |
  as1:7 |
  s1 |
  s1 |
  s1 |
  as2:7 c2:7 |
  f1:m7 |
  b1:m7 |
  es1:7 |
  as1:7 |
  s1 |
  des2:7 f2:9+ |
  b1:m7 |
  as2/es f2:9+ |
  b2:9- es2:7 |
  as1:7 |
  es1:7 |
  as1:7 |
  s1 |
  des1 |
  d4:dim7 as2./c |
  as2/es c2:7 |
  f2:m7/c b2:7 |
  es1:7 |
  s1 |
  as1:7 |
  es2:7.9+ as2:7 |
  des1 |
  d4:dim7 as2./c |
  as1:7 |
  b2:9- es2:7 |
  as1:7 |
  es1:7.5+ |
  \bar "|."
}

lyricOneZero = \lyricmode {
  \set stanza = "1."
  Je -- si 
  li o -- 
  čiš -- ćen, ro -- đen 
  na -- no -- 
  vo, čist kroz 
  krv Kri -- sta 
  Spa -- si -- te -- 
  lja? __ 
  Si -- gu -- 
  ran u 
  mi -- lost Bož -- ju 
  pot -- pu -- 
  no, je -- si 
  li o -- pran 
  od grije -- ha 
  svih? __ 
  Je -- si 
  li __ 
  o -- čiš -- 
  ćen, __ 
  žr -- tvom 
  I -- su -- so -- 
  vom o -- prav -- 
  dan? __ 
  Tvo -- ja 
  ha -- lji -- 
  na "je l'" bije -- la 
  ka -- o 
  snijeg, krv -- lju 
  I -- su -- so -- 
  vom o -- pra -- 
  na? __ 
}

lyricOneOne = \lyricmode {
  \set stanza = "2."
  Je -- si 
  li već 
  spa -- šen, sa -- svim 
  iz -- mi -- 
  ren, čist kroz 
  krv Kri -- sta 
  Spa -- si -- te -- 
  lja? __ 
  Vje -- ran, 
  o -- dan 
  I -- su -- so -- vu 
  na -- u -- 
  ku je -- si 
  li o -- pran 
  od grije -- ha 
  svih? __ 
}

lyricOneTwo = \lyricmode {
  \set stanza = "3."
  Bu -- di 
  pri -- pra -- 
  van za nje -- gov 
  do -- la -- 
  zak, čist kroz 
  krv Kri -- sta 
  Spa -- si -- te -- 
  lja! __ 
  On ti 
  da -- je 
  vječ -- ni ži -- vot, 
  ra -- dost, 
  mir, je -- si 
  li o -- pran 
  od grije -- ha 
  svih? __ 
}

\score {
    <<
    \new ChordNames { \jazzChords \harmonyOne }
    \new Staff { \staffOne }
    \addlyrics { \lyricOneZero }
    \addlyrics { \lyricOneOne }
    \addlyrics { \lyricOneTwo }
    >>
}
