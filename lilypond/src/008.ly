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
  title = "BUD' HVALJEN BOG"
  titlex = "Duhovne pjesme"
  composer = "D. S. Bortnianski, 1825"
  %poet = "Rhabanus Maurus (778-856)"
  style = "Rhabanus Maurus (778-856)"
  broj = "40"
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
  \key d \major
  \time 3/4
  \partial 4
  a'4 |
  \markMojCenter
  fis2 g4 |
  a2 d4 |
  e4 (d4 )cis4 |
  d2 a4 |
  h4 d4 h4 |
  a2 fis4 |
  a4 (g4 )fis4 |
  e2 a4 \bar "||" |
  fis2 g4 |
  a2 d4 |
  e4 (d4 )cis4 |
  d2 a4 |
  h4 d4 h4 |
  a2 fis4 |
  h4. (a8 )g8 (fis8 )|
  e2 a4 \bar "||" |
  \markMoj
  cis2 a4 |
  d2 a4 |
  fis'4 (e4 )d4 |
  d2 cis4 |
  d4 cis4 h4 |
  a2 fis4 |
  h4 (a4 )g4 |
  fis2. (|
  e2. )|
  \partial 2
  d2 \bar "|." |
}

harmonyOne = \chordmode  {
  d4 |
  s2 a4:7/d |
  d2 h4:m |
  e4:m/g d4/a a4 |
  d2 s4 |
  g2. |
  d2 s4 |
  a2:7/cis d4 |
  a2. |
  d2 a4:7/d |
  d2 h4:m |
  e4:m/g d4/a a4 |
  d2 s4 |
  g4 s4 s4 |
  d2 s4 |
  g2. |
  a2 s4 |
  a2 a4:7/g |
  d2/fis d4 |
  s4 e4:m/g e4:7/gis |
  d2/a a4 |
  d2. |
  s2 s4 |
  g2. |
  d2./a |
  a2.:7 |
  d2 |
  \bar "|."
}

alignerOneZero = \relative {
  c4 |
  c2 c4 |
  c2 c4 |
  c4( c4) c4 |
  c2 c4 |
  c4 c4 c4 |
  c2 c4 |
  c4 r4 c4 |
  c2 c4 |
  c2 c4 |
  c2 c4 |
  c4( c4) c4 |
  c2 c4 |
  c4 c4 c4 |
  c2 c4 |
  c4. r8 c8( c8) |
  c2 c4 |
  c2 c4 |
  c2 c4 |
  c4 r4 c4 |
  c2 c4 |
  c4 c4 c4 |
  c2 c4 |
  c4 r4 c4 |
  c2. |
  r2. |
  c2 |
}

lyricOneZero = \lyricmode {
  \set stanza = "1." Bud' %|
  hva -- ljen %|
  Bog! Nas %|
  Krist __ iz -- %|
  ba -- vi %|
  od kriv -- nje %|
  i pro -- %|
  klet -- stva %|
  zlog. On %|
  za nas %|
  u -- mrije %|
  i __ u %|
  sla -- vi %|
  us -- ta iz %|
  gro -- ba %|
  ta -- mnog __ %|
  svog. Sad %|
  mo -- že %|
  svijet za %|
  sva -- ku %|
  pa -- kost %|
  u Nje -- mu %|
  na -- ći %|
  pot -- pun %|
  o -- %|
  %|
  prost. %|
}

alignerOneOne = \relative {
  c4 |
  c2 c4 |
  c2 c4 |
  c4( c4) c4 |
  c2 c4 |
  c4 c4 c4 |
  c2 c4 |
  c4 r4 c4 |
  c2 c4 |
  c2 c4 |
  c2 c4 |
  c4( c4) c4 |
  c2 c4 |
  c4 c4 c4 |
  c2 c4 |
  c4. r8 c8( c8) |
  c2 c4 |
  c2 c4 |
  c2 c4 |
  c4( c4) c4 |
  c2 c4 |
  c4 c4 c4 |
  c2 c4 |
  c4( c4) c4 |
  c2. |
  r2. |
  c2 |
}

lyricOneOne = \lyricmode {
  \set stanza = "2." Sve %|
  što me %|
  tje -- šit %|
  i __ ra -- %|
  do -- vat %|
  još tu i %|
  ta -- mo %|
  mo -- glo %|
  bi, to %|
  I -- su -- %|
  so -- va %|
  smrt __ da -- %|
  ro -- vat %|
  i u -- skr -- %|
  snu -- će %|
  mo -- že __ %|
  mi. Da %|
  do -- bro %|
  bu -- de %|
  mi, __ On %|
  htje -- de %|
  sra -- mo -- tu %|
  pod -- nijet %|
  i __ sve %|
  bije -- %|
  %|
  de. %|
}

alignerOneTwo = \relative {
  c4 |
  c2 c4 |
  c2 c4 |
  c4( c4) c4 |
  c2 c4 |
  c4 c4 c4 |
  c2 c4 |
  c4 r4 c4 |
  c2 c4 |
  c2 c4 |
  c2 c4 |
  c4( c4) c4 |
  c2 c4 |
  c4 c4 c4 |
  c2 c4 |
  c4. r8 c8 r8 |
  c2 c4 |
  c2 c4 |
  c2 c4 |
  c4( c4) c4 |
  c2 c4 |
  c4 c4 c4 |
  c2 c4 |
  c4 r4 c4 |
  c2. |
  r2. |
  c2 |
}

lyricOneTwo = \lyricmode {
  \set stanza = "3." Uz -- %|
  dr -- ži %|
  nam svoj %|
  mir __ bo -- %|
  žan -- ski, %|
  ko -- ji naš %|
  um nad -- %|
  vi -- su -- %|
  je: sa -- %|
  ču -- vaj %|
  tim nas, %|
  prah __ ze -- %|
  malj -- ski %|
  od sveg što %|
  Te po -- %|
  ni -- zu -- %|
  je. Da %|
  si -- le %|
  sve se %|
  u __ tom %|
  slo -- že, %|
  či -- nit što %|
  Ti je %|
  mi -- lo %|
  Bo -- %|
  %|
  že %|
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