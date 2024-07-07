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
  title = "HVALA TI, MOJ ISUSE"
  composer = "Andrea Gelemanović"
  titlex = "Farmfest 2024"
  style = ""
  broj = "8"
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
  \time 6/8
  \partial 4
  \clef treble
  c8 d8 |
  \markMojCenter
  e8 f8 e8 d8 c8 h16 a16 ~|
  a4. r8 c8 d8 |
  e8 f8 e8 g8 h,8 d8 |
  c4. r8 c8 d8 |
  e8 f8 e8 d8 c8 h16 a16 ~|
  a4. r8 c8 h8 |
  c8 h8 c8 d8 c8 h8 |
  c2. |
  r2. \bar "||" | \break
  \bar ".|:" \markMojPonn
  g'4. e4 r16 c16 |
  a'8 g8 e8 e8 f8 g8 ~|
  g8 c,4 ~c4 r16 c16 |
  a'8 g8 e8 e8 f8 g8 ~|
  g8 e16 (d16 ~d2 )|
  e8 d8 c8 e8 d8 c16 c16 ~|
  c2. |
  \partial 2
  r2 \bar ":|." |
}

harmonyOne = \chordmode  {
  s4 |
  c4. g4. |
  f2. |
  c4. g4. |
  f2. |
  c4. g4. |
  f2. |
  a4.:m g4. |
  f2. |
  s2. |
  c2. |
  s2. |
  a2.:m |
  s2. |
  g2. |
  s2. |
  f2. |
  s2 |
  \bar "|."
}

alignerOneZero = \relative {
  c8 c8 |
  c8 c8 c8 c8 c8 c16 c16( |
  c4.) r8 c8 c8 |
  c8 c8 c8 c8 c8 c8 |
  c4. r8 c8 c8 |
  c8 c8 c8 c8 c8 c16 c16( |
  c4.) r8 c8 c8 |
  c8 c8 c8 c8 c8 c8 |
  c2. |
  r2. |
  c4. c4 r16 c16 |
  c8 c8 c8 c8 c8 c8( |
  c8) c4( c4) r16 c16 |
  c8 c8 c8 c8 c8 c8( |
  c8) c16( c16 c2) |
  c8 c8 c8 c8 c8 c16 c16( |
  c2.) |
  r2 |
}

lyricOneZero = \lyricmode {
  \set stanza = "1." Ti si %|
  po -- zva -- o ne -- po -- dob -- ne, __ %|
  pro -- na -- %|
  ša -- o si iz -- gu -- blje -- %|
  ne, sla -- bo, %|
  pre -- zre -- no si pri -- mi -- o, __ %|
  svo -- je %|
  Kra -- ljev -- stvo da -- ro -- va -- %|
  o. %|
  %|
  Hva -- la za %|
  lju -- bav što da -- la je __ %|
  sve, __ za %|
  mi -- lost što pre -- kri -- va __ %|
  me, __ %|
  hva -- la za sve, I -- su -- se. __ %|
  %|
  %|
}

alignerOneOne = \relative {
  c8 c8 |
  c8 c8 c8 c8 c8 c16 c16( |
  c4.) r8 c8 c8 |
  c8 c8 c8 c8 c8 c8 |
  c4. r8 c8 c8 |
  c8 c8 c8 c8 c8 c16 c16( |
  c4.) r8 c8 c8 |
  c8 c8 c8 c8 c8 c8 |
  c2. |
  r2. |
  c4. c4 r16 c16 |
  c8 c8 c8 c8 c8 c8( |
  c8) c4( c4) r16 c16 |
  c8 c8 c8 c8 c8 c8( |
  c8) c16( c16 c2) |
  c8 c8 c8 c8 c8 c16 c16( |
  c2.) |
  r2 |
}

lyricOneOne = \lyricmode {
  \set stanza = "2." Pro -- šlost %|
  mo -- ju si iz -- bri -- sa -- o, __ %|
  svo -- ju %|
  pra -- ved -- nost da -- ro -- va -- %|
  o, sve nas %|
  što bi -- li smo da -- le -- ko __ %|
  krv -- lju %|
  bli -- zu si u -- či -- ni -- %|
  o. %|
  %|
  Hva -- la za %|
  krv ko -- ja o -- pra -- la __ %|
  me, __ za %|
  Du -- ha što i -- spu -- nja __ %|
  me, __ %|
  hva -- la ti, moj I -- su -- se. __ %|
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