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
  title = "HVAL'TE BOGA"
  composer = "Karl Friedrich Schulz, 1810"
  titlex = "Duhovne pjesme"
  %poet = "C. F. W. Herrosee"
  style = "C. F. W. Herrosee"
  broj = "42"
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
  \key b \major
  \time 4/4
  \markMoj
  b2 d4 b4 |
  f'2. f4 |
  b2 c4 c4 |
  d2. d4 \bar "||" |
  \markMojCenter
  es2 d2 |
  d2 c4 c4 |
  d4 c4 b4 a4 |
  g2 c2 |
  c4 (b4 )b4 (a4 )|
  b4 d4 d4 d4 \bar "||" |
  \markMoj
  es2 c2 |
  d4 b4 b4 b4 |
  c2 a2 |
  b1 \bar "|." |
}

harmonyOne = \chordmode  {
  b1 |
  f1 |
  b2/d f4 s4 |
  b2. s4 |
  es2/g b2 |
  b2/f f4 s4 |
  b4 f4 g4:m d4:m |
  es2 c2:m/es |
  f1:7 |
  b2 g4:m b4:7/f |
  es2 f2 |
  b4 g4:m es4 b4/d |
  c2:m f2 |
  b1 |
  \bar "|."
}

alignerOneZero = \relative {
  c2 c4 c4 |
  c2. c4 |
  c2 c4 c4 |
  c2. c4 |
  c2 c2 |
  c2 c4 c4 |
  c4 c4 c4 c4 |
  c2 c2 |
  c4 r4 c4 r4 |
  c4 c4 c4 c4 |
  c2 c2 |
  c4 c4 c4 c4 |
  c2 c2 |
  c1 |
}

lyricOneZero = \lyricmode {
  \set stanza = "1." Hval' te Bo -- %|
  ga! Hva -- %|
  li -- mo Bo -- %|
  ga, jer %|
  je On %|
  do -- bar, mi -- %|
  lost Nje -- go -- va %|
  tra -- je %|
  do -- vije -- %|
  ka! Da, tra -- je %|
  do vije -- %|
  ka da, tra -- je %|
  do vije -- %|
  ka. %|
}

alignerOneOne = \relative {
  c2 c4 c4 |
  c2. c4 |
  c2 c4 c4 |
  c2. c4 |
  c2 c2 |
  c2 c4 c4 |
  c4 c4 c4 c4 |
  c2 c2 |
  c4 r4 c4 r4 |
  c4 c4 c4 c4 |
  c2 c2 |
  c4 c4 c4 c4 |
  c2 c2 |
  c1 |
}

lyricOneOne = \lyricmode {
  \set stanza = "2." Slav' te Bo -- %|
  ga! Sla -- %|
  vi Go -- spo -- %|
  da, ti %|
  du -- šo %|
  mo -- ja sje -- %|
  ti se što ti %|
  do -- bra %|
  u -- či -- %|
  ni! Do -- bra ti %|
  u -- či -- %|
  ni do -- bra ti %|
  u -- či -- %|
  ni. %|
}

alignerOneTwo = \relative {
  c2 c4 c4 |
  c2. c4 |
  c2 c4 c4 |
  c2. c4 |
  c2 c2 |
  c2 c4 c4 |
  c4 c4 c4 c4 |
  c2 c2 |
  c4 r4 c4 r4 |
  c4 c4 c4 c4 |
  c2 c2 |
  c4 c4 c4 c4 |
  c2 c2 |
  c1 |
}

lyricOneTwo = \lyricmode {
  \set stanza = "3." Ve -- lik je %|
  Bog! Da %|
  ve -- lik je %|
  On! I -- %|
  me mu %|
  sve -- to i %|
  ši -- rok svijet pun %|
  je Njeg' -- %|
  ve sla -- %|
  ve! Pun je Njeg' -- %|
  ve sla -- %|
  ve, pun je Njeg' -- %|
  ve sla -- %|
  ve. %|
}

alignerOneThree = \relative {
  c2 c4 c4 |
  c2. c4 |
  c2 c4 c4 |
  c2. c4 |
  c2 c2 |
  c2 c4 c4 |
  c4 c4 c4 c4 |
  c2 c2 |
  c4 r4 c4 r4 |
  c4 c4 c4 c4 |
  c2 c2 |
  c4 c4 c4 c4 |
  c2 c2 |
  c1 |
}

lyricOneThree = \lyricmode {
  \set stanza = "4." Pje -- vaj -- te %|
  mu! Hval' %|
  te ga pje -- %|
  smom, i -- %|
  skre -- nom, %|
  čed -- nom, jer %|
  sva -- ku na -- šu %|
  pjes -- mu %|
  On ču -- %|
  je. Na -- šu pje -- %|
  smu ču -- %|
  je. Na -- šu pje -- %|
  smu ču -- %|
  je. %|
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