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
  title = "TI SI OD VJEČNOSTI"
  composer = "Danko Tomanić"
  titlex = "Psalam 93 (Eb)"
  style = ""
  broj = "24"
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
  \time 4/4
  %\tempo 4 = 65
  \clef treble
  \markMoj
  r8 fis8 e8. fis16 g16 fis16 d8 r4 |
  r8 fis16 e16 ~e16 fis16 e16 dis16 ~dis4 r4 |
  r8 g8 fis8. g16 a16 g16 e8 r4 |
  r8 g16 g16 ~g16 a16 g16 e16 ~e4 r4 |
  r8 fis16 fis16 ~fis16 e16 fis16 g16 ~g8 fis16 e16 ~e16 d8. |
  r8 fis16 e16 fis16 e8 dis16 ~dis4 r4 |
  r8 g8 fis8 g16 a16 ~a4 r16 g16 fis16 g16 |
  e2. r4 |
  r8 fis16 fis16 e16 fis8 g16 ~g8 fis16 d16 r4 |
  r4 fis8. e16 e16 dis8. r4 |
  r8 g16 g16 fis16 g8 a16 ~a8 g16 e16 r4 |
  r8 g8 a8 g16 e16 ~e4 r4 |
  r8 a16 a16 gis8 a16 h16 ~h8 a16 g16 fis4 |
  r8 a16 a16 h16 a8 fis16 ~fis4 r4 |
  r8 h8 ais8 h16 cis16 ~cis8 h8 r8 a16 g16 |
  h16 (a16 h8 ~h4 )cis16 (h16 cis8 ~cis4 )\bar "||" | \break
  \markMoj
  r8 d16 a16 g16 fis8. r4. g16 fis16 |
  e16 d8 (e16 fis2 )r4 |
  r4 r16 g16 g16 g16 g8 a16 h16 ~h16 g8. |
  e2. r4 |
  r8 a16 fis16 e16 d8. r4. g16 fis16 |
  r8 e16 d16 (~d16 e16 fis8 ~fis4 )r4 |
  r8 d8 d8 d8 fis4. e8 |
  d2 r2 \bar "|." |
}

harmonyOne = \chordmode  {
  d2 d2:maj7 |
  d2:7 h2 |
  e2:m e2:m7+ |
  e2:m7 a2 |
  d2 d2:maj7 |
  d2:7 h2 |
  e2:m e2:m7+ |
  e2:m7 a2 |
  d2 d2:maj7 |
  d2:7 h2 |
  e2:m e2:m7+ |
  e2:m7 a2 |
  d2 d2:maj7 |
  d2:7 h2 |
  e2:m e2:m7+ |
  e2:m7 a2 |
  d2 a2/cis |
  h2:m h2:m/a |
  g1 |
  a1 |
  d2 a2/cis |
  h2:m h2:m/a |
  g2 a2 |
  d1 |
  \bar "|."
}

alignerOneZero = \relative {
  r8 c8 c8. c16 c16 c16 c8 r4 |
  r8 c16 c16( c16) c16 c16 c16( c4) r4 |
  r8 c8 c8. c16 c16 c16 c8 r4 |
  r8 c16 c16 r16 c16 c16 c16( c4) r4 |
  r8 c16 c16( c16) c16 c16 c16( c8) c16 c16 r16 c8. |
  r8 c16 c16 c16 c8 c16( c4) r4 |
  r8 c8 c8 c16 c16( c4) r16 c16 c16 c16 |
  c2. r4 |
  r8 c16 c16 c16 c8 c16 r8 c16 c16 r4 |
  r4 c8. c16 c16 c8. r4 |
  r8 c16 c16 c16 c8 c16 r8 c16 c16 r4 |
  r8 c8 c8 c16 c16( c4) r4 |
  r8 c16 c16 c8 c16 c16 r8 c16 c16 c4 |
  r8 c16 c16 c16 c8 c16( c4) r4 |
  r8 c8 c8 c16 c16 r8 c8 r8 c16 c16 |
  c16 r16 r8 r4 c16( c16 c8 c4) |
  r8 c16 c16 c16 c8. r4. c16 c16 |
  c16 c8( c16 c2) r4 |
  r4 r16 c16 c16 c16 c8 c16 c16 r16 c8. |
  c2. r4 |
  r8 c16 c16 c16 c8. r4. c16 c16 |
  r8 c16 c16( c16 c16 c8 c4) r4 |
  r8 c8 c8 c8 c4. c8 |
  c2 r2 |
}

lyricOneZero = \lyricmode {
  \set stanza = "1." U sjaj za -- o -- dje -- ven %|
  Gos -- pod __ kra -- lju -- je. __ %|
  Sna -- gom za -- o -- dje -- ven %|
  Gos -- pod kra -- lju -- je. __ %|
  Čvr -- sto __ sto -- ji krug __ ze -- malj -- ski, %|
  ne mi -- če se on, __ %|
  ne mo -- že se __ po -- lju -- lja -- %|
  ti. %|
  Ne -- ka vo -- de po -- di -- žu %|
  gla -- se svo -- je, %|
  ne -- ka vo -- de po -- di -- žu %|
  svoj bu -- čni huk. __ %|
  Sil -- ni -- ji od gla -- sa vo -- da, %|
  vo -- da go -- le -- mih, __ %|
  si -- lan je Gos -- pod u vi -- %|
  si -- ni. __ %|
  Ne -- ka bu -- de vo -- lja %|
  Tvo -- ja, __ %|
  od sa -- mog is -- ko -- na si %|
  Ti. %|
  Tvo -- ja mi je mi -- lost %|
  bo -- lja, __ %|
  Ti si od vje -- čno -- %|
  sti. %|
}

\score {
    <<
    \new ChordNames { \jazzChords \transpose es c' \harmonyOne }
    \new Staff {
        <<
        \new Voice { \transpose es c' \staffOne }
        \new NullVoice = "alignerOneZero" { \alignerOneZero }
        \new Lyrics \lyricsto "alignerOneZero" { \lyricOneZero }
        >>
    }
    >>
}

\markup {
  \column {
    \line { \bold 2. }
  }
  \hspace #1
  \column {
    \line { Nek mi usne pjevaju pjesmu pohvalnu, }
    \line { po svojoj Riječi vodi me. }
    \line { Riječ tvoju željno čekam, čeznem za tobom }
    \line { kad ćeš mi donjet utjehu. }
  }
}