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
  as1 |
  as1 |
}

harmonyOne = \chordmode  {
  as2. es4/g |
  f4:m7 f4:m7/es as2:7/c |
  des2:m6 as2/es |
  as1/es |
  e4:dim7 f4:m7.11 b2:m7.11 |
  b2:7 des8:6/es es4. |
  as2 e2:dim7 |
  ges4:maj9/as as4 des2 |
  c2:9- f2:m7.11 |
  as2/c f2:m7 |
  b4:m b4: as8/es d4.: |
  b8:m7.11/es es4.:7 as2 |
  des2 des2:m6 |
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
