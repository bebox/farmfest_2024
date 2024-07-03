\version "2.24.3"
\include "deutsch.ly"
jazzChords = { \semiGermanChords }
aFourR = {}
\include "include.ily"
%markMoj = #(define-music-function (letter) (string?) #{ \mark \markup { \box \bold #letter } #})
%\pointAndClickOff

\layout {
  indent = 0
}

\header {
  title = "HALLELUJAH"
  composer = "Toots And the Maytals"
  style = ""
  broj = "1"
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
  \key b \major
  \time 4/4
  %\tempo 4 = 130
  r2 r8 d8 d8 d8 |
  b4 d4 d8 d8 d8 d8 |
  r4 d8 d8 d8 d8 d4 |
  des4 es4 es8 es4 es8 |
  r2 r4 r8 es8 |
  es8 f4 f8 ~f8 f4. |
  f8 f4 f8 r4 es8 es8 |
  es4 es2 f8 es8 |
  d2 r4 r8 d8 |
  d4 r8 d8 f8 d8 b8 d8 |
  r2 r4 c8 b8 |
  c4 es4 ~es8 es8 es4 |
  es2 r4 r8 es8 |
  es8 f4 f8 ~f8 f4. ~|
  f8 f4 f8 ~f4 r8 f8 |
  c4 c8 c8 d4 es8 d8 |
  r8 d8 c8 b8 d8 f8 ~f4 |
  \bar ".|:" f2 ~f8 f8 f8 f8 |
  d4 d4 r4 f8 f8 |
  f4 f4 es8 f4 g8 ~|
  g2. r8 f8 ~|
  f4 f8 f8 f8 f4. |
  f8 f4 f8 ~f4 r8 f8 |
  f4 f8 f8 d4 es4 |
  f1 |
  r1 \bar ":|." |
}

harmonyOne = \chordmode  {
  s2 f2:7 |
  b1:6 |
  s1 |
  es1:7 |
  s1 |
  f1:7 |
  s1 |
  s1 |
  b1:6 |
  s1 |
  s1 |
  es1:7 |
  s1 |
  f1:7 |
  s1 |
  s1 |
  b1:6 |
  b1:6 |
  s1 |
  s1 |
  es1:7 |
  f1:7 |
  s1 |
  s1 |
  b1:6 |
  s1 |
  \bar "|."
}

alignerOneZero = \relative {
  r2 r8 c8 c8 c8 |
  c4 c4 c8 c8 c8 c8 |
  r4 c8 c8 c8 c8 c4 |
  c4 c4 c8 c4 c8 |
  r2 r4 r8 c8 |
  c8 c4 c8 r8 c4. |
  c8 c4 c8 r4 c8 c8 |
  c4 c2 c8 c8 |
  c2 r4 r8 c8 |
  c4 r8 c8 c8 c8 c8 c8 |
  r2 r4 c8 c8 |
  c4 c4( c8) c8 c4 |
  c2 r4 r8 c8 |
  c8 c4 c8 r8 c4. |
  r8 c4 c8( c4) r8 c8 |
  c4 c8 c8 c4 c8 c8 |
  r8 c8 c8 c8 c8 c8( c4) |
  c2 r8 c8 c8 c8 |
  c4 c4 r4 c8 c8 |
  c4 c4 c8 c4 c8( |
  c2.) r8 c8( |
  c4) c8 c8 c8 c4. |
  c8 c4 c8( c4) r8 c8 |
  c4 c8 c8 c4 c4 |
  c1 |
  r1 |
}

lyricOneZero = \lyricmode {
  Bi -- o sam %|
  S -- V -- E -- Z -- A -- N %|
  Al’ po i -- me -- nu %|
  I -- S -- U -- S -- A %|
  U %|
  P -- O -- B -- J -- %|
  E -- D -- I ja sam %|
  sa -- da slo -- bo -- %|
  dan Hej %|
  ti, po -- zi -- vam te sad %|
  jer se %|
  či -- niš __ vr -- lo %|
  jak Po %|
  K -- R -- I -- S -- %|
  T -- U __ Po %|
  Kri -- stu po -- bje -- đu -- jem %|
  I za -- to kaž -- em __ %|
  Ha -- lle -- a -- lle -- %|
  lu -- jah Ha -- lle -- %|
  lu -- jah Ja -- nje -- tu __ %|
  Da __ %|
  Ha -- lle -- lu -- jah, %|
  Spa -- šen sam __ Po %|
  Kri -- stu po -- bje -- đu -- %|
  jem %|
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