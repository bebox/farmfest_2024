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
  title = "5"
  %poet = "Joseph Medlicott Scriven, 1855"
  style = "Joseph Medlicott Scriven, 1855"
  composer = "Charles C. Converse, 1868"
  titlex = "CONVERSE"
  broj = "13"
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
  \markMoj
  c'4. c8 d8 c8 a8 f8 |
  f2 d4 r4 |
  c4. f8 a8 f8 c'8 a8 |
  g2. r4 |
  c4. c8 d8 c8 a8 f8 |
  f2 d4 r4 |
  c4. f8 a8 g8 f8 e8 |
  f2. r4 \bar "||" |
  \markMoj
  g4. fis8 g8 a8 b8 g8 |
  a2 c4 r4 |
  d4. d8 c8 a8 b8 a8 |
  g2. r4 |
  c4. c8 d8 c8 a8 f8 |
  f2 d4 r4 |
  c4. f8 a8 g8 f8 e8 |
  f2. r4 \bar "|." |
}

harmonyOne = \chordmode  {
  f4. s8 b4/f f8 s8 |
  b2 s2 |
  f4. s8 s8 s8 s8 s8 |
  c1 |
  f4. s8 b4/f f8 s8 |
  b2 s2 |
  f4./c s8 c2:7 |
  f1 |
  c1 |
  f2 s2 |
  b4. s8 f2 |
  c1 |
  f4. s8 b4/f f8 s8 |
  b2 s2 |
  f4./c s8 c2:7 |
  f1 |
  \bar "|."
}

alignerOneZero = \relative {
  c4. c8 c8 c8 c8 c8 |
  c2 c4 r4 |
  c4. c8 c8 c8 c8 c8 |
  c2. r4 |
  c4. c8 c8 c8 c8 c8 |
  c2 c4 r4 |
  c4. c8 c8 c8 c8 c8 |
  c2. r4 |
  c4. c8 c8 c8 c8 c8 |
  c2 c4 r4 |
  c4. c8 c8 c8 c8 c8 |
  c2. r4 |
  c4. c8 c8 c8 c8 c8 |
  c2 c4 r4 |
  c4. c8 c8 c8 c8 c8 |
  c2. r4 |
}

lyricOneZero = \lyricmode {
  \set stanza = "1." Ka -- ko do -- bar nam je %|
  I -- sus, %|
  uz -- vi -- šen vrh ne -- ba %|
  sad. %|
  "S O" -- cem On nas sve iz -- %|
  mi -- ri, %|
  te se za nas mo -- li %|
  rad. %|
  Tko bi mo -- go pro -- cije -- %|
  ni -- ti %|
  ko -- li -- ko mi gu -- bi -- %|
  mo, %|
  Nje -- ga kad ne pri -- zi -- %|
  va -- mo, %|
  sr -- cem ga ne lju -- bi -- %|
  mo. %|
}

alignerOneOne = \relative {
  c4. c8 c8 c8 c8 c8 |
  c2 c4 r4 |
  c4. c8 c8 c8 c8 c8 |
  c2. r4 |
  c4. c8 c8 c8 c8 c8 |
  c2 c4 r4 |
  c4. c8 c8 c8 c8 c8 |
  c2. r4 |
  c4. c8 c8 c8 c8 c8 |
  c2 c4 r4 |
  c4. c8 c8 c8 c8 c8 |
  c2. r4 |
  c4. c8 c8 c8 c8 c8 |
  c2 c4 r4 |
  c4. c8 c8 c8 c8 c8 |
  c2. r4 |
}

lyricOneOne = \lyricmode {
  \set stanza = "2." Kad duš -- ma -- na moć nam %|
  prije -- ti, %|
  sil -- ne bu -- re o -- ko %|
  nas. %|
  Ne -- moj -- mo se bo -- jat %|
  niš -- ta, %|
  mo -- li -- tve di -- ži -- mo %|
  glas. %|
  Ta -- da će se vi -- djet %|
  ka -- ko %|
  I -- sus uz nas sto -- ji %|
  sam. %|
  Si -- gur -- no će nas iz -- %|
  ba -- vit %|
  i u -- sli -- šat mol -- be %|
  nam. %|
}

alignerOneTwo = \relative {
  c4. c8 c8 c8 c8 c8 |
  c2 c4 r4 |
  c4. c8 c8 c8 c8 c8 |
  c2. r4 |
  c4. c8 c8 c8 c8 c8 |
  c2 c4 r4 |
  c4. c8 c8 c8 c8 c8 |
  c2. r4 |
  c4. c8 c8 c8 c8 c8 |
  c2 c4 r4 |
  c4. c8 c8 c8 c8 c8 |
  c2. r4 |
  c4. c8 c8 c8 c8 c8 |
  c2 c4 r4 |
  c4. c8 c8 c8 c8 c8 |
  c2. r4 |
}

lyricOneTwo = \lyricmode {
  \set stanza = "3." Mu -- če li nas bri -- ge %|
  lju -- te, %|
  ka -- sno ra -- no sva -- ki %|
  čas. %|
  I -- sus stal -- no će po -- %|
  mo -- ći, %|
  ta o -- sta -- vit ne -- će %|
  nas. %|
  Na -- pu -- stel' nas pri -- ja -- %|
  te -- lji, %|
  u mo -- li -- tvi nam je %|
  lijek. %|
  Kralj sve -- će -- nik a i %|
  pro -- rok, %|
  bi -- ti će nam I -- sus %|
  vijek. %|
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