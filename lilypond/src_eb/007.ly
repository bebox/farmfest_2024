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
  title = "ZA MOLITVE"
  composer = "W. B. Bradbury, 1861"
  titlex = "Duhovne pjesme (Eb)"
  %poet = "W. W. Walford, 1845"
  style = "W. W. Walford, 1845"
  broj = "40"
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
  \key d \major
  \time 6/8
  \partial 8
  d8 |
  \markMojCenter
  fis4 g8 a4 a8 |
  h4 cis8 d4 h8 |
  a4 fis8 fis8 (e8 )d8 |
  e4 fis8 e4 d8 |
  fis4 g8 a4 a8 |
  h4 cis8 d4 h8 |
  a4 fis8 fis8 (e8 )d8 |
  fis4 e8 d4 a'8 \bar "||" |
  \markMojCenter
  d4 cis8 d4 h8 |
  a4 fis8 a4 a8 |
  d4 cis8 d4 h8 |
  a4 fis8 e4 d8 |
  fis4 g8 a4 a8 |
  h4 cis8 d4 h8 |
  a4 fis8 fis8 (e8 )d8 |
  \partial 8*5
  fis4 e8 d4 \bar "|." |
}

harmonyOne = \chordmode  {
  s8 |
  d4 a8:sus4.7/d d4 s8 |
  g4 a8/g g4 s8 |
  d4 s8 s8 a8:7/d d8 |
  a4 d8/a a4. |
  d4 a8:sus4.7/d d4 s8 |
  g4 a8/g g4 s8 |
  d4 s8 s8 a8:7/d d8 |
  d4/a a8:7 d4. |
  s4 a8:7/e d4/fis g8 |
  d4 s8 s4 s8 |
  s4 a8:7/e d4/fis g8 |
  d4 s8 a4. |
  d4 a8:sus4.7/d d4 s8 |
  g4 a8/g g4 s8 |
  d4 s8 s8 a8:7/d d8 |
  d4/a a8:7 d4 |
  \bar "|."
}

alignerOneZero = \relative {
  c8 |
  c4 c8 c4 c8 |
  c4 c8 c4 c8 |
  c4 c8 c8( c8) c8 |
  c4 c8 c4 c8 |
  c4 c8 c4 c8 |
  c4 c8 c4 c8 |
  c4 c8 c8 r8 c8 |
  c4 c8 c4 c8 |
  c4 c8 c4 c8 |
  c4 c8 c4 c8 |
  c4 c8 c4 c8 |
  c4 c8 c4 c8 |
  c4 c8 c4 c8 |
  c4 c8 c4 c8 |
  c4 c8 c8 r8 c8 |
  c4 c8 c4 |
}

lyricOneZero = \lyricmode {
  \set stanza = "1." Za %|
  mo -- li -- tve kad %|
  ne -- ba dah o -- %|
  kru -- žu -- je __ me, %|
  u taj mah ja %|
  "k sr" -- cu hi -- tam %|
  O -- ca svog i %|
  jad mu tu -- žim %|
  sr -- ca mog. Tad %|
  ma -- kar tmi -- na %|
  skri -- va me i %|
  duš -- man uz me %|
  ru -- ši sve, o -- %|
  sje -- ćam ka -- ko %|
  mir mi blag u %|
  sr -- ce spu -- šta %|
  I -- sus drag. %|
}

alignerOneOne = \relative {
  c8 |
  c4 c8 c4 c8 |
  c4 c8 c4 c8 |
  c4 c8 c8( c8) c8 |
  c4 c8 c4 c8 |
  c4 c8 c4 c8 |
  c4 c8 c4 c8 |
  c4 c8 c8 r8 c8 |
  c4 c8 c4 c8 |
  c4 c8 c4 c8 |
  c4 c8 c4 c8 |
  c4 c8 c4 c8 |
  c4 c8 c4 c8 |
  c4 c8 c4 c8 |
  c4 c8 c4 c8 |
  c4 c8 c8( c8) c8 |
  c4 c8 c4 |
}

lyricOneOne = \lyricmode {
  \set stanza = "2." Pre -- %|
  kra -- sno je u %|
  ča -- su tom kad %|
  Spa -- sa lik __ je %|
  pre -- da -- mnom. On %|
  lju -- bav mi o -- %|
  be -- ća -- je i %|
  mi -- lost svo -- ju %|
  po -- da -- je, a %|
  sr -- cu mo -- me %|
  zbo -- ri tad: "\"Daj" %|
  vje -- ruj mo -- jim %|
  riječ' -- ma "rad\"." Stog %|
  u Nje -- ga se %|
  u -- zda -- jem i %|
  Nje -- mu sav __ se %|
  pre -- da -- jem. %|
}

alignerOneTwo = \relative {
  c8 |
  c4 c8 c4 c8 |
  c4 c8 c4 c8 |
  c4 c8 c8 r8 c8 |
  c4 c8 c4 c8 |
  c4 c8 c4 c8 |
  c4 c8 c4 c8 |
  c4 c8 c8( c8) c8 |
  c4 c8 c4 c8 |
  c4 c8 c4 c8 |
  c4 c8 c4 c8 |
  c4 c8 c4 c8 |
  c4 c8 c4 c8 |
  c4 c8 c4 c8 |
  c4 c8 c4 c8 |
  c4 c8 c8 r8 c8 |
  c4 c8 c4 |
}

lyricOneTwo = \lyricmode {
  \set stanza = "3." Ah, %|
  di -- vno je za %|
  mo -- li -- tve, kad %|
  sr -- ce vje -- rom %|
  di -- gne se i %|
  bi -- strim o -- kom %|
  gle -- da tam, gdje %|
  "s bla" -- že -- nim __ je %|
  I -- sus sam. Tad %|
  stres -- lo o -- no %|
  bih od -- mah sa %|
  se -- be ta ze -- %|
  malj -- ski prah, pre -- %|
  se -- lit se u %|
  vje -- čni dom i %|
  pje -- vat hva -- lu %|
  Spa -- su svom. %|
}

\score {
    <<
    \new ChordNames { \jazzChords \transpose es c' \harmonyOne }
    \new Staff {
        <<
        \new Voice { \transpose es c' \staffOne }
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