\version "2.24.3"
\include "deutsch.ly"
jazzChords = {}
aFourL = {}
markMoj = {}
\include "../config/include.ily"

\layout {
  indent = 0
}

\header {
  titlex = "Farmfest 2023 (Sparki)"
  broj = "4"
  title = "DOKSOLOGIJA"
  composer = "Genevan Psalter"
  style = ""
  %tagline = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { Izvorno: Name, Album } }
}

\paper {
  \aFourR
  %min-systems-per-page = #7
  %annotate-spacing = ##t
  %system-system-spacing.padding = #3.2
  %page-breaking = #ly:one-page-breaking
  %last-bottom-spacing.minimum-distance = #8
}

staffOne = \relative c' {
  \key as \major
  \time 4/4
  \tempo 4 = 110
  \markMoj
  as'2 as4 g4 |
  f4 es4 as2 |
  b2 c2 | \break
  c2 c4 c4 |
  b4 as4 des2 |
  c2 b2 | \break
  as2 b4 c4 |
  b4 as4 f2 |
  g2 as2 | \break
  es'2 c4 as4 |
  b4 des4 c2 |
  b2 as2 \bar "||" | \break
  \markMoj
  as1 |
  as1 |
}

harmonyOne = \chordmode  {
  as2. g4 |
  f4 es4 c2 |
  des2 es2 |
  es1 |
  e4 f4 b2 |
  b2 es8 es4. |
  as2 e2 |
  as4 as4 des2 |
  c2 f2 |
  c2 f2 |
  b4 b4 es8 d4. |
  es8 es4. as2 |
  des2 des2 |
  as1 |
  \bar "|."
}

lyricOneZero = \lyricmode {
  \set stanza = "1."
  Sla -- vi mo 
  pje -- smom Bo -- 
  ga svog. 
  Svet, svet, je 
  vječ -- ni Go -- 
  spod Bog! 
  Ne -- ka nam 
  ra -- dost o -- 
  sta -- ne, 
  dok ži -- vot 
  naš ne pre -- 
  sta -- ne. 
  A -- 
  men! 
}

lyricOneOne = \lyricmode {
  \set stanza = "2."
  Sva sla -- va 
  O -- cu ne -- 
  be -- skom. 
  Si -- nu i 
  Du -- hu pre -- 
  sve -- tom. 
  Tro -- je -- di -- 
  no -- me Bo -- 
  gu svom, 
  pje -- vaj mo 
  du -- šom za -- 
  hval -- nom. 
}

\score {
    <<
    \new ChordNames { \jazzChords \harmonyOne }
    \new Staff { \staffOne }
    \addlyrics { \lyricOneZero }
    \addlyrics { \lyricOneOne }
    >>
}
