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
  title = "ZAHVAL'TE BOGU"
  composer = "Johann Crüger, 1647"
  titlex = "Duhovne pjesme"
  %poet = "Martin Rinkart, 1636"
  style = "Martin Rinkart, 1636"
  broj = "36"
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
  \key f \major
  \time 4/4
  \partial 4
  c'4 |
  \markMojCenter
  c4 c4 d4 d4 |
  c2 r4 a4 |
  b4 a4 g4 a4 |
  g2 f4 c'4 |
  c4 c4 d4 d4 |
  c2 r4 a4 |
  b4 a4 g4 a4 |
  g2 f4 g4 \bar "||" |
  \markMojCenter
  g4 g4 a4 a4 |
  g2 r4 g4 |
  a4 c4 c4 h4 |
  c2 r4 c4 |
  d4 c4 b4 a4 |
  b2 r4 a4 |
  g4 b4 a4 g4 |
  \partial 2.
  f2 r4 |
}

harmonyOne = \chordmode  {
  f4 |
  c4:7/e f4 b2 |
  f2. s4 |
  g4:m f4/a c4 f4 |
  b4 c4:7 f4 s4 |
  c4:7/e f4 b2 |
  f2. s4 |
  g4:m f4/a c4 f4 |
  b4:6 c4:7 f4 c4 |
  g4/h c4 f2 |
  c2. s4 |
  f4 c4/e f4:6 g4:7 |
  c2. f4 |
  b4 f4 g4:m d4 |
  g2.:m f4/a |
  c4 b4/d f4/c c4:7 |
  f2. |
  \bar "|."
}

alignerOneZero = \relative {
  c4 |
  c4 c4 c4 c4 |
  c2 r4 c4 |
  c4 c4 c4 c4 |
  c2 c4 c4 |
  c4 c4 c4 c4 |
  c2 r4 c4 |
  c4 c4 c4 c4 |
  c2 c4 c4 |
  c4 c4 c4 c4 |
  c2 r4 c4 |
  c4 c4 c4 c4 |
  c2 r4 c4 |
  c4 c4 c4 c4 |
  c2 r4 c4 |
  c4 c4 c4 c4 |
  c2 r4 |
}

lyricOneZero = \lyricmode {
  \set stanza = "1." Za -- %|
  hval' -- te Bo -- gu %|
  sad sr -- %|
  cem, ust' -- mi, ru -- %|
  ka -- ma, jer %|
  dje -- la vel' -- ka %|
  rad, On %|
  či -- ni svud na %|
  na -- ma. Ko -- %|
  ji od po -- stan -- %|
  ka i %|
  na -- šeg dje -- tin -- %|
  stva bez -- %|
  broj sva -- kog dan -- %|
  ka dije -- %|
  li do -- bro -- čin -- %|
  stva. %|
}

alignerOneOne = \relative {
  c4 |
  c4 c4 c4 c4 |
  c2 r4 c4 |
  c4 c4 c4 c4 |
  c2 c4 c4 |
  c4 c4 c4 c4 |
  c2 r4 c4 |
  c4 c4 c4 c4 |
  c2 c4 c4 |
  c4 c4 c4 c4 |
  c2 r4 c4 |
  c4 c4 c4 c4 |
  c2 r4 c4 |
  c4 c4 c4 c4 |
  c2 r4 c4 |
  c4 c4 c4 c4 |
  c2 r4 |
}

lyricOneOne = \lyricmode {
  \set stanza = "2." Pre -- %|
  bo -- gat O -- tac %|
  naš ne -- %|
  ka nam u ži -- %|
  vo -- tu ra -- %|
  do -- sno sr -- ce %|
  da i %|
  mir svoj i či -- %|
  sto -- tu. U %|
  svo -- joj mi -- lo -- %|
  sti, nek %|
  nas On dr -- ži %|
  'vijek; prot' %|
  sva -- koj sla -- bo -- %|
  sti, nek %|
  od Njeg' nam je %|
  lijek. %|
}

alignerOneTwo = \relative {
  c4 |
  c4 c4 c4 c4 |
  c2 r4 c4 |
  c4 c4 c4 c4 |
  c2 c4 c4 |
  c4 c4 c4 c4 |
  c2 r4 c4 |
  c4 c4 c4 c4 |
  c2 c4 c4 |
  c4 c4 c4 c4 |
  c2 r4 c4 |
  c4 c4 c4 c4 |
  c2 r4 c4 |
  c4 c4 c4 c4 |
  c2 r4 c4 |
  c4 c4 c4 c4 |
  c2 r4 |
}

lyricOneTwo = \lyricmode {
  \set stanza = "3." Čast, %|
  hva -- la i sla -- %|
  va Bo -- %|
  gu, O -- cu i %|
  Si -- nu i %|
  Du -- hu sve -- to -- %|
  mu, na %|
  ne -- be -- sko -- me %|
  tro -- nu: tro -- %|
  je -- d'no -- me Bo -- %|
  gu, ko -- %|
  ji je "s po" -- če -- %|
  tka, i %|
  jest i o -- sta -- %|
  je vaz -- %|
  da i do -- vje -- %|
  ka. %|
}

\score {
    <<
    \new ChordNames { \jazzChords \harmonyOne }
    \new Staff {
        <<
        \new Voice { \staffOne }
        \new NullVoice = "alignerOneZero" { \alignerOneZero }
        \new Lyrics \lyricsto "alignerOneZero" { \lyricOneZero }
        \new NullVoice = "alignerOneOne" { \alignerOneOne }
        \new Lyrics \lyricsto "alignerOneOne" { \lyricOneOne }
        \new NullVoice = "alignerOneTwo" { \alignerOneTwo }
        \new Lyrics \lyricsto "alignerOneTwo" { \lyricOneTwo }
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