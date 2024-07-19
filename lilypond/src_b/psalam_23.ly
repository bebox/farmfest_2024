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
  title = "PSALAM 23"
  composer = "Jonatan Vukov"
  titlex = "Farmfest 2024 (Bb)"
  style = ""
  broj = "15"
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
  \key a \major
  \time 4/4
  %\tempo 4 = 70
  \clef treble
  \markMoj
  r8 cis8 cis16 h8 h16 ~h16 cis8 cis16 r8 cis16 a'16 |
  gis8 gis16 gis16 gis16 e8 cis16 ~cis4 r8. h16 |
  h16 cis8 cis16 ~cis8 h16 h16 ~h16 cis16 cis8 r8 cis16 a'16 |
  \set Score.repeatCommands = #'((volta "1.")) gis8 gis8 gis16 e8 cis16 ~cis4 r8 e8 |
  fis4 fis8 fis8 fis8 ~fis8 fis8 a,16 h16 ~|
  h16 cis8. ~cis2 r8 e8 |
  fis4. fis8 fis4. a,16 h16 ~|
  h16 cis8. ~cis4 r2 \bar ":|." |
  \set Score.repeatCommands = #'((volta #f)) \set Score.repeatCommands = #'((volta "2.")) gis'8 gis8 gis16 e8 cis16 ~cis4 r4 |
  fis4 fis8 fis8 fis8 fis8 fis8 a,16 h16 ~|
  h16 cis8. r8 cis16 cis16 cis16 h8 h16 h16 a8 cis16 ~|
  cis2. r4 |
  r1 \bar "||" | \break
  \markMoj
  \set Score.repeatCommands = #'((volta #f)) r8 a'16 a16 a16 a16 a16 a16 a16 e8. a16 h8. |
  gis8 (fis16 )fis16 (~fis8 e8 ~e2 )|
  r8 h'8 h8 h16 h16 ~h16 h8 h16 h8 h16 fis16 ~|
  fis16 fis8. ~fis2 r8 gis8 |
  a4. a8 a4 a8 a,16 h16 ~|
  h16 cis8. ~cis4 cis8 h16 h16 ~h8 a16 a16 ~|
  a2. r4 \bar "|." |
}

harmonyOne = \chordmode  {
  a1 |
  cis1:m |
  a1 |
  cis1:m |
  d1 |
  fis1:m |
  d1 |
  fis2:m e2 |
  cis1:m |
  d1 |
  fis2:m e2 |
  a1 |
  e1 |
  a1 |
  cis1:m |
  e1 |
  h1 |
  d2/h d2:maj7 |
  fis2:m e2 |
  a1 |
  \bar "|."
}

alignerOneZero = \relative {
  r8 c8 c16 c8 c16 r16 c8 c16 r8 c16 c16 |
  c8 c16 c16 c16 c8 c16( c4) r8. c16 |
  c16 c8 c16 r8 c16 c16 r16 c16 c8 r8 c16 c16 |
  c8 c8 c16 c8 c16( c4) r8 c8 |
  c4 c8 c8 c8 r8 c8 c16 c16 |
  r16 c8.( c2) r8 c8 |
  c4. c8 c4. c16 c16 |
  r16 c8.( c4) r2 |
  c8 c8 c16 c8 c16( c4) r4 |
  c4 c8 c8 c8 c8 c8 c16 c16 |
  r16 c8. r8 c16 c16 c16 c8 c16 c16 c8 c16( |
  c2.) r4 |
  r1 |
  r8 c16 c16 c16 c16 c16 c16 c16 c8. c16 c8. |
  c8 r16 c16( c8 c8 c2) |
  r8 c8 c8 c16 c16 r16 c8 c16 c8 c16 c16 |
  r16 c8.( c2) r8 c8 |
  c4. c8 c4 c8 c16 c16 |
  r16 c8.( c4) c8 c16 c16( c8) c16 c16( |
  c2.) r4 |
}

lyricOneZero = \lyricmode {
  Ja -- hve je pa -- stir moj: ni u %|
  čem ne o -- sku -- dje -- vam. __ Na %|
  po -- lja -- na -- ma ze -- le -- nim On mi %|
  da -- je od -- mo -- ra. __ Na %|
  vru -- tke me ti -- ha -- ne vo -- %|
  di __ i %|
  krije -- pi du -- šu mo -- %|
  ju. __ %|
  da -- je od -- mo -- ra. __ %|
  Sta -- za -- ma pra -- vim On me vo -- %|
  di ra -- di i -- me -- na svo -- je -- ga. __ %|
  %|
  %|
  Pa da mi je i do -- li -- nom smr -- ti %|
  pro -- ći, __ %|
  zla se ne bo -- jim, jer ti si sa -- %|
  mnom __ Tvoj %|
  štap i pa -- li -- ca tvo -- %|
  ja __ u -- tje -- ha __ su mi. __ %|
  %|
}

\score {
    <<
    \new ChordNames { \jazzChords \transpose b c \harmonyOne }
    \new Staff {
        <<
        \new Voice { \transpose b c \staffOne }
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