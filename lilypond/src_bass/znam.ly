\version "2.24.3"
\include "deutsch.ly"
jazzChords = {}
aFourL = {}
markMoj = {}
\include "../config/include.ily"

\layout {
  indent = 0
}

\header {
  titlex = "Farmfest 2024 (BASS)"
  broj = "33"
  title = "ZNAM"
  composer = "Danko Tomanić"
  style = ""
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

staffOne = \relative c'' {
  	\key a \minor
  	\time 4/4
        \tempo 4 = 120
	\markMoj
	r8 c8 c a c a c d ~ |
        d8 a ~ a4 r2 |
        r8 d,8 h' h h a g h ~ |
        h8 c4 c8 ~ c d c h |
        a8 c c a c\( a\) c d ~ |
        d a ~ a4 r8 d8 c h |
        r8 h8  h h e4 d |
        d8( c h a ~ a4) r4 |
        
        \markMojPonRight
        r8 e'8 e d e d e4 |
        a4 g8 f ~ f e e( d) |
        r8 d8 d c d c g' d( ~ |
        d8 e ~ e4) r2 |
        c4. a8 ~ a4 c4 |
        d4. a8 ~ a4 r4 |
        r8 h8 h h e4 d |
        d8( c h a ~ a4) r4 |
        \bar "|."
}

harmonyOne = \chordmode  {
        a1:m | d | g | c4*3 c4/h |
        a1:m | d | e | a:m |
        a1 | d:m | g | c4*3 c4/h |
        a1:m | d:m | e | a:m |
  \bar "|."
}

lyricOneZero = \lyricmode {
Ja ni -- sam bi -- o ni bli -- zu, __
a svo -- je ru -- ke i me -- ni si po -- nu -- di -- o.
Znam, ni -- sam broj _ u ni -- zu, __
i me -- ne, me -- ne si spa -- si -- o. __
}

lyricOneOne = \lyricmode {
Tvo -- je su pro -- bo -- li ru -- ke, __
iz njih po -- te -- kla je lju -- bav baš za cije -- li svijet.
Ti si po -- bje -- di -- o mu -- ke, __
od ta -- da u me -- ni ži -- viš vijek. __
}

lyricOneTwo = \lyricmode {
I sa -- da znam da na kri -- žu gol -- got -- skom
i moj si no -- si -- o grijeh. __
Ne -- ma __ mi, ne -- ma, __ ži -- vje -- ti bez te -- be. __
}


\score {
    <<
    \new ChordNames { \jazzChords \transpose a e \clef bass \transpose c' c \harmonyOne }
    \new Staff { \transpose a e \clef bass \transpose c' c \staffOne }
    \addlyrics { \lyricOneZero \lyricOneTwo }
    \addlyrics { \lyricOneOne }
    >>
}
