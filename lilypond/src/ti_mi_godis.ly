\version "2.23.9"
\include "../config/include.ily"

\header {
  title = "TI MI GODIŠ"
  titlex = "Farmfest 2021"
  composer = "Tobi Wörner"
  style = ""
  broj = "20"
  tagline = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { Izvorno: Du Tust, Von Jesus bewegt } }
}

\paper {
  \aFourR
  %min-systems-per-page = #7
  %annotate-spacing = ##t
  %system-system-spacing.padding = #3.2
}

note = \relative c' {
%  \once \override Score.MetronomeMark.self-alignment-X = #-1.05
%  \once \override Score.MetronomeMark.padding = #3
    %\tempo 4 = 120
    \key e \major
%    \set Score.rehearsalMarkFormatter = #format-mark-box-letters
    
    %dio A

  \once \override Score.RehearsalMark.self-alignment-X = #LEFT
    \once \override Score.RehearsalMark.X-offset = #9.4
  \once \override Score.RehearsalMark.Y-offset = #3.4
  %\once \override Staff.BarLine #'extra-spacing-width = #'(0 . 1.2)
  \mark \default
%    \repeat volta 2 {
%    \partial8
  r4 h8 h gis' fis e fis |
  h,4 h8 h8 a'4 gis |
  fis4 fis8 e fis fis gis a ~ |
  a8 gis h, h gis'8 fis16 fis16 ~ fis e16 e8 |
  r4 r8 h gis' fis e fis ~ |
  fis8 gis8 h,8 h a'4 gis |
  fis4 r8 h,8 fis' fis e fis ~ |
  fis8 gis ~ gis4 r8 fis4 e8 |
  \bar "||"
  
    \once \override Score.RehearsalMark.self-alignment-X = #CENTER
  %\once \override Score.RehearsalMark.Y-offset = #0.5
  %\once \override Staff.BarLine #'extra-spacing-width = #'(-5 . 3)
  \once \override Staff.BarLine.extra-spacing-width = #'(0 . 1.2)
  %\once \override Staff.BarLine #'color = #red
  %\once \override Staff.BarLine.bar-extent = #'(1.5 . 2.5)
  \mark \default
  r4 r8 e8 gis4 h8 h |
  e,4 r8 e8 a8. gis16 ~ gis8 fis |
  h,4 r8 h8 a'8. gis16 ~ gis8 fis |
  e4 r8 e a8. gis16 ~ gis8 fis |
  e4 r8 e8 gis8. h16 ~ h8 h |
  e,4 r8 e a8. gis16 ~ gis8 fis |
  h,4 r8 h8 a'4 gis |
  fis8 fis e8 fis ~ fis4 r4 |
  \bar "||"
  
   \markMojCenter
  h4. gis8 ~ gis4 r4 |
  fis16 fis8 fis16 ~ fis16 gis8 a16 ~ a16 gis8 fis16 ~ fis8  e8 |
  h'4. gis8 ~ gis4 r4 |
  fis16 fis8 fis16 ~ fis16 gis8 a16 ~ a16 gis8 fis16 ~ fis8 e |
  h'8. gis16 ~ gis8 fis ~ fis8 e fis8 e |
  fis8. gis16 ~ gis8 a ~ a4 gis8 gis16( fis |
  e4) h8 a'8 ~ a h4 h8 ~ |
  h2. r4 |
  \bar "|."
}

tekst = \lyricmode {
\set stanza = #"1. "
%\skip4 \skip4
Sr -- ce tra -- ga za sre -- ćom, du -- ša že -- li dom,
ko -- jim god smje -- rom kre -- nem, dan u -- tro -- šen u -- lu -- do.
Ja te -- žim za mi -- rom, svud ću tra -- ži -- ti,
na kra -- ju tog pu -- ta, __ si Ti.

Ti da -- ješ ra -- dost, i dom pri -- pre -- maš.
Ti či -- niš sre -- tnim, i kri -- vnju pra -- štaš.
Ti mir svoj da -- ješ, i riječ o -- dr -- žiš.
Ti lju -- bav da -- ru -- ješ mi. __
}

ref = \lyricmode {
Ti mi __ go -- diš u du -- bi -- ni du -- še.
Ti si __ ka -- o me -- lem ra -- ni Bo -- že.
Ti me tra -- žiš za -- lu -- tam li __ po -- tpu -- no, __
da po -- tpu -- no. __
}

tekstDva = \lyricmode {
\set stanza = #"2. "
_ Za lju -- ba -- vlju če -- znem, ne -- znam pre -- sta -- ti,
a -- li ne mo -- gu na -- ći ni -- gdje to što pru -- žaš Ti.
Moj grijeh tre -- ba o -- prost, sve ću pro -- ba -- ti,
na kra -- ju te pri -- če, __ si Ti.
}

akordi = \chordmode {
   \set chordChanges = ##t
  e1 | e |
  h1 | h |
  a1/cis a |
  h1 | h |
  e1 | e |
  h1 | h |
  a1/cis | a |
  h1 | h |
  e1 | h/e |
  a1 | h |
  cis1:m | h |
  a1 | h |
}

\score {
  <<
    \new ChordNames {  \jazzChords \akordi }
    \new Staff { \note }
    \addlyrics { \tekst \ref }
    \addlyrics { \tekstDva }
  >>
  \layout {}
}