\header {
  title = "Hallelujah I Love Her So"
  composer = "Macro Parker w/ WDR Big Band"
  % This is probably wrong, but it gets the right result ¯\_(ツ)_/¯
  meter = "Eb Alto Sax"
}

startFall =
  #(define-music-function
      (parser location startNote)
      (ly:music?)
  #{
    \override Glissando.style = #'zigzag
    #startNote \cadenzaOn \hideNotes
  #})

endFall =
  #(define-music-function
      (parser location endPitch)
      (ly:music?)
  #{
    #endPitch \unHideNotes \cadenzaOff
  #})

\relative {
  \set Score.markFormatter = #format-mark-box-alphabet

  \time 4/4
  \key g \major

  \mark \default
  r4 b''8 a \acciaccatura { e } f e d b
  \displayMusic { d8 d~ d \startFall d \glissando \endFall d, r2 }
  r8 \acciaccatura { a'' } b8  \acciaccatura { a } b4 a8-. e d b
  d b d r r2

  \break
  r4 b'8 b a b c a-+
  a4 c8 \startFall f, \glissando \endFall f, r4 r8 b
  d d b d b d e f
  d e d r8 r4 \tuplet 3/2 { d8 d d-.}

  \break
  d \acciaccatura { f8 } fis a4 b8 a r8 c
  r8 b r4 r8 \acciaccatura { e, } f e b
  e d d4
    \override NoteHead.style = #'cross
    b8
    \revert NoteHead.style
    d d4
    \startFall d4 \glissando \endFall d, r4 r2

  \break
  \mark \default
  r8 b''8~ b8 a8~ a8 \acciaccatura { e } f8 e b
  d b d r8 r4 \tuplet 3/2 { d,8 g a }
  d8-. f r g a r d \startFall f, \glissando \endFall f,
  r4 r8 \acciaccatura { g' }  aes fis8 r8 r4

  \break
  r4 \acciaccatura { a8 } b \acciaccatura { a } b a \acciaccatura { e } f e b
  d e \startFall f4 \glissando \endFall f' r2
  r8 b,, d b d b d e
  \acciaccatura { e } f e d r8 r4 \tuplet 3/2 { d8 d d-. }

  \break
  d \acciaccatura { f8 } fis a4 r8 c~ c b~
  b a r4 e8 d d b
  d e~ e d r2
  r1

  \break
  \mark \default
  \tuplet 3/2 { r8 bes b } \tuplet 3/2 { d-> bes b } \tuplet 3/2 { d-> bes b } \tuplet 3/2 { d-> r8 b }
  \acciaccatura { e } f e \startFall d \glissando \endFall d,
}

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
