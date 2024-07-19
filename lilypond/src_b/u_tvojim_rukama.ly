\version "2.24.3"
\include "../config/include.ily"

\header {
  title = "U TVOJIM RUKAMA"
  titlex = "Farmfest 2021 (Bb)"
  composer = "Waiting For Steve"
  style = ""
  broj = "30"
  tagline = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { Izvorno: In Your Hand, On a Sunday
  } }
}

\paper {
  \aFourL
  %min-systems-per-page = #7
  %annotate-spacing = ##t
  %system-system-spacing.padding = #3.2
}

staffOne = \relative c'' {
  \key a \major
  \time 12/8
   
  \markMojPoc
  R1. |
  R1. |
  R1. |
  \break

  \markMojPonRight
  r4 h8 h4 cis8 a4. cis4 fis,8 |
  a8( gis) gis gis gis gis cis4 h8 a4. |
  r4 cis8 h4 cis8 a8( gis4) cis8 cis h |
  a4 a8 a4 h8 a2. |
  r4 cis8 h4 cis8 a4 a8 cis8 cis h |
  a4 gis8 a4 h8 a2. |
  r4 cis8 h4 cis8 a4. cis8 cis h |
  a8( gis4) cis8 cis cis d2. |
  \break

  \markMojCenter
  \bar ".|:-||"
  e2. ~ e4. ~ e4 d8 |
  d4 cis8 ~ cis4. ~ cis4. cis8 h cis |
  d4. cis a2. |
  e'8 e cis h4. e8 e cis h8( a4) |
  r4 a8 e' cis h h4. cis |
  a1. |
  \bar ":|."
}

tekst = \lyricmode {
Ti i -- sti si ka -- o ju -- čer, da -- nas i u -- vje -- ke.
Ti i -- sti si ma -- kar i o -- dem od te -- be.
Ti i -- sti si kad' ka -- žem da te ne po -- zna -- jem.
Ti i -- sti si, i -- sti si da, i -- sti si da. __
}

ref = \lyricmode {
Bog __ moj o -- tac. __ U tvo -- jim ru -- ka -- ma.
I -- sti si da, je -- di -- ni Bog.
Sad te -- bi se vra -- ćam ja. __
}

harmonyOne = \chordmode {
  \set chordChanges = ##t
  a2. a2./cis |
  a2. a2./cis |
  d2. d4. a4./cis |
  
  a2. a2./h |
  a2./cis d2.:maj7 |
  a2. h2.:sus4 |
  a2./cis d2.:maj7 |
  a2. a2./h |
  a2./cis d2.:maj7 |  
  a2. a2./h |
  a2./cis d2.:maj7 |
  
  a2. a2./cis |
  a2. a2./cis |
  d2. d4. a4./cis |
  a2. a2./cis |
  a2. a2./cis |
  d2. d4. a4./cis |
}

\score {
  <<
    \new ChordNames {  \jazzChords \transpose b c \harmonyOne }
    \new Staff { \transpose b c \staffOne }
    \addlyrics { \tekst \ref }
  >>
  \layout {}
}
