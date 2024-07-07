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
  title = "HALELUJA"
  composer = "Toots and the Maytals"
  titlex = "Farmfest 2024"
  style = ""
  broj = "7"
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
  \key g \major
  \time 4/4
  \tempo 4 = 130
  \markMoj
  r2 r8 h'8 h8 h8 |
  g4 h4 h8 h8 h8 h8 |
  r4 h8 h8 h8 h8 h4 |
  b4 c4 c8 c4 c8 |
  r2 r4 r8 c8 |
  c8 d4 d8 ~d8 d4. |
  d8 d4 d8 r4 c8 c8 |
  c4 c2 d8 c8 |
  h2 r4 r8 h8 |
  h4 r8 h8 d8 h8 g8 h8 |
  r2 r4 a8 g8 |
  a4 c4 ~c8 c8 c4 |
  c2 r4 r8 c8 |
  c8 d4 d8 ~d8 d4. ~|
  d8 d4 d8 ~d4 r8 d8 |
  a4 a8 a8 h4 c8 h8 |
  r8 h8 a8 g8 h8 d8 ~d4 |
  \bar ".|:" \markMojCenter
  d2 ~d8 d8 d8 d8 |
  h4 h4 r4 d8 d8 |
  d4 d4 c8 d4 e8 ~|
  e2. r8 d8 ~|
  d4 d8 d8 d8 d4. |
  d8 d4 d8 ~d4 r8 d8 |
  d4 d8 d8 h4 c4 |
  d1 |
  r1 \bar ":|." |
}

harmonyOne = \chordmode  {
  s2 d2:7 |
  g1:6 |
  s1 |
  c1:7 |
  s1 |
  d1:7 |
  s1 |
  s1 |
  g1:6 |
  s1 |
  s1 |
  c1:7 |
  s1 |
  d1:7 |
  s1 |
  s1 |
  g1:6 |
  g1:6 |
  s1 |
  s1 |
  c1:7 |
  d1:7 |
  s1 |
  s1 |
  g1:6 |
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
  S -- V -- E -- Z -- A -- N, %|
  al’ po i -- me -- nu %|
  I -- S -- U -- S -- A %|
  u %|
  P -- O -- B -- J -- %|
  E -- D -- I ja sam %|
  sa -- da slo -- bo -- %|
  dan! Hej %|
  ti, po -- zi -- vam te sad %|
  jer se %|
  či -- niš __ vr -- lo %|
  jak. Po %|
  K -- R -- I -- S -- %|
  T -- U, __ po %|
  Kri -- stu po -- bje -- đu -- jem %|
  i za -- to kaž -- em: __ %|
  Ha -- le -- a -- le -- %|
  lu -- ja, ha -- le -- %|
  lu -- ja Ja -- nje -- tu. __ %|
  Da, __ %|
  ha -- le -- lu -- ja, %|
  spa -- šen sam. __ Po %|
  Kri -- stu po -- bje -- đu -- %|
  jem! %|
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