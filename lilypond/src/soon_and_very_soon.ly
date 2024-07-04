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
  title = "SOON AND VERY SOON"
  composer = "Andraé Crouch, 1976"
  style = ""
  broj = "18"
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
  \key ges \major
  \time 4/4
  %\tempo 4 = 72
  \markMoj
  b'8 b8 b8 as16 ges16 ~ges4 ces8 ces8 |
  b8 b16 b16 b8 as16 ges16 ~ges4 r4 |
  as8 as8 as8 ges16 f16 ~f4 ces'8 ces8 |
  b8 b16 b16 b8 as16 ges16 ~ges4 r4 |
  b8 b8 b8 as16 ges16 ~ges4 ces8 ces8 |
  b8 b16 b16 b8 as16 ges16 ~ges4 r8 b16 ces16 \bar "||" |
  \markMoj
  des8. ces16 r8 ces16 ces16 b8. as16 r8 ces16 ces16 |
  b8 b16 b16 b8 as16 ges16 r8 des'8 (b8 )ges8 \bar "||" |
  ges4 as4 ges8 des'8 (b8 ges8 |
  ges4 as4 )ges4 r4 |
  \bar ".|:" \markMoj
  es'4 es8. es16 r4 des16 ces8. |
  des16 des8. des16 des8 des16 r4 ces16 b8. |
  as4 as16 b8. ces8 ces8 b16 as8. |
  es'4 (~es16 des16 es8 des4 )r4 |
  es4 es8 es16 es16 r4 des8 ces8 |
  des4 des8 des16 des16 r4 ces8 b8 |
  as4 as8 b16 ces16 r8 ces8 b16 as8. |
  \set Score.repeatCommands = #'((volta "1.")) b4 (ces4 des4 )r4 \bar ":|." |
  \set Score.repeatCommands = #'((volta #f)) ges,2 r2 |
}

harmonyOne = \chordmode  {
  ges2. ces4/ges |
  ges2. as4:7 |
  des2. ces4/des |
  ges2. ces4/ges |
  ges2. ces4/ges |
  ges1 |
  ges4:7/b ces4 as4:m7.5- d4:dim7 |
  ges4/des ces4/des ges2 |
  as4:7 des4:7 ges2 |
  as4:7 des4:7 ges2 |
  ces2 des2:7 |
  ges4 ges4/b ces2 |
  as2:m7 des2:7 |
  des2:m7/ges ges2 |
  ces2 des2:7 |
  ges4 ges4/b ces2 |
  as2:m7 des2:7 |
  ges4 ces4/ges ges2:7 |
  ges2. ces4/ges |
  \bar "|."
}

alignerOneZero = \relative {
  c8 c8 c8 c16 c16( c4) c8 c8 |
  c8 c16 c16 c8 c16 c16( c4) r4 |
  c8 c8 c8 c16 c16( c4) c8 c8 |
  c8 c16 c16 c8 c16 c16( c4) r4 |
  c8 c8 c8 c16 c16( c4) c8 c8 |
  c8 c16 c16 c8 c16 c16( c4) r8 c16 c16 |
  c8. c16 r8 c16 c16 c8. c16 r8 c16 c16 |
  c8 c16 c16 c8 c16 c16 r8 c8 r8 c8 |
  c4 r4 c8 c8 r8 r8 |
  r4 r4 c4 r4 |
  c4 c8. c16 r4 c16 c8. |
  c16 c8. c16 c8 c16 r4 c16 c8. |
  c4 c16 c8. c8 c8 c16 c8. |
  c4( c16 c16 c8 c4) r4 |
  c4 c8 c16 c16 r4 c8 c8 |
  c4 c8 c16 c16 r4 c8 c8 |
  c4 c8 c16 c16 r8 c8 c16 c8. |
  c4( c4 c4) r4 |
  r2 r2 |
}

