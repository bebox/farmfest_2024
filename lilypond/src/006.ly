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
  title = "6"
  composer = "John J. Husband, 1789"
  titlex = "REVIVE US AGAIN"
  %poet = "W. P. Mackay, 1867"
  style = "W. P. Mackay, 1867"
  broj = "38"
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
  \partial 4
  d4 |
  \markMoj
  g4 g4 g4 |
  g2 g8 a8 |
  h4 h4 h4 |
  h2 g8 (h8 )|
  d4 d4 d4 |
  e4 d4 h4 |
  h4 a4 a4 |
  a2 d8. d16 \bar "||" |
  \markMoj
  e4 d4 h8. a16 |
  g4 g4 d'8. d16 |
  e4 d4 h4 |
  a2 d8. d16 |
  e4 d4 h8. a16 |
  g4 g4 h4 |
  c4 h4 a4 |
  \partial 2
  g2 \bar "|." |
}

harmonyOne = \chordmode  {
  g4 |
  s2. |
  s2. |
  s2. |
  s2 s8 s8 |
  s4 s4 s4 |
  c4/g g4 s4 |
  g4/d d4 s4 |
  s2 g8. s16 |
  c4 g4 s4 |
  s4 s4 s8. s16 |
  c4 g4 s4 |
  d2 g8. s16 |
  c4 g4 s4 |
  g4 s4 s4 |
  c4 g4/d d4:7 |
  g2 |
  \bar "|."
}

alignerOneZero = \relative {
  c4 |
  c4 c4 c4 |
  c2 c8 c8 |
  c4 c4 c4 |
  c2 c8( c8) |
  c4 c4 c4 |
  c4 c4 c4 |
  c4 c4 c4 |
  c2 c8. c16 |
  c4 c4 c8. c16 |
  c4 c4 c8. c16 |
  c4 c4 c4 |
  c2 c8. c16 |
  c4 c4 c8. c16 |
  c4 c4 c4 |
  c4 c4 c4 |
  c2 |
}

lyricOneZero = \lyricmode {
  \set stanza = "1." Hva -- %|
  la Ti, Bo -- %|
  že, za lju -- %|
  bav Tvog si -- %|
  na što __ %|
  kr -- vlju o -- %|
  či -- sti nas %|
  svih kri -- vi -- %|
  ca. Ha -- le -- %|
  lu -- ja bu -- di %|
  hva -- ljen, ha -- le -- %|
  lu -- ja a -- %|
  men. Ha -- le -- %|
  lu -- ja bu -- di %|
  hva -- ljen, bla -- %|
  go -- slo -- vi %|
  nas! %|
}

alignerOneOne = \relative {
  c4 |
  c4 c4 c4 |
  c2 c8 c8 |
  c4 c4 c4 |
  c2 c8( c8) |
  c4 c4 c4 |
  c4 c4 c4 |
  c4 c4 c4 |
  c2 r8. r16 |
  r4 r4 r8. r16 |
  r4 r4 r8. r16 |
  r4 r4 r4 |
  r2 r8. r16 |
  r4 r4 r8. r16 |
  r4 r4 r4 |
  r4 r4 r4 |
  r2 |
}

lyricOneOne = \lyricmode {
  \set stanza = "2." Hva -- %|
  la što po -- %|
  slo si nam %|
  Du -- ha sve -- %|
  tog, koj' __ %|
  vo -- di sve %|
  nas do car -- %|
  stva ne -- be -- %|
  skog. %|
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
  c4 |
  c4 c4 c4 |
  c2 c8 c8 |
  c4 c4 c4 |
  c2 c8 r8 |
  c4 c4 c4 |
  c4 c4 c4 |
  c4 c4 c4 |
  c2 r8. r16 |
  r4 r4 r8. r16 |
  r4 r4 r8. r16 |
  r4 r4 r4 |
  r2 r8. r16 |
  r4 r4 r8. r16 |
  r4 r4 r4 |
  r4 r4 r4 |
  r2 |
}

lyricOneTwo = \lyricmode {
  \set stanza = "3." Hva -- %|
  la, čast, sla -- %|
  va ne -- ka %|
  u -- vijek bu -- %|
  de I -- %|
  su -- su lju -- %|
  blje -- nom koj' %|
  spa -- si lju -- %|
  de. %|
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