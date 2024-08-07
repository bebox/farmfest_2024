\version "2.24.3"
\include "../config/include.ily"

\header {
  title = "U SVIM BORBAMA"
  titlex = "Farmfest 2022 (Sparki)"
  composer = "Bob Fitts"
  style = "Arr. Ruben Horvat"
  broj = "28"
  tagline = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { Izvorno: Praise to the Lord, Integrity's Hosanna! Music } }
}

\paper {
  \aFourL
  %min-systems-per-page = #7
  %annotate-spacing = ##t
  %system-system-spacing.padding = #3.2
  %page-breaking = #ly:one-page-breaking
}

staffOne = \relative c' {
  \key f \major
  \time 4/4
  
  \repeat volta 2 {
  
  \partial 4
  f8 g |
  \once \override Score.RehearsalMark.self-alignment-X = #CENTER
  \once \override Score.RehearsalMark.Y-offset = #0.3
  \once \override Staff.BarLine.extra-spacing-width = #'(0 . 1.2)
  \mark \default \bar "||"
  a8. f16 ~ f8 c ~ c2 |
  r2 c'8. b16 ~ b8 a ~ |
  a8 g16( f ~ f2.) |
  r2 r4 f8 g |
  a8. f16 ~ f8 c ~ c2 |
  r2 c'8 c16 b ~ b8 a ~ |
  a8 g16( f ~ f2.) | \break
  r2 r8 b a a |
   
  g2 r8 a g a |
  g2 r8 g a b |
  c2 r8 a c d ~ |
  d8 c4 c8 ~ c c c a16( g) |
  f2 r4 b8 a |
  g4 g a b8 b ~ |
  b8 g4. r8 a b c ~ |
  c1 | \break
  r2 d4 c |
  
  \once \override Score.RehearsalMark.self-alignment-X = #CENTER
  \once \override Score.RehearsalMark.Y-offset = #0.3
  \once \override Staff.BarLine.extra-spacing-width = #'(0 . 1.2)
  \mark \default
  \bar "||"
  a2 a ~ |
  a4 r4 f8. g16 ~ g8 b |
  a1 |
  r1 |
  a2 a ~ |
  a4 r4 f8. g16 ~ g8 b |
  a1 |
  \alternative {
    \volta 1 {
      r1 |
    }
    \volta 2 {
      r2 r4 r8 a |
    }
  }
  }
  
  \markMoj
  a8. g16 ~ g8 g ~ g4 r8 a |
  a8. g16 ~ g8 g ~ g4 r8 a |
  a8. g16 ~ g8 g ~ g4 c8 a |
  a8. g16 ~ g8 g ~ g8 a( g) f |
  f1 |
  \bar "|."
}

tekst = \lyricmode {
  U svim bor -- ba -- ma __ ti si __ moj __ mir, __
  ka -- da slom -- ljen sam, __ sna -- gu da -- ješ __ mi. __
  Ti sna -- ga si __ i lju -- bav sva __
  i ži -- vot moj, __ mo -- ja ra -- dost, mo -- ja u -- tje -- ha. __
  
  Sla -- vim tvo -- ju div -- nu mi -- lost i pje -- vam. __
  
  Pje -- vam: Sla -- va __ Go -- spo -- du mom! __
  Sla -- va __ Go -- spo -- du mom! __
  Jer do -- bar je __ i mi -- lo -- stiv, __
  on lju -- bi nas, __ on je pre -- di -- van __ Go -- spod moj. __
}

ref = \lyricmode {

}

harmonyOne = \chordmode {
  \set chordChanges = ##t
  s4
  f2. a4 |
  b2 g |
  f2. a4 |
  b2 g |
  f2. a4 |
  b2 g |
  f2. a4 |
  b2 g |
  
  b1 |
  c1 |
  d1 |
  a1 |
  b1 |
  g1 |
  es1 |
  b1 |
  b2 c |
  
  f2 d |
  a2 g |
  f2 d |
  a2 b |
  f2 d |
  a2 g |
  f2 d |
  a2 b |
  a2 b |
  
  g2. a4 |
  b1 |
  g2. a4 |
  b1 |
  f1 |
}

\score {
  <<
    \new ChordNames {  \jazzChords \harmonyOne }
    \new Staff { \staffOne }
    \addlyrics { \tekst \ref }
  >>
  \layout {}
}
