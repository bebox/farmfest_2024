\version "2.23.9"
\include "../config/include.ily"

\header {
  title = "DIVAN SI"
  titlex = "Farmfest 2021"
  composer = "Martin Smith"
  style = "Stuart Garrard"
  broj = "3"
  tagline = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { Izvorno: Majesty, Delirious?
  } }
}

\paper {
  \aFourL
  %min-systems-per-page = #7
  %annotate-spacing = ##t
  %system-system-spacing.padding = #3.2
}

note = \relative c' {
  \key d \major
  \time 4/4
  
  \markMoj
  d2 cis2 |
  h2 r2 |
  a8 a a a a4 fis8 h ~ |
  h2 r4 r8 \parenthesize a8 |
  a8 a a a a g fis e ~ |
  e2 r2 |
  d'2 cis2 |
  h2 r2 |
  a8 a a a a4 fis8 h ~ |
  h2 r2 |
  a8 a a a a\( g\) fis e ~ |
  e2 r2 |
  
  \markMoj
  d2 a'2 |
  fis4 r8 fis16 fis g8 fis e d |
  d2 a'2 |
  fis4 r8 fis8 g fis e d |
  e4 r8 e16 e fis8 e d cis |
  d2 r2 |
  r1 |
  
  \once \override Score.RehearsalMark.X-offset = #0.00
    \once \override Score.RehearsalMark.Y-offset = #1.6

  \once \override Score.RehearsalMark.self-alignment-X = #CENTER
  \once \override Staff.BarLine.extra-spacing-width = #'(0 . 1.2)
  \bar ".|:"
  \mark \default
  fis'2. a,8 e' ~ |
  e1 |
  fis2. d8 h8 ~ |
  h1 |
  fis'8 fis fis fis fis e e e ~ |
  e2. d8 e |
  fis8 fis fis fis fis\( e\) d d ~ |
  d1 |
  \bar ":|."
}

tekst = \lyricmode {
\set stanza = "1."
E -- vo me
is -- pred ve -- li -- čan -- stva Tvog, __ 
"_" Tvo -- ja mi -- lost pre -- kri -- va me. __
E -- vo me
svje -- stan svo -- je grje -- šno -- sti, __
o -- pran krv -- lju Ja -- _ nje -- ta. __

Shva -- ćam sad                            
da mi Tvo -- ja lju -- bav         
pri -- pa -- da jer za me u -- mro si,
to je žr -- tva naj -- ve -- ća.  
}

tekstB = \lyricmode {
\set stanza = "2."
E -- vo me
po -- ni -- zan i spre -- man sam, __                                                                                                     
o -- pros -- ti -- ti jer Ti o -- pra -- štaš. __                                                                          
Sto -- jim tu
zna -- ju -- ći da že -- liš me, __                             
po -- sve -- ćen sam i ob -- nov -- ljen. __ ""
}

ref = \lyricmode {
Di -- van si, __         
di -- van si. __
Tvo -- ja mi -- lost pro -- na -- šla me __                             
pra -- znih ru -- ku i i -- spu -- ni -- la me. __
Di -- van si, di -- van si
No -- vi čo -- vjek po -- sta -- o sam                                                                                                                                                                                
u bli -- zi -- ni Tvo -- je lju -- ba -- vi.
}

refB = \lyricmode {
\repeat unfold 24 { \skip1 }
Di -- van si, __ di -- van si. __
No -- vi čo -- vjek po -- sta -- o sam __                                                                                                                                                                                
u bli -- zi -- ni Tvo -- je lju -- _ ba -- vi. __
}

akordi = \chordmode {
  \set chordChanges = ##t
  h2:m d/a |
  g1 |
  d1/fis |
  g1 |
  d1/fis |
  cis2:m7.5- fis:7/ais |
  h2:m d/a |
  g1 |
  d1/fis |
  g1 |
  d1/fis |
  cis2:m7.5- fis:7/ais
  \break
  
  h2:m a/cis |
  d1 |
  h2:m a/cis |
  d1 |
  e1/g |
  g2 g:5- |
  g2 g:5- |
  
  d1 |
  a1 |
  h1:m |
  g1 |
  d1 |
  a1 |
  h1:m |
  g1 
}

\score {
  <<
    \new ChordNames {  \jazzChords \transpose d a \akordi }
    \new Staff { \transpose d a \note }
    \addlyrics { \tekst \ref }
    \addlyrics { \tekstB \refB }
  >>
  \layout {}
}