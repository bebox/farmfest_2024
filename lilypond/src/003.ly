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
  title = "VELIČAJ GOSPODA"
  titlex = "Duhovne pjesme"
  %poet = "J. D. Herrnschmidt, 1714"
  style = "J. D. Herrnschmidt, 1714"
  composer = "J. A. Freylinghausen, 1704"
  broj = "35"
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
  \key b \major
  \time 3/4
  \markMoj
  b'4 f4 b4 |
  b4 a4 b4 |
  c4 (d4 )es4 |
  d2 c4 |
  c4 c4 d4 |
  es4 (d4 )c4 |
  d2 c4 |
  b2 r4 \bar "||" |
  b4 f4 b4 |
  b4 a4 b4 |
  c4 (d4 )es4 |
  d2 c4 |
  c4 c4 d4 |
  es4 (d4 )c4 |
  d2 c4 |
  b2 r4 \bar "||" |
  \markMoj
  c4 d4 c4 |
  a4 (b4 )c4 |
  b4 (a4 )g4 |
  f2. |
  f4 f4 f4 |
  b2 b4 |
  c4 (d4 )es4 |
  d2 d4 |
  d4 (c4 )b4 |
  c2 es4 |
  d2 c4 |
  b2 r4 \bar "|." |
}

harmonyOne = \chordmode  {
  b4 f4/a g4:m |
  b4/d f4:7 g4:m |
  f4 b4/d f4:7/a |
  b2 f4 |
  s2 b4 |
  es4/g b4/f c4:m7/es |
  b2/f f4:7 |
  b2. |
  b4 f4/a g4:m |
  b4/d f4:7 g4:m |
  f4 b4/d f4:7/a |
  b2 f4 |
  s2 b4 |
  es4/g b4/f c4:m7/es |
  b2/f f4:7 |
  b2. |
  f4 b4 c4 |
  d2:m f4/a |
  b4 f4/c c4:7 |
  f2. |
  b4 s4 f4/a |
  g4:m b4/d es4 |
  c4:dim b4 f4:7/a |
  b2 s4 |
  s4 f4 g4:dim7 |
  f2 f4:7/c |
  b2/d f4:7 |
  b2. |
  \bar "|."
}

alignerOneZero = \relative {
  c4 c4 c4 |
  c4 c4 c4 |
  c4 r4 c4 |
  c2 c4 |
  c4 c4 c4 |
  c4 r4 c4 |
  c2 c4 |
  c2 r4 |
  c4 c4 c4 |
  c4 c4 c4 |
  c4( c4) c4 |
  c2 c4 |
  c4 c4 c4 |
  c4 r4 c4 |
  c2 c4 |
  c2 r4 |
  c4 c4 c4 |
  c4 r4 c4 |
  c4 r4 c4 |
  c2. |
  c4 c4 c4 |
  c2 c4 |
  c4 r4 c4 |
  c2 c4 |
  c4 r4 c4 |
  c2 c4 |
  c2 c4 |
  c2 r4 |
}

lyricOneZero = \lyricmode {
  \set stanza = "1." Ve -- li -- čaj %|
  Go -- spo -- da %|
  du -- šo %|
  mo -- ja! %|
  Vje -- čno ću %|
  sla -- vit' %|
  O -- ca %|
  svog. %|
  Do -- kle god %|
  ži -- vim u -- %|
  sta __ će %|
  mo -- ja %|
  pje -- smom vijek %|
  hva -- lit' %|
  Bo -- ga %|
  mog. %|
  O -- nom koj' %|
  ži -- vot %|
  da -- de %|
  nam, %|
  nek bu -- de %|
  sla -- va %|
  sva -- ki %|
  dan. Ha -- %|
  le -- lu -- %|
  ja, ha -- %|
  le -- lu -- %|
  ja! %|
}

alignerOneOne = \relative {
  c4 c4 c4 |
  c4 c4 c4 |
  c4( c4) c4 |
  c2 c4 |
  c4 c4 c4 |
  c4 r4 c4 |
  c2 c4 |
  c2 r4 |
  c4 c4 c4 |
  c4 c4 c4 |
  c4( c4) c4 |
  c2 c4 |
  c4 c4 c4 |
  c4 r4 c4 |
  c2 c4 |
  c2 r4 |
  c4 c4 c4 |
  c4( c4) c4 |
  c4 r4 c4 |
  c2. |
  c4 c4 c4 |
  c2 c4 |
  c4( c4) c4 |
  c2 c4 |
  c4 r4 c4 |
  c2 c4 |
  c2 c4 |
  c2 r4 |
}

lyricOneOne = \lyricmode {
  \set stanza = "2." Sre -- tan i %|
  bla -- žen taj %|
  se __ na -- %|
  zi -- va, %|
  kog Ja -- kov -- %|
  ljev po -- %|
  ma -- že %|
  Bog. %|
  "S vje" -- rom u %|
  Bo -- ga, ko -- %|
  ju __ u -- %|
  ži -- va, %|
  čvr -- sto se %|
  dr -- ži %|
  Kri -- sta %|
  svog. %|
  Po -- moć -- nik %|
  kom' __ je %|
  Go -- spod, %|
  taj %|
  si -- gur -- no %|
  nać' će %|
  put __ u %|
  raj. Ha -- %|
  le -- lu -- %|
  ja, ha -- %|
  le -- lu -- %|
  ja! %|
}

alignerOneTwo = \relative {
  c4 c4 c4 |
  c4 c4 c4 |
  c4( c4) c4 |
  c2 c4 |
  c4 c4 c4 |
  c4 r4 c4 |
  c2 c4 |
  c2 r4 |
  c4 c4 c4 |
  c4 c4 c4 |
  c4( c4) c4 |
  c2 c4 |
  c4 c4 c4 |
  c4 r4 c4 |
  c2 c4 |
  c2 r4 |
  c4 c4 c4 |
  c4 r4 c4 |
  c4 r4 c4 |
  c2. |
  c4 c4 c4 |
  c2 c4 |
  c4( c4) c4 |
  c2 c4 |
  c4 r4 c4 |
  c2 c4 |
  c2 c4 |
  c2 r4 |
}

lyricOneTwo = \lyricmode {
  \set stanza = "3." Ov -- ce što %|
  "s pra" -- vog za -- %|
  šle __ su %|
  pu -- ta, %|
  vra -- ća On %|
  ja -- kom %|
  ru -- kom %|
  svom. %|
  Od njih ni %|
  je -- dna da %|
  ne __ za -- %|
  lu -- ta, %|
  već se po -- %|
  vra -- ti %|
  O -- cu %|
  svom. %|
  Pa -- stir On %|
  do -- bar %|
  jes -- te %|
  nam, %|
  ko -- ji se %|
  bri -- ne %|
  za __ nas %|
  sam. Ha -- %|
  le -- lu -- %|
  ja, ha -- %|
  le -- lu -- %|
  ja! %|
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