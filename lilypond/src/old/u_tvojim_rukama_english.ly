\version "2.23.9"
\include "../config/include.ily"

\header {
  title = "IN YOUR HAND"
  titlex = "U Tvojim rukama"
  composer = "Waiting For Steve"
  style = ""
  broj = "26"
  %tagline = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { Izvorno: In Your Hand, On a Sunday } }
}

\paper {
  \aFourL
  %min-systems-per-page = #7
  %annotate-spacing = ##t
  %system-system-spacing.padding = #3.2
}

note = \relative c'' {
  \key a \major
  \time 12/8
   
  \markMojPoc
  R1. |
  R1. |
  R1. |
  \break

  \markMojPonRight
  r4 h8 h4 cis8 a4. cis4 fis,8 |
  a8( gis) gis gis gis gis cis4 h8 a4. |
  r4 cis8 h4 cis8 a8( gis4) cis8 cis h |
  a4. a4 h8 a2. |
  r4 cis8 h4 cis8 a4. cis8 cis h |
  a4 gis8 a4 h8 a2. |
  r4 cis8 h4 cis8 a4. cis8 cis h |
  a8( gis4) cis8 cis cis d2. |
  \break

  \markMojCenter
  \bar ".|:-||"
  e2. ~ e4. ~ e4 d8 |
  d4 cis8 ~ cis4. ~ cis4. ~ cis8 h cis |
  d4. cis a2. |
  e'8 e cis h4. e8 e cis h8( a4) |
  r4 a8 e' cis( h) h4. cis |
  a1. |
  \bar ":|."
}

tekst = \lyricmode {
You are the same Ye -- ster -- day,
to -- mor -- row e -- ter -- nal -- ly.
You are the same e -- ven if I turn a -- way.
You are the same e -- ven if I de -- ny Your name.
You are the same, You are the same, You are the same.
}

ref = \lyricmode {
God __ my Fa -- ther __ on -- ly in your hand.
You are the same, You are the One,
I'm co -- ming back to You. __
}

akordi = \chordmode {
  \set chordChanges = ##t
  a2. a2./cis |
  a2. a2./cis |
  d2. d4. a4./cis |
  
  a2. a2./h |
  a2./cis d2.:maj7 |
  a2. a2./h |
  a2./cis d2.:maj7 |
  a2. a2./h |
  a2./cis d2.:maj7 |  
  a2. a2./h |
  a2./cis d2.:maj7 |
  
  a2. a2./cis |
  a2. a2./cis |
  d2. d4. a4./cis |
  a2. a2./cis |
  a2. a2./cis |
  d2. d4. a4./cis |
}

\score {
  <<
    \new ChordNames {  \jazzChords \akordi }
    \new Staff { \note }
    \addlyrics { \tekst \ref }
  >>
  \layout {}
}