lyricOneZero = \lyricmode {
  \set stanza = "1." Soon and ve -- ry soon __ we are %|
  go -- in' to see the King, __ %|
  soon and ve -- ry soon __ we are %|
  go -- in' to see the King, __ %|
  soon and ve -- ry soon __ we are %|
  go -- in' to see the King, __ Ha -- lle -- %|
  lu -- jah, Ha -- lle -- lu -- jah, we are %|
  go -- in' to see the King! Ha -- lle -- %|
  lu -- jah, u -- %|
  jah. %|
  Should there be a -- ny %|
  ri -- vers we must cross, should there %|
  be a -- ny moun -- tains we must %|
  climb, __ %|
  God will su -- pply all the %|
  strength that we need, give us %|
  grace till we reach the o -- ther %|
  side. __ %|
  %|
}

alignerOneOne = \relative {
  c8 c8 c8 c16 c16( c4) c8 c8 |
  c8 c16 c16 c8 c16 c16( c4) r4 |
  c8 c8 c8 c16 c16( c4) c8 c8 |
  c8 c16 c16 c8 c16 c16( c4) r4 |
  c8 c8 c8 c16 c16( c4) c8 c8 |
  c8 c16 c16 c8 c16 c16( c4) r8 r16 r16 |
  r8. r16 r8 r16 r16 r8. r16 r8 r16 r16 |
  r8 r16 r16 r8 r16 r16 r8 r8 r8 r8 |
  r4 r4 r8 r8 r8 r8 |
  r4 r4 r4 r4 |
  r4 r8. r16 r4 r16 r8. |
  r16 r8. r16 r8 r16 r4 r16 r8. |
  r4 r16 r8. r8 r8 r16 r8. |
  r4 r16 r16 r8 r4 r4 |
  r4 r8 r16 r16 r4 r8 r8 |
  r4 r8 r16 r16 r4 r8 r8 |
  r4 r8 r16 r16 r8 r8 r16 r8. |
  r4 r4 r4 r4 |
  r2 r2 |
}

lyricOneOne = \lyricmode {
  \set stanza = "2." No more cry -- in' there __ we are %|
  go -- in' to see the King, __ %|
  no more cry -- in' there __ we are %|
  go -- in' to see the King, __ %|
  no more cry -- in' there __ we are %|
  go -- in' to see the King, __ %|
  %|
  %|
  %|
  %|
  %|
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
  c8 c8 c8 c16 c16( c4) c8 c8 |
  c8 c16 c16 c8 c16 c16( c4) r4 |
  c8 c8 c8 c16 c16( c4) c8 c8 |
  c8 c16 c16 c8 c16 c16( c4) r4 |
  c8 c8 c8 c16 c16( c4) c8 c8 |
  c8 c16 c16 c8 c16 c16( c4) r8 r16 r16 |
  r8. r16 r8 r16 r16 r8. r16 r8 r16 r16 |
  r8 r16 r16 r8 r16 r16 r8 r8 r8 r8 |
  r4 r4 r8 r8 r8 r8 |
  r4 r4 r4 r4 |
  r4 r8. r16 r4 r16 r8. |
  r16 r8. r16 r8 r16 r4 r16 r8. |
  r4 r16 r8. r8 r8 r16 r8. |
  r4 r16 r16 r8 r4 r4 |
  r4 r8 r16 r16 r4 r8 r8 |
  r4 r8 r16 r16 r4 r8 r8 |
  r4 r8 r16 r16 r8 r8 r16 r8. |
  r4 r4 r4 r4 |
  r2 r2 |
}

lyricOneTwo = \lyricmode {
  \set stanza = "3." No more dy -- in' there __ we are %|
  go -- in' to see the King, __ %|
  no more dy -- in' there __ we are %|
  go -- in' to see the King, __ %|
  no more dy -- in' there __ we are %|
  go -- in' to see the King, __ %|
  %|
  %|
  %|
  %|
  %|
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
        >>
    }
    >>
}

\markup {
  \column {
  }
  \hspace #1
  \column {
    \line { C2: }
    \line { We have come from ev'ry nation, God knows each of us by name. }
    \line { Jesus took His blood and washed my sins, and He washed them all away. }
    \line { Yes, there are some of us who have laid down our lives, }
    \line { but we all shall live again on the other side. }
  }
}