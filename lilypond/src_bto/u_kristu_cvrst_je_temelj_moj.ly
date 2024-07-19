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
  title = "U KRISTU ČVRST JE TEMELJ MOJ"
  titlex = "Farmfest 2024 (Sparki)"
  composer = "W. Bradbury"
  style = ""
  broj = "26"
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
  \time 3/4
  %\tempo 4 = 70
  \partial 4
  \markMoj
  c4 |
  f8 a8 c4 a4 |
  a8 g8 g4 a4 |
  b8 b8 b4 g4 |
  f8 e8 f4 c4 |
  f8 a8 c4 a4 |
  a8 g8 g4 a4 |
  b8 b8 b4 g4 |
  f8 e8 f4 c'4 \bar "||" |
  \markMoj
  c8 c8 b4 a4 |
  d8 d8 d4 d4 |
  c8 a8 f4 f4 |
  a8 a8 g4 c,4 |
  f8 e8 f4 a4 |
  g8 g8 f4 r4 |
  \partial 2
  r2 |
}

harmonyOne = \chordmode  {
  s4 |
  f8 s8 d4 g4 |
  c4 s4 d4 |
  g8 s8 s4 g4 |
  c8 c8 f2 |
  f8 s8 d4 g4 |
  c4 s4 d4 |
  g8 s8 s4 g4 |
  c8 c8 f4 s4 |
  a8 s8 g4 f4 |
  b8 s8 g4 s4 |
  c8 s8 d2 |
  g8 s8 c2 |
  f8 e8 d4 fis4 |
  g8 c8 f2 |
  b4 f4 |
  \bar "|."
}

alignerOneZero = \relative {
  c4 |
  c8 c8 c4 c4 |
  c8 c8 c4 c4 |
  c8 c8 c4 c4 |
  c8 c8 c4 c4 |
  c8 c8 c4 c4 |
  c8 c8 c4 c4 |
  c8 c8 c4 c4 |
  c8 c8 c4 c4 |
  c8 c8 c4 c4 |
  c8 c8 c4 c4 |
  c8 c8 c4 c4 |
  c8 c8 c4 c4 |
  c8 c8 c4 c4 |
  c8 c8 c4 r4 |
  r2 |
}

lyricOneZero = \lyricmode {
  \set stanza = "1." U %|
  Kri -- stu čvrst je %|
  te -- melj moj, na %|
  nje -- mu gra -- dim %|
  ži -- vot svoj. Sve %|
  dru -- go br -- zo %|
  ne -- sta -- je, Krist %|
  čvr -- sta stije -- na %|
  o -- sta -- je. Krist %|
  je ta Stije -- na %|
  si -- gur -- na, na %|
  nje -- ga na -- du %|
  o -- slo -- ni, na %|
  pije -- sku vi -- še %|
  ne gra -- di. %|
  %|
}

alignerOneOne = \relative {
  c4 |
  c8 c8 c4 c4 |
  c8 c8 c4 c4 |
  c8 c8 c4 c4 |
  c8 c8 c4 c4 |
  c8 c8 c4 c4 |
  c8 c8 c4 c4 |
  c8 c8 c4 c4 |
  c8 c8 c4 r4 |
  r8 r8 r4 r4 |
  r8 r8 r4 r4 |
  r8 r8 r4 r4 |
  r8 r8 r4 r4 |
  r8 r8 r4 r4 |
  r8 r8 r4 r4 |
  r2 |
}

lyricOneOne = \lyricmode {
  \set stanza = "2." A -- %|
  ko i li -- ce %|
  za -- klo -- ni, on %|
  mi -- lost svo -- ju %|
  da -- je mi. Ne -- %|
  ka se di -- žu %|
  va -- lo -- vi, ta %|
  stije -- na će iz -- %|
  dr -- ža -- ti. %|
  %|
  %|
  %|
  %|
  %|
  %|
  %|
}

alignerOneTwo = \relative {
  c4 |
  c8 c8 c4 c4 |
  c8 c8 c4 c4 |
  c8 c8 c4 c4 |
  c8 c8 c4 c4 |
  c8 c8 c4 c4 |
  c8 c8 c4 c4 |
  c8 c8 c4 c4 |
  c8 c8 c4 r4 |
  r8 r8 r4 r4 |
  r8 r8 r4 r4 |
  r8 r8 r4 r4 |
  r8 r8 r4 r4 |
  r8 r8 r4 r4 |
  r8 r8 r4 r4 |
  r2 |
}

lyricOneTwo = \lyricmode {
  \set stanza = "3." Kri -- %|
  sto -- va krv je %|
  za -- vjet moj, on %|
  da -- de za me %|
  ži -- vot svoj. A -- %|
  ko i sve se %|
  ras -- pad -- ne, on %|
  čvr -- sta stije -- na %|
  o -- sta -- je. %|
  %|
  %|
  %|
  %|
  %|
  %|
  %|
}

alignerOneThree = \relative {
  c4 |
  c8 c8 c4 c4 |
  c8 c8 c4 c4 |
  c8 c8 c4 c4 |
  c8 c8 c4 c4 |
  c8 c8 c4 c4 |
  c8 c8 c4 c4 |
  c8 c8 c4 c4 |
  c8 c8 c4 r4 |
  r8 r8 r4 r4 |
  r8 r8 r4 r4 |
  r8 r8 r4 r4 |
  r8 r8 r4 r4 |
  r8 r8 r4 r4 |
  r8 r8 r4 r4 |
  r2 |
}

lyricOneThree = \lyricmode {
  \set stanza = "4." Kad %|
  I -- sus do -- đe %|
  su -- di -- ti, zvuk %|
  tru -- be će me %|
  poz -- va -- ti. Tad %|
  u bje -- li -- ni %|
  sta -- jat ću, u %|
  su -- sret nje -- mu %|
  po -- ći ću. %|
  %|
  %|
  %|
  %|
  %|
  %|
  %|
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