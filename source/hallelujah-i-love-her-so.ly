\header {
  title = "Hallelujah I Love Her So"
  composer = "Macro Parker w/ WDR Big Band"
  % This is probably wrong, but it gets the right result ¯\_(ツ)_/¯
  meter = "Eb Alto Sax"
}

fall =
  #(define-music-function
      (parser location startNote endPitch)
      (ly:music? ly:music?)
  #{
    \override Glissando.style = #'zigzag
    #startNote
    \cadenzaOn \hideNotes

    % \glissando

    #endPitch
    \unHideNotes \cadenzaOff
  #})

gliss =
  #(define-music-function
      (parser location startNote endNote)
      (ly:music? ly:music?)
      )

%%%%%    WORKING STUFF %%%%%
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
  \time 4/4
  \key g \major

  r4 b''8 a \acciaccatura { e } f e d b
  \displayMusic { d8 d~ d \startFall d \glissando \endFall d, r2 }

  % d8 d~ d \gliss d d, r2

  % r8 \acciaccatura { bes' } b \acciaccatura { bes } b a r \acciaccatura { e } f e b
  % d b d r8 r2

}

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
