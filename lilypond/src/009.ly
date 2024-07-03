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
  title = "9"
  titlex = "WIR HATTEN GEBAUET"
  composer = "Njemačka narodna pjesma, 1823"
  %poet = "Frohe Lieder, 1898, str. 255"
  style = "Frohe Lieder, 1898, str. 255"
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
  \key f \major
  \time 4/4
  \partial 4
  c4 |
  \markMoj
  a'2 g4 a4 |
  f2 c4 c4 |
  c'4 b8 (a8 )b4 (c4 )|
  a2 r4 f4 \bar "||" |
  \markMoj
  d'4 d4 d4 d4 |
  c2 a4 c4 |
  c4 b8 (a8 )b4 c4 |
  a2 r4 f4 \bar "||" |
  d'4 d4 f4 d4 |
  c2 a4 c4 |
  c4 b8 (a8 )b4 c4 |
  \partial 2.
  a2 r4 \bar "|." |
}

harmonyOne = \chordmode  {
  s4 |
  f2 c4:7 a4:m/c |
  f2 s4 s4 |
  f4/a g2:m c4:7 |
  f1 |
  b1 |
  f2 s4 s4 |
  f2/c c2:7/e |
  f1 |
  b1 |
  f2 s4 s4 |
  f2/c c2:7/e |
  f2. |
  \bar "|."
}

alignerOneZero = \relative {
  c4 |
  c2 c4 c4 |
  c2 c4 c4 |
  c4 c8 r8 c4( c4) |
  c2 r4 c4 |
  c4 c4 c4 c4 |
  c2 c4 c4 |
  c4 c8 r8 c4 c4 |
  c2 r4 c4 |
  c4 c4 c4 c4 |
  c2 c4 c4 |
  c4 c8 r8 c4 c4 |
  c2 r4 |
}

lyricOneZero = \lyricmode {
  \set stanza = "1." Ah, %|
  te -- be ću %|
  sla -- vit iz %|
  dna sr -- ca __ %|
  mog i %|
  vje -- čno ću Te %|
  hva -- lit rad' %|
  ot -- ku -- plje -- nja %|
  Tvog, i %|
  vje -- čno ću Te %|
  hva -- lit rad' %|
  ot -- ku -- plje -- nja %|
  Tvog. %|
}

alignerOneOne = \relative {
  c4 |
  c2 c4 c4 |
  c2 c4 c4 |
  c4 c8 r8 c4( c4) |
  c2 r4 c4 |
  c4 c4 c4 c4 |
  c2 c4 c4 |
  c4 c8 r8 c4 c4 |
  c2 r4 c4 |
  c4 c4 c4 c4 |
  c2 c4 c4 |
  c4 c8 r8 c4 c4 |
  c2 r4 |
}

lyricOneOne = \lyricmode {
  \set stanza = "2." Jer %|
  moć -- nom si %|
  ru -- kom iz -- %|
  ba -- vi -- o __ %|
  nas i %|
  teš -- kom svo -- jom %|
  mu -- kom nam %|
  do -- ni -- o svim %|
  spas, i %|
  teš -- kom svo -- jom %|
  mu -- kom nam %|
  do -- ni -- o svim %|
  spas. %|
}

alignerOneTwo = \relative {
  c4 |
  c2 c4 c4 |
  c2 c4 c4 |
  c4 c8( c8) c4( c4) |
  c2 r4 c4 |
  c4 c4 c4 c4 |
  c2 c4 c4 |
  c4 c8 r8 c4 c4 |
  c2 r4 c4 |
  c4 c4 c4 c4 |
  c2 c4 c4 |
  c4 c8 r8 c4 c4 |
  c2 r4 |
}

lyricOneTwo = \lyricmode {
  \set stanza = "3." Oh, %|
  kad bi svi %|
  zna -- li kak' %|
  do -- bar __ si __ %|
  Ti, u -- %|
  vijek bi Te -- be %|
  zva -- li i %|
  Teb' slu -- ša -- li %|
  bi. U -- %|
  vijek bi Te -- be %|
  zva -- li i %|
  Teb' slu -- ša -- li %|
  bi. %|
}

alignerOneThree = \relative {
  c4 |
  c2 c4 c4 |
  c2 c4 c4 |
  c4 c8 r8 c4( c4) |
  c2 r4 c4 |
  c4 c4 c4 c4 |
  c2 c4 c4 |
  c4 c8( c8) c4 c4 |
  c2 r4 c4 |
  c4 c4 c4 c4 |
  c2 c4 c4 |
  c4 c8( c8) c4 c4 |
  c2 r4 |
}

lyricOneThree = \lyricmode {
  \set stanza = "4." Daj %|
  gla -- sni -- ke %|
  ša -- lji po %|
  svem svije -- tu __ %|
  tom i %|
  mr -- tve daj pro -- %|
  bu -- di sve -- %|
  mo -- ćnom __ riječ -- ju %|
  Tvom, i %|
  mr -- tve daj pro -- %|
  bu -- di sve -- %|
  mo -- ćnom __ riječ -- ju %|
  Tvom. %|
}

alignerOneFour = \relative {
  c4 |
  c2 c4 c4 |
  c2 c4 c4 |
  c4 c8( c8) c4( c4) |
  c2 r4 c4 |
  c4 c4 c4 c4 |
  c2 c4 c4 |
  c4 c8( c8) c4 c4 |
  c2 r4 c4 |
  c4 c4 c4 c4 |
  c2 c4 c4 |
  c4 c8( c8) c4 c4 |
  c2 r4 |
}

lyricOneFour = \lyricmode {
  \set stanza = "5." Daj %|
  da od -- sad %|
  bu -- de na %|
  ze -- mlji __ vijek __ %|
  mir, te %|
  sa -- mo je -- dno %|
  sta -- do o -- %|
  va -- ca __ i pa -- %|
  stir, te %|
  sa -- mo je -- dno %|
  sta -- do o -- %|
  va -- ca __ i pa -- %|
  stir. %|
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
        \new NullVoice = "alignerOneFour" { \alignerOneFour }
        \new Lyrics \lyricsto "alignerOneFour" { \lyricOneFour }
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