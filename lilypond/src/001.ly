\version "2.25.16"
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
  title = "1"
  titlex = "GROSSER GOTT, Katholisches Gesangbuch, Vienna, c. 1774"
  %poet = "Ignaz Franz, c. 1774"
  style = "Ignaz Franz, c. 1774"
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
  \key g \major
  \time 3/4
  \markMoj
  g'2 g4 |
  g4 (fis4 )g4 |
  a4 (h4 )a4 |
  g2. |
  h2 h4 |
  h4 (a4 )h4 |
  d4 (c4 )h4 |
  h2 a4 |
  g2 g4 |
  g4 (fis4 )g4 |
  a4 (h4 )a4 |
  g2. |
  h2 h4 |
  h4 (a4 )h4 |
  d4 (c4 )h4 |
  h2 a4 \bar "||" |
  \markMoj
  a2 h4 |
  c4 (h4 )a4 |
  h2 c4 |
  d2. |
  e2 e4 |
  d4 (c4 )h4 |
  c4 (h4 )a4 |
  g2. |
}

harmonyOne = \chordmode  {
  g2 s4 |
  e2:m g4/h |
  c4 g4/d d4:7 |
  g2. |
  g2. |
  s4 d4/g g4 |
  d2/fis g4 |
  g2/d d4 |
  g2 s4 |
  e2:m g4/h |
  c4 g4/d d4:7 |
  g2. |
  g2. |
  s4 d4/g g4 |
  d2/fis g4 |
  g2/d d4 |
  d2 g4/d |
  d2:7 d4:7/c |
  g2/h c4/e |
  g2./h |
  c4 s4 a4:m |
  d4/fis c4:dim7/dis e4:m |
  a4:m/c g4/d d4:7 |
  g2. |
  \bar "|."
}

alignerOneZero = \relative {
  c2 c4 |
  c4 r4 c4 |
  c4 r4 c4 |
  c2. |
  c2 c4 |
  c4 r4 c4 |
  c4 r4 c4 |
  c2 c4 |
  c2 c4 |
  c4( c4) c4 |
  c4 r4 c4 |
  c2. |
  c2 c4 |
  c4( c4) c4 |
  c4 r4 c4 |
  c2 c4 |
  c2 c4 |
  c4 r4 c4 |
  c2 c4 |
  c2. |
  c2 c4 |
  c4( c4) c4 |
  c4 r4 c4 |
  c2. |
}

lyricOneZero = \lyricmode {
  \set stanza = "1." Te -- be %|
  Bo -- ga %|
  hva -- li -- %|
  mo, %|
  sla -- već %|
  Tvo -- ja %|
  sve -- ta %|
  dje -- la. %|
  Tvo -- ju %|
  moć __ ve -- %|
  li -- ča -- %|
  mo, %|
  di -- vi %|
  Ti __ se %|
  ze -- mlja %|
  cije -- la! %|
  Što s'od %|
  vije -- ka %|
  bi -- o %|
  Ti, %|
  o -- stat %|
  ćeš __ u %|
  viječ -- nos -- %|
  ti. %|
}

alignerOneOne = \relative {
  c2 c4 |
  c4 r4 c4 |
  c4 r4 c4 |
  c2. |
  c2 c4 |
  c4 r4 c4 |
  c4 r4 c4 |
  c2 c4 |
  c2 c4 |
  c4( c4) c4 |
  c4 r4 c4 |
  c2. |
  c2 c4 |
  c4 r4 c4 |
  c4( c4) c4 |
  c2 c4 |
  c2 c4 |
  c4( c4) c4 |
  c2 c4 |
  c2. |
  c2 c4 |
  c4 r4 c4 |
  c4 r4 c4 |
  c2. |
}

lyricOneOne = \lyricmode {
  \set stanza = "2." Sve što %|
  mo -- že %|
  sla -- vi %|
  Te, %|
  ke -- ru -- %|
  bi -- ni, %|
  se -- ra -- %|
  fi -- ni. %|
  Pje -- va -- %|
  ju __ Ti %|
  sla -- vo -- %|
  poj, %|
  "s an" -- đe -- %|
  li -- ma %|
  na __ vi -- %|
  si -- ni: %|
  Svet, svet, %|
  svet __ je %|
  Go -- spod %|
  Bog, %|
  kralj pre -- %|
  slav -- ni %|
  pu -- ka %|
  svog. %|
}

alignerOneTwo = \relative {
  c2 c4 |
  c4( c4) c4 |
  c4 r4 c4 |
  c2. |
  c2 c4 |
  c4( c4 c4) |
  c4 r4 c4 |
  c2 c4 |
  c2 c4 |
  c4 r4 c4 |
  c4 r4 c4 |
  c2. |
  c2 c4 |
  c4 r4 c4 |
  c4( c4) c4 |
  c2 c4 |
  c2 c4 |
  c4( c4) c4 |
  c2 c4 |
  c2. |
  c2 c4 |
  c4 r4 c4 |
  c4 r4 c4 |
  c2. |
}

lyricOneTwo = \lyricmode {
  \set stanza = "3." Po -- gle -- %|
  daj __ na %|
  na -- rod %|
  svoj! %|
  Mi -- lo -- %|
  stiv __ %|
  svag -- da %|
  bu -- di! %|
  Pra -- vim %|
  pu -- tem %|
  vo -- di %|
  ga, %|
  da mu %|
  duš -- man %|
  ne __ na -- %|
  u -- di. %|
  Skru -- šen %|
  glas __ mu %|
  sa -- slu -- %|
  šaj, %|
  i u %|
  vječ -- ni %|
  pri -- mi %|
  raj. %|
}

alignerOneThree = \relative {
  c2 c4 |
  c4( c4) c4 |
  c4 r4 c4 |
  c2. |
  c2 c4 |
  c4( c4) c4 |
  c4( c4) c4 |
  c2 c4 |
  c2 c4 |
  c4( c4) c4 |
  c4 r4 c4 |
  c2. |
  c2 c4 |
  c4 r4 c4 |
  c4 r4 c4 |
  c2 c4 |
  c2 c4 |
  c4 r4 c4 |
  c2 c4 |
  c2. |
  c2 c4 |
  c4 r4 c4 |
  c4 r4 c4 |
  c2. |
}

lyricOneThree = \lyricmode {
  \set stanza = "4." Smi -- luj %|
  nam __ se %|
  Go -- spo -- %|
  de! %|
  Bla -- go -- %|
  slov __ nam %|
  svoj __ po -- %|
  dije -- li! %|
  Do -- bro -- %|
  tom __ nas %|
  pra -- ti %|
  svud %|
  kroz taj %|
  grješ -- ni %|
  ži -- vot %|
  cije -- li. %|
  Bu -- di %|
  "s na" -- ma %|
  sva -- ki %|
  čas, %|
  svih stvo -- %|
  re -- nja %|
  je -- din %|
  spas. %|
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