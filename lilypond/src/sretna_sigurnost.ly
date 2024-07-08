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
  title = "SRETNA SIGURNOST"
  composer = "P. P. Knapp"
  titlex = "Farmfest 2024"
  style = ""
  broj = "19"
  %tagline = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { Izvorno: Name, Album } }
}

\paper {
  \aFourL
  min-systems-per-page = #7
  %annotate-spacing = ##t
  %system-system-spacing.padding = #3.2
  %page-breaking = #ly:one-page-breaking
  %last-bottom-spacing.minimum-distance = #8
}

staffOne = \relative c' {
  \key des \major
  \time 9/8
  %\tempo 4 = 85
  \partial 4.
  f8 es8 des8 |
  \markMojCenter
  as'4. as4. ges8 as8 b8 |
  as2. as8 f8 as8 |
  des4. c4 c8 b8 as8 g8 |
  as4. as8 ces16 a16 as16 ges16 f8 es8 des8 |
  as'4. as4. ges8 as8 b8 |
  as4. as8 g8 ges8 des8 es8 f8 |
  ges4. es4. des8 es8 c8 |
  des2. as'8 as8 as8 \bar "||" |
  \markMoj
  des4. as4. b8 b8 b8 |
  as2. as8 as8 as8 |
  b4. des4. c8 c8 b8 |
  c2. c8 des8 es8 |
  des4. as4. b8 b8 b8 |
  as4. as8 g8 ges8 des8 es8 f8 |
  ges4. es4. des8 es8 c8 |
  \partial 2.
  des2. |
}

harmonyOne = \chordmode  {
  s4. |
  des4.:maj7 s4. es8:m7 s8 s8 |
  des2./f c8:m7 f8:7.5+ s8 |
  b4.:m7 b4:7 s8 es4:7 s8 |
  es4.:m7 as2.:7.5+ |
  des4.:maj7 s4. e8:m7 fis8:m7 c8:m7.5-/f |
  f4.:m7 des8:7 c8:7 ces8:7 b8:7 ges8:dim7 f8:dim7 |
  es4.:m7 es4.:m7.5- as4.:sus4.7 |
  des2. as8:7 s8 s8 |
  des4.:maj7 s4. es8:m7 s8 s8 |
  des2./f c8:m7 f8:7.5+ s8 |
  b4.:m7 b4:7 s8 es8:7 s4 |
  as4:7 b8:m7/as as4. s4. |
  des4.:maj7 s4. es8:m7 s8 s8 |
  des4./f des8:7 c8:7 ces8:7 b8:7 ges8:dim7 f8:dim7 |
  es2.:m7 as4:sus4.7 s8 |
  des2. |
  \bar "|."
}

alignerOneZero = \relative {
  c8 c8 c8 |
  c4. c4. c8 c8 c8 |
  c2. c8 c8 c8 |
  c4. c4 c8 c8 c8 c8 |
  c4. r8 r16 r16 r16 r16 c8 c8 c8 |
  c4. c4. c8 c8 c8 |
  c4. r8 r8 r8 c8 c8 c8 |
  c4. c4. c8 c8 c8 |
  c2. c8 c8 c8 |
  c4. c4. c8 c8 c8 |
  c2. c8 c8 c8 |
  c4. c4. c8 c8 c8 |
  c2. c8 c8 c8 |
  c4. c4. c8 c8 c8 |
  c4. r8 r8 r8 c8 c8 c8 |
  c4. c4. c8 c8 c8 |
  c2. |
}

lyricOneZero = \lyricmode {
  \set stanza = "1." Sre -- tna si -- %|
  gur -- nost I -- sus je %|
  moj, nje -- mu sam %|
  da -- o sav ži -- vot ja %|
  svoj. Ba -- šti -- nik %|
  Kri -- sta sre -- tan sam %|
  ja, ro -- đen od %|
  Du -- ha i kr -- vlju %|
  spran. To je moj %|
  ži -- vot, pje -- sma je %|
  to: Hva -- li -- ti %|
  Te -- be, o Bo -- že %|
  moj! To je moj %|
  ži -- vot, pje -- sma je %|
  to: Hva -- li -- ti %|
  Te -- be, o Bo -- že %|
  moj. %|
}

alignerOneOne = \relative {
  c8 c8 c8 |
  c4. c4. c8 c8 c8 |
  c2. c8 c8 c8 |
  c4. c4 c8 c8 c8 c8 |
  c4. r8 r16 r16 r16 r16 c8 c8 c8 |
  c4. c4. c8 c8 c8 |
  c4. r8 r8 r8 c8 c8 c8 |
  c4. c4. c8 c8 c8 |
  c2. r8 r8 r8 |
  r4. r4. r8 r8 r8 |
  r2. r8 r8 r8 |
  r4. r4. r8 r8 r8 |
  r2. r8 r8 r8 |
  r4. r4. r8 r8 r8 |
  r4. r8 r8 r8 r8 r8 r8 |
  r4. r4. r8 r8 r8 |
  r2. |
}

lyricOneOne = \lyricmode {
  \set stanza = "2." Pot -- pu -- no %|
  pre -- dan u mi -- ru %|
  "s njim," On lju -- bi %|
  me -- ne, ja sre -- tan sam %|
  "s Njim." Dok bu -- dan %|
  mo -- lim il sni -- vam %|
  snom, znam da je %|
  sre -- ća tam gdje je %|
  On. %|
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
  c8 c8 c8 |
  c4. c4. c8 c8 c8 |
  c2. c8 c8 c8 |
  c4. c4 c8 c8 c8 c8 |
  c4. r8 r16 r16 r16 r16 c8 c8 c8 |
  c4. c4. c8 c8 c8 |
  c4. r8 r8 r8 c8 c8 c8 |
  c4. c4. c8 c8 c8 |
  c2. r8 r8 r8 |
  r4. r4. r8 r8 r8 |
  r2. r8 r8 r8 |
  r4. r4. r8 r8 r8 |
  r2. r8 r8 r8 |
  r4. r4. r8 r8 r8 |
  r4. r8 r8 r8 r8 r8 r8 |
  r4. r4. r8 r8 r8 |
  r2. |
}

lyricOneTwo = \lyricmode {
  \set stanza = "3." Bla -- že -- ni %|
  po -- koj, po -- či -- nak %|
  blag, o -- sje -- ćam %|
  u -- vijek kad slije -- dim mu %|
  trag. Mir me bo -- %|
  žan -- ski is -- pu -- nja -- %|
  va, za -- kon mi %|
  nje -- gov je ra -- dost %|
  sva. %|
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
  }
}
