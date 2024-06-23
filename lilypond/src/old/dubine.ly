\version "2.23.9"
\include "../config/include.ily"

\header {
  title = "DUBINE"
  titlex = "Farmfest 2021"
  composer = "Matt Crocker, Joel Houston"
  style = "Salomon Ligthelm"
  broj = "5"
  tagline = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { Izvorno: Oceans (Where Feet May Fail), 2013 Hillsong United } }
}

\paper {
  \aFourL
  %min-systems-per-page = #7
  %annotate-spacing = ##t
  %system-system-spacing.padding = #3.2
}

note = \relative c' {
  \clef treble
  \key d \major
  \time 4/4
  
  \markMoj
  r8. a16 h8. a16 h8. a16 cis8. d16 |
  d4 a4 r8. a16 d8. d16 ~ |
  d8 cis8 ~ cis4 r8. a16 cis8. d16 ~ |
  d8 h8 ~ h4 r2 \break |
  r8. a16 h8. a16 h8. a16 cis8. d16 |
  d4 a4 r8. d16 d8. e16 ~ |
  e8 e8 ~ e4 r8 d16 d16 f16 ( e8 ) d16 ~ |
  d8 h8 ~ h4 r2 |
  
  \markMoj \break
  r8. \parenthesize d16 h'8. a16 fis8. fis16 fis16 ( e8 ) d16 ~ |
  d8 e8 ~ e4 r2 |
  r8. d16 h'8. a16 fis8. fis16 fis16 ( e8 ) d16 ~ |
  d8 e8 ~ e4 r8. \parenthesize d16 f16 ( e16 ) d16 ( h16 ) |
  h8. h16 h'8. a16 fis8. fis16 fis16 ( e8 ) d16 ~ |
  d8 e8 ~ e8. \parenthesize d16 fis4 a4 |
  h,2 ~ h8. h16 cis8. d16 ~ |
  
    \once \override Score.RehearsalMark.self-alignment-X = #CENTER
  \once \override Score.RehearsalMark.Y-offset = #0.5
  \once \override Staff.BarLine.extra-spacing-width = #'(0 . 1.5)
  \mark \default
  d8 d8 ~ d2 r4 |
  r1 |
  r1 |
  r1 |
  
  \markMoj \break
  r4 a'16 h8 h16 ~ h8 fis16 fis16 ~ fis16 a8 a16 ~ |
  a8 g16 g16 ~ g16 fis8 fis16 ~ fis8 e8 r16 d16 a'16 a16 ~ |
  a8 g16 g16 ~ g8 fis16 fis16 ~ fis8 e8 r8. d16 |
  e8 d16 e16 ~ e8 d8 g4 fis4 |
  r4 a16 h8 h16 ~ h8 fis16 fis16 ~ fis16 a8 a16 ~ |
  a8 g16 g16 ~ g8 fis16 fis16 ~ fis8 e8 r16 d16 a'16 a16 ~ |
  a8 g16 g16 ~ g16 fis8 fis16 ~ fis8 e8 r16 d16 d16 e16 ~ |
  e8 d16 e16 ~ e8 d8 g4 fis4 |
  \bar "|."
}

tekst = \lyricmode {
  \set stanza = "1."
  _ Znam da zo -- veš, 
  al' se bo -- jim _ ho -- ću li __ po -- to -- nu ti. __ 
  "" Ti si taj -- na ko -- joj i -- dem. 
  U vje -- ri __ ja __ "" ću ho -- da -- ti. __ 
  
  "" I -- me Tvo -- je za -- zvat ću __ i gle -- dat' go -- re iz -- nad __ svih __ "" va -- lo -- va. 
  U Te -- bi mi -- ran o -- stat __ ću __ "" Ja sam Tvoj __ i Ti si __ moj. __ 
  
  
  Du -- še Sve -- ti na -- poj sr -- ce po -- vje -- re -- njem, 
  gdje god zo -- veš daj da kre -- nem, 
  po mo -- ri -- ma da ho -- dam. 
  Ti me vo -- di gdje su naj -- ve -- će du -- bi -- ne, 
  di -- ži vje -- ru u vi -- si -- ne, 
  znam da Spa -- si -- telj je ov -- dje. 
}

ref = \lyricmode {
  \set stanza = "2."
  Du -- bi -- ne ču -- va Tvo -- ja mi -- lost i moć -- na Ti __ "" de -- sni ca. __ 
  Kad kre -- ne strah i do -- đe sla -- bost, 
  Ti o -- stat ćeš mo -- ja po -- bje -- da. __ 

}

akordi = \chordmode {
   \set chordChanges = ##t
h2.:m a4/cis |
d1 |
a1 |
g1 |
h2.:m a4/cis |
d1 |
a1 |
g1 |
g2 d | a1 |
g2 d | a1 |
g2 d | a1 |
g2 a2 |
h2.:m a4/cis |
d1 |
a1 |
g1 |

h1:m | g | d | a |
h1:m | g | d | a |
}

\score {
  <<
    \new ChordNames {  \jazzChords \akordi }
    \new Staff { \note }
    \addlyrics { \tekst }
    \addlyrics { \ref }
  >>
  \layout {}
}

