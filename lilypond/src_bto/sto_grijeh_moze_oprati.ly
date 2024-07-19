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
  title = "ŠTO GRIJEH MOŽE OPRATI"
  titlex = "Farmfest 2024 (Sparki)"
  composer = "Robert Lowry"
  style = ""
  broj = "21"
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
  \time 4/4
  %\tempo 4 = 100
  \markMoj
  g'4 g4 g4 a4 |
  h4 d4 h2 |
  g8 g8 g8 a8 h4 h4 |
  a2 g2 |
  g4 g4 g4 a4 |
  h4 d4 h2 |
  g8 g8 g8 a8 h4 h4 |
  a2 g2 \bar "||" |
  \markMoj
  d'2 h4 a4 |
  h4 d4 h2 |
  a2 a4 g4 |
  a4 a4 h4 (d4 )|
  d2 h4 a4 |
  h4 d4 h2 |
  g8 g8 g8 a8 h4 h4 |
  a2 g2 |
}

harmonyOne = \chordmode  {
  g2 fis2 |
  e2 d2 |
  c2 h2 |
  a4 d4 g2 |
  g2 fis2 |
  e2 d2 |
  c2 h2 |
  a4 d4 g2 |
  g1 |
  e1 |
  c2 h4 b4 |
  a2 d2 |
  g1 |
  e1 |
  c2 h4 b4 |
  a4 d4 g2 |
  \bar "|."
}

alignerOneZero = \relative {
  c4 c4 c4 c4 |
  c4 c4 c2 |
  c8 c8 c8 c8 c4 c4 |
  c2 c2 |
  c4 c4 c4 c4 |
  c4 c4 c2 |
  c8 c8 c8 c8 c4 c4 |
  c2 c2 |
  c2 c4 c4 |
  c4 c4 c2 |
  c2 c4 c4 |
  c4 c4 c4( c4) |
  c2 c4 c4 |
  c4 c4 c2 |
  c8 c8 c8 c8 c4 c4 |
  c2 c2 |
}

lyricOneZero = \lyricmode {
  \set stanza = "1." Što grijeh mo -- že %|
  o -- pra -- ti? %|
  Ni -- šta o -- sim kr -- vi %|
  Kri -- sta. %|
  Što će me iz -- %|
  lije -- či -- ti? %|
  Ni -- šta o -- sim kr -- vi %|
  Kri -- sta! %|
  O dra -- go -- %|
  cje -- na krv, %|
  ko -- ja sav %|
  pe -- re grijeh! __ %|
  Za dru -- go %|
  ne znam ja, %|
  je -- di -- no za krv mog %|
  Kri -- sta. %|
}

alignerOneOne = \relative {
  c4 c4 c4 c4 |
  c4 c4 c2 |
  c8 c8 c8 c8 c4 c4 |
  c2 c2 |
  c4 c4 c4 c4 |
  c4 c4 c2 |
  c8 c8 c8 c8 c4 c4 |
  c2 c2 |
  r2 r4 r4 |
  r4 r4 r2 |
  r2 r4 r4 |
  r4 r4 r4 r4 |
  r2 r4 r4 |
  r4 r4 r2 |
  r8 r8 r8 r8 r4 r4 |
  r2 r2 |
}

lyricOneOne = \lyricmode {
  \set stanza = "2." O -- prost da -- je %|
  je -- di -- no %|
  pro -- li -- ve -- na krv mog %|
  Kri -- sta. %|
  O -- pro -- šte -- no %|
  mi je sve, %|
  o -- čiš -- ćen sam kr -- vlju %|
  Kri -- sta! %|
  %|
  %|
  %|
  %|
  %|
  %|
  %|
  %|
}

alignerOneTwo = \relative {
  c4 c4 c4 c4 |
  c4 c4 c2 |
  c8 c8 c8 c8 c4 c4 |
  c2 c2 |
  c4 c4 c4 c4 |
  c4 c4 c2 |
  c8 c8 c8 c8 c4 c4 |
  c2 c2 |
  r2 r4 r4 |
  r4 r4 r2 |
  r2 r4 r4 |
  r4 r4 r4 r4 |
  r2 r4 r4 |
  r4 r4 r2 |
  r8 r8 r8 r8 r4 r4 |
  r2 r2 |
}

lyricOneTwo = \lyricmode {
  \set stanza = "3." Što će me o -- %|
  prav -- da -- ti? %|
  ni -- šta o -- sim kr -- vi %|
  Kri -- sta. %|
  Dije -- la ne -- će %|
  spa -- si -- ti, %|
  ni -- šta o -- sim kr -- vi %|
  Kri -- sta! %|
  %|
  %|
  %|
  %|
  %|
  %|
  %|
  %|
}

alignerOneThree = \relative {
  c4 c4 c4 c4 |
  c4 c4 c2 |
  c8 c8 c8 c8 c4 c4 |
  c2 c2 |
  c4 c4 c4 c4 |
  c4 c4 c2 |
  c8 c8 c8 c8 c4 c4 |
  c2 c2 |
  r2 r4 r4 |
  r4 r4 r2 |
  r2 r4 r4 |
  r4 r4 r4 r4 |
  r2 r4 r4 |
  r4 r4 r2 |
  r8 r8 r8 r8 r4 r4 |
  r2 r2 |
}

lyricOneThree = \lyricmode {
  \set stanza = "4." I -- mam na -- du %|
  i svoj mir %|
  je -- di -- no u kr -- vi %|
  Kri -- sta. %|
  O -- prav -- dan sam %|
  pot -- pu -- no %|
  pro -- li -- ve -- nom kr -- vlju %|
  Kri -- sta! %|
  %|
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