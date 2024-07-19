\version "2.24.3"
\include "deutsch.ly"
jazzChords = { \semiGermanChords }
aFourL = {}
\include "include.ily"
%markMoj = #(define-music-function (letter) (string?) #{ \mark \markup { \box \bold #letter } #})
%\pointAndClickOff

\layout {
  indent = 0
}

\header {
  title = "HVALI DUŠO BOGA"
  titlex = "Duhovne pjesme (BASS)"
  %poet = "Joachim Neander, 1680"
  style = "Joachim Neander, 1680"
  composer = "Anonymous, 1665"
  broj = "35"
  %tagline = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { Izvorno: Name, Album } }
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
  \key g \major
  \time 3/4
  \markMoj
  g'4 g4 d'4 |
  h4. a8 g4 |
  fis4 e4 d4 |
  e4 fis4 g4 |
  a2. |
  g2. |
  g4 g4 d'4 |
  h4. a8 g4 |
  fis4 e4 d4 |
  e4 fis4 g4 |
  a2. |
  g2. \bar "||" |
  \markMojCenter
  d'4 d4 d4 |
  e2. |
  h4 c4 d4 |
  d4 c4 h4 |
  a2. |
  d,4 e4 fis4 |
  g4 a4 h4 |
  a2. |
  g2. \bar "|." |
}

harmonyOne = \chordmode  {
  g4 e4:m d4/fis |
  g4. d8 e4:m |
  h4:m c4 g4 |
  c4 fis4:dim/a e4:m |
  a2:m7/c d4:7 |
  g2. |
  g4 e4:m d4/fis |
  g4. d8 e4:m |
  h4:m c4 g4 |
  c4 fis4:dim/a e4:m |
  a2:m7/c d4:7 |
  g2. |
  g4 d4/fis g4 |
  c2. |
  g4 c4/e d4/fis |
  g4 d4:7/a g4/h |
  d2. |
  g4/h c4 fis4:dim/a |
  e4:m a4:m/c h4 |
  a2:m7/c d4:7 |
  g2. |
  \bar "|."
}

alignerOneZero = \relative {
  c4 c4 c4 |
  c4. c8 c4 |
  c4 c4 c4 |
  c4 c4 c4 |
  c2. |
  c2. |
  c4 c4 c4 |
  c4. c8 c4 |
  c4 c4 c4 |
  c4 c4 c4 |
  c2. |
  c2. |
  c4 c4 c4 |
  c2. |
  c4 c4 c4 |
  c4 c4 c4 |
  c2. |
  c4 c4 c4 |
  c4 c4 c4 |
  c2. |
  c2. |
}

lyricOneZero = \lyricmode {
  \set stanza = "1." Hva -- li du -- %|
  šo Bo -- ga %|
  na ne -- bu %|
  mo -- ćno -- ga %|
  kra -- %|
  lja. %|
  To je mo -- %|
  ja že -- lja, %|
  da hva -- lim %|
  o -- nog, kog %|
  va -- %|
  lja. %|
  O, do -- đi -- %|
  te, %|
  psal -- tir, har -- %|
  fu uz -- mi -- %|
  te. %|
  "S pje" -- smom pro -- %|
  sla -- vi -- te %|
  kra -- %|
  lja. %|
}

alignerOneOne = \relative {
  c4 c4 c4 |
  c4. c8 c4 |
  c4 c4 c4 |
  c4 c4 c4 |
  c2. |
  c2. |
  c4 c4 c4 |
  c4. c8 c4 |
  c4 c4 c4 |
  c4 c4 c4 |
  c2. |
  c2. |
  c4 c4 c4 |
  c2. |
  c4 c4 c4 |
  c4 c4 c4 |
  c2. |
  c4 c4 c4 |
  c4 c4 c4 |
  c2. |
  c2. |
}

lyricOneOne = \lyricmode {
  \set stanza = "2." Go -- spo -- da %|
  hva -- li, jer %|
  div -- no i %|
  vje -- što te %|
  sa -- %|
  zda; %|
  zdrav -- lje ti %|
  da -- je i %|
  mu -- dro ru -- %|
  ko -- vo -- di %|
  svag -- %|
  da. %|
  U bje -- di %|
  zloj, %|
  po -- gled na %|
  te spu -- šta %|
  svoj, %|
  bra -- ni te %|
  od zlo -- be %|
  sva -- %|
  gda. %|
}

alignerOneTwo = \relative {
  c4 c4 c4 |
  c4. c8 c4 |
  c4 c4 c4 |
  c4 c4 c4 |
  c2. |
  c2. |
  c4 c4 c4 |
  c4. c8 c4 |
  c4 c4 c4 |
  c4 c4 c4 |
  c2. |
  c2. |
  c4 c4 c4 |
  c2. |
  c4 c4 c4 |
  c4 c4 c4 |
  c2. |
  c4 c4 c4 |
  c4 c4 c4 |
  c2. |
  c2. |
}

lyricOneTwo = \lyricmode {
  \set stanza = "3." Go -- spo -- da %|
  hva -- li, ko -- %|
  ji ti sve %|
  da -- je što %|
  tre -- %|
  ba, %|
  ko -- ji ti %|
  lju -- bav i %|
  bla -- go -- slov %|
  ša -- lje sa %|
  ne -- %|
  ba. %|
  Sje -- ćaj se %|
  tog %|
  što u -- či -- %|
  nit mo -- že %|
  Bog, %|
  da te duš -- %|
  man ne u -- %|
  vre -- %|
  ba. %|
}

alignerOneThree = \relative {
  c4 c4 c4 |
  c4. c8 c4 |
  c4 c4 c4 |
  c4 c4 c4 |
  c2. |
  c2. |
  c4 c4 c4 |
  c4. c8 c4 |
  c4 c4 c4 |
  c4 c4 c4 |
  c2. |
  c2. |
  c4 c4 c4 |
  c2. |
  c4 c4 c4 |
  c4 c4 c4 |
  c2. |
  c4 c4 c4 |
  c4 c4 c4 |
  c2. |
  c2. |
}

lyricOneThree = \lyricmode {
  \set stanza = "4." Go -- spo -- da %|
  hva -- li što %|
  je u me -- %|
  ni: sve što %|
  di -- %|
  še %|
  ne -- ka hva -- %|
  li i -- me %|
  Njeg' -- vo sve -- %|
  to u -- vijek %|
  vi -- %|
  še! %|
  Svje -- tlo jest %|
  Bog! %|
  Sje -- ćaj se %|
  du -- šo 'vijek %|
  tog. %|
  I -- sti -- na %|
  vje -- čna to, %|
  a -- %|
  men! %|
}

\score {
    <<
    \new ChordNames { \jazzChords \clef bass \transpose c' c \harmonyOne }
    \new Staff {
        <<
        \new Voice { \clef bass \transpose c' c \staffOne }
        \new NullVoice = "alignerOneZero" { \alignerOneZero }
        \new Lyrics \lyricsto "alignerOneZero" { \lyricOneZero }
        \new NullVoice = "alignerOneOne" { \alignerOneOne }
        \new Lyrics \lyricsto "alignerOneOne" { \lyricOneOne }
        \new NullVoice = "alignerOneTwo" { \alignerOneTwo }
        \new Lyrics \lyricsto "alignerOneTwo" { \lyricOneTwo }
        \new NullVoice = "alignerOneThree" { \alignerOneThree }
        \new Lyrics \lyricsto "alignerOneThree" { \lyricOneThree }
        >>
    }
    >>
}

\markup {
  \column {
  }
  \hspace #1
  \column {
  }
}