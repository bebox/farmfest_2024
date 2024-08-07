%JAZZ CHORDS

% correct markup for "b" and "#" (use symbols from current font...)
%chordFlat = \markup { \hspace #0.2 \fontsize #-3 \raise #0.7 "!" }
chordFlat = \markup { \hspace #-0.5 \translate #'(0 . -0.2) \epsfile #X #0.4 #"snizilica.eps" }
chordSharp = \markup { \hspace #0.2 \fontsize #-3 \raise #0.7 "#" }

%definicija znakova
%min = \markup { \fontsize #-4 \raise #0.55 #(ly:export (ly:wide-char->utf-8 #x2013)) }
%min = \markup { \fontsize #-4 \raise #0.55 \char ##x2013 }
add = \markup { \fontsize #-4 \raise #0.8 "add" }
M = \markup { \hspace #0.1 \fontsize #-4 \raise #0.8 "M" }
min = \markup { \fontsize #-2 "m" }
maj = \markup { \fontsize #-2 "maj" }
dim = \markup { \hspace #0.12 \fontsize #-7 \raise #1.2 \char ##x00b0 }
hdim = \markup { \hspace #0.1 \fontsize #-7 \raise #1.2 \char ##x00d8 }
aug = \markup { \fontsize #-7 \raise #1.2 "+" }
dva = \markup { \fontsize #-4 \raise #0.8 "2" }
cetri = \markup { \fontsize #-4 \raise #0.8 "4" }
pet = \markup { \fontsize #-4 \raise #0.8 "5" }
sest = \markup { \fontsize #-4 \raise #0.8 "6" }
sedam = \markup { \hspace #0.1 \fontsize #-4 \raise #0.8 "7" }
devet = \markup { \fontsize #-4 \raise #0.8 "9" }
trinaest = \markup { \fontsize #-4 \raise #0.8 "13" }
jedanaest = \markup { \fontsize #-4 \raise #0.8 "11" }
sus = \markup { \hspace #0.1 \fontsize #-5 \raise #1.16 "sus" }

jazzChordsMusic =
{
  %kvintakordi
  <c e ges>-\markup { {\hspace #0 \translate #'(0.2 . 0.6) \epsfile #X #0.6 #"snizilica.eps"}  \pet }
  <c es g>-\markup { \min }
  <c d g>-\markup { \dva }
  <c es ges>-\markup {\dim }
  <c e gis>-\markup { \aug }
  <c f g>-\markup { \cetri }
  %septakordi
  <c e g a>-\markup { \sest }
  <c es g h>-\markup { \min \M \sedam }
  <c es g b>-\markup { \min \sedam }
  <c es g a>-\markup { \min \sest } 
  <c es g as>-\markup { \min \chordFlat \sest }
  <c e g b>-\markup { \sedam }
  <c e g h>-\markup { \maj \sedam }
  <c es g b>-\markup { \min \sedam }
  <c e g b des'>-\markup { \sedam { \hspace #0 \translate #'(0.2 . 0.6) \epsfile #X #0.6 #"snizilica.eps" } \devet }
  <c e g b dis'>-\markup { \sedam \chordSharp \devet }
  <c e gis b>-\markup { \sedam \chordSharp \pet }
  <c es ges b>-\markup { \hdim }
  <c es ges heses>-\markup { \dim \sedam }
  <c f g des'>-\markup { \sus \chordFlat \devet }
  <c e g b d'>-\markup { \devet }
  <c e g h d'>-\markup { \maj \devet }
  <c e g d'>-\markup { \add \devet }
  <c f g b>-\markup { \sedam \sus \cetri }
  %nonakordi
  <c es g b d'>-\markup { \min \devet }
  <c e fes g b>-\markup { \maj \chordFlat \cetri }
  <c e fis g b>-\markup { \maj \chordSharp \cetri }
  <c e g b d' f'>-\markup { \jedanaest }
  <c es g b f'>-\markup { \min \sedam \add \jedanaest}
  % Add more as needed
}

% Add to existing exceptions
jazzChordsAdd = #(append
  (sequential-music-to-chord-exceptions jazzChordsMusic #t)
  ignatzekExceptions)

% definition from scm/chord-name.scm
#(define (accidental->markup alteration)
"Return accidental markup for ALTERATION."
(if (= alteration 0)
(make-line-markup (list empty-markup))
(conditional-kern-before
(alteration->text-accidental-markup alteration)
(= alteration FLAT) 0.2)))

% definition from scm/ chord-generic-names.scm
#(define (conditional-kern-before markup bool amount)
"Add AMOUNT of space before MARKUP if BOOL is true."
(if bool
(make-line-markup
(list (make-hspace-markup amount)
markup))
markup))

% definition from scm/chord-name.scm,
#(define (conditional-string-downcase str condition)
  (if condition
      (string-downcase str)
      str))

#(define (pitch-alteration-semitones pitch)
  (inexact->exact (round (* (ly:pitch-alteration pitch) 2))))

% definition from scm/chord-name.scm, changed to our needs
#(define-public ((chord-name->semi-german-markup B-instead-of-Bb)
                     pitch lowercase?)
  "Return pitch markup for PITCH, using german note names.
   If B-instead-of-Bb is set to #t real german names are returned.
   Otherwise semi-german names (with Bb and below keeping the british names)
"
  (let* ((name (ly:pitch-notename pitch))
         (alt-semitones  (pitch-alteration-semitones pitch))
         (n-a (if (member (cons name alt-semitones) `((6 . -1) (6 . -2)))
                  (cons 7 (+ (if B-instead-of-Bb 1 0) alt-semitones))
                  (cons name alt-semitones)))
        (alt (ly:pitch-alteration pitch)))
    (make-line-markup
     (list
      (make-simple-markup
       (conditional-string-downcase
                (vector-ref #("C" "D" "E" "F" "G" "A" "H" "B") (car n-a))
                lowercase?))
            (if (= alt 0)
        (make-line-markup (list empty-markup))
        (if (= alt FLAT)
          ;; Otherwise, handle adding the flat symbol
            (make-line-markup
            (list
              (make-hspace-markup 0)
              (markup #:fontsize -2 (make-raise-markup 0.4
                (make-text-markup
								(markup #:line (#:override (cons 'font-name "Lilypond JohnSans Medium Pro") #:hspace 0 #:translate (cons 0.1 -0.65) (#:epsfile 0 0.92 "snizilica.eps")))
								)))
            ))
          ;; or handle adding the sharp symbol
            (make-line-markup
            (list
              (make-hspace-markup 0)
              (markup #:fontsize -1 (make-raise-markup 0.2
                (make-text-markup "#")))
            ))
        ))))))

% definition as in ly/property-init.ly

myGermanChords = {
}


jazzChords =
{
  \set chordNameExceptions = #jazzChordsAdd
  \set chordRootNamer = #(chord-name->semi-german-markup #f)
  %\set chordNoteNamer = #note-name->uppercase-semigerman-markup
  %\set chordNoteNamer = #note-name->german-markup
  \override ChordName.font-size = 1.5
  \override ChordName.font-name = "Lilypond JohnSans Medium Pro"
  \set chordChanges = ##t
}
