\version "2.24.1"
\include "deutsch.ly"
jazzChords = {}
aFourL = {}
markMoj = {}
\include "../config/include.ily"

\layout {
  indent = 0
}

\header {
  titlex = "Farmfest 2023"
  broj = "11"
  title = "LJUBAV SI BESKRAJNA"
  composer = "Phil Wickham"
  style = ""
  tagline = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { Izvorno: This Is Amazing Grace, The Ascension } }
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
  \tempo 4 = 98
  \markMoj es'8 d8 c8 d8 ~d8 d8 c8 d8 |
  r8 b8 c8 d8 f4 g4 | \break
  es8 d8 c8 d8 r8 d8 c8 d8 |
  r8 b8 c8 d8 g,4 f4 | \break
  \repeat volta 2 {
  \once \override Score.RehearsalMark.self-alignment-X = #CENTER
  \mark \default
  r8 d8 d8 d8 d4 c16 b8. |
  r8 d8 d8 d8 d4 c16( b8.) |
  r8 d8 d8 d8 d4 c8( b8) |
  r8 d8 d8 d8 d4 c8( b8) |
  r8 c8 c8 c8 c8( b8) b4 |
  r8 c4 d8 c8. b16 ~b8 b8 ~|
  b2 r2 |
  }
  \alternative {
  {r1 |} 
  {r8 f'8 f8 f8 f8. d16 ~d8 d8 ~\bar "||" |}
  }
  \break
  \markMojCenter d4 r4 r2 |
  r8 f8 f8 f8 f8. d16 ~ d8 d8 (~|
  d16 c16 b4.) r2 |
  r8 f'8 f8 f8 f8. d16 ~d8 d8 ~|
  d2 r2 |
  r8 f8 f8 f8 g8. c,16 ~c8 c8 ~|
  c2 r2 |
  r8 f8 f8 f8 f8. d16 ~ d8 d8 (~|
  d16 c16 b4.) r2 |
  r8 f'8 f8 f8 g4 d4 |
  es2( ~es8 d4 b8 ~|
  b4) r4 r4 c8( d8) |
  r8 c8 c8 c8 c8( b8) b4 |
  r8 c8 c8 d8 c8. b16 ~b8 b8 \bar "||" | \break
  \markMoj b8 b8 b8 c8 c8 b8 b8 d8 ~|
  d2 r2 |
  b8 b8 b8 c8 c8 b8 b8 es8 ~|
  es8 d8( c8) b8 ~b2 |
  b8 b8 b8 c8 c8 b8 b8 d8 (~|
  d16 es16 d8 ~d4) r2 |
  b8 b8 b8 c8 c8 b8 b8 es8 ~|
  es8 d8( c8) b8 ~b4 r4 |
  b8 b8 b8 b8 f'8 f8 f8 d8 ( ~|
  d8 c4. ) r2 |
  b8 b8 b8 c8 c8 b8 b8 es8 ~|
  es8 d8( c8) b8 ( ~b8 g8 ) r4 |
  d'8 d8 d8 es8 es8 d8 d8 f8 ( ~|
  f8 d8 ) r8 f8 ~f8 d8 r8 f8 ~|
  f8 d8 r8 f8 ( ~f8 g8 f8 ) g8 |
  r1 |
}

harmonyOne = \chordmode  {
  b1 |
  s1 |
  es1 |
  s1 |
  b1 |
  s1 |
  es1 |
  s1 |
  g1:m |
  f1 |
  es1 |
  es1 |
  s1 |
  b1 |
  s1 |
  es1 |
  s1 |
  g1:m |
  s1 |
  f1 |
  s1 |
  b1 |
  s1 |
  es1 |
  s1 |
  g1:m |
  f1 |
  b1 |
  s1 |
  es1 |
  s1 |
  b1 |
  s1 |
  es1 |
  s1 |
  b1 |
  s1 |
  es1 |
  s1 |
  g1:m |
  b1 |
  es1 |
  s1 |
  \bar "|."
}

lyricOneZero = \lyricmode {
  \repeat unfold 24 { \skip1 }
  \set stanza = "1."
  Tko je po -- bije -- di -- o 
  _ smrt i ta -- mu? __ 
  Tko da -- o lju -- bav __ 
  "" i svu sla -- vu? __  
  Naš Gos -- pod si -- lan, 
  Kralj svih kra -- lje -- va! __ 
  Lju -- bav si bes -- kraj -- na, __ 
  i mi -- lost pre -- div -- na. __ 
  Moj grijeh si po -- ni -- o, __ 
  za me sve pla -- ti -- o. __ 
  Ži -- vot Ti da -- o -- 
  si, __ 
  da bu -- dem slo -- bo -- 
  dan. __ 
  O, __ 
  sad Te -- be sla -- vim 
  za dje -- la pre -- div -- na. 
  Sve -- to ja -- nje uz -- vi -- še -- no, __ 
  sve -- to ja -- nje smrt je po -- bje -- 
  di -- lo. __ 
  Sve -- to ja -- nje uz -- vi -- še -- no, __ 
  sve -- to ja -- nje smrt je po -- bje -- 
  di -- lo. __
  Sve -- to ja -- nje uz -- vi -- še -- no, __ 
  sve -- to ja -- nje smrt je po -- bje -- 
  di -- lo. __ 
  Sve -- to ja -- nje uz -- vi -- še -- no. __ 
  Sve -- to, sve -- to, sve -- to!
}

lyricOneOne = \lyricmode {
  \repeat unfold 24 { \skip1 }
  Tko dr -- ži zem -- lju __ _ 
  u sve -- toj ru -- ci? __ 
  Tko či -- ni ču -- da __ 
  i do -- bro du -- ši? __ 
}

lyricOneTwo = \lyricmode {
  \repeat unfold 24 { \skip1 }
  \set stanza = "2."
  Tko da -- je na -- du __ _ 
  slom -- lje -- nom sr -- cu? __ 
  Tko da -- je od -- mor __ 
  u -- mor -- nom bi -- ću? __ 
}

lyricOneThree = \lyricmode {
  \repeat unfold 24 { \skip1 }
  Tko vla -- da i -- sti -- nom 
  i svo -- jom prav -- dom? __ 
  Tko si -- ja sla -- vom, __ 
  ko zvijez -- de ne -- bom? __ 
}

\score {
    <<
    \new ChordNames { \jazzChords \harmonyOne }
    \new Staff { \staffOne }
    \addlyrics { \lyricOneZero }
    \addlyrics { \lyricOneOne }
    \addlyrics { \lyricOneTwo }
    \addlyrics { \lyricOneThree }
    >>
}
