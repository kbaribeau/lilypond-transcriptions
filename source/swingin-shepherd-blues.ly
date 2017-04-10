\header {
  title = "Swingin' Shepherd Blues"
  composer = "Moe Koffman"
  meter = "Flute"
}

\relative {
  \time 4/4
  \key c \major

  \partial 4. g'8 a c
  \acciaccatura { ees8 } e4 \acciaccatura { ees8 } e4 c8 g a c
  \acciaccatura { ees8 } e4 \acciaccatura { ees8 } e4 c8 g a c
  \acciaccatura { ees8 } e4 \acciaccatura { ees8 } e4 c8 g \tuplet 3/2 { a g bes~ }
  bes2 \breathe r4 c8 c
  \break

  f c \acciaccatura { f8 } fis8 f8~ f8 c \acciaccatura { f8 } fis8 f8~
  f4.~ \glissando ees8~ ees c8 g f
  e8 c e c f4 fis8 g~
  g4 \breathe r8 e \glissando g c d c
  \break

  ees4 ees c8 g f g
  ees'4 ees c8 \breathe r8 \tuplet 3/2 { g f g }
  c bes~ bes4 a8 aes~aes4
  g8 f e c \breathe r4 \tuplet 3/2 { g''8 a c }

  % second chorus
  \acciaccatura { ees8 } e4 \acciaccatura { ees8 } e4 c8 g a c
  \acciaccatura { ees8 } e4 \acciaccatura { ees8 } e4 c8 g a c
  \acciaccatura { ees8 } e4 \acciaccatura { ees8 } e4 c8 g \tuplet 3/2 { a g bes~ }
  bes2 \breathe r4 c8 c
  \break

  f c \acciaccatura { f8 } fis8 f8~ f8 c \acciaccatura { f8 } fis8 f8~
  f4.~ \glissando ees8~ ees c8 g f
  e8 c e c f c fis g~
  g4 \breathe r8 e \glissando g c d c
  \break

  ees4 ees c8 g f g
  ees'4 ees c8 \breathe r8 \tuplet 3/2 { g f g }
  c bes~ bes4 a8 aes~aes4
  g8 f e c \breathe r8 g b d
  \break

  % solo chorus

  c r g4-- e8 c e c
  f c f c fis c4 r8
  r8 ees \tuplet 3/2 { e g a } \acciaccatura { a } bes4 \acciaccatura { a } bes4
  \acciaccatura { a } bes4 a8 aes g r8 a c
  \break

  ees f \tuplet 3/2 { f fis c'-> } \tuplet 3/2 { f, fis c'-> } \tuplet 3/2 { f, fis c'-> }
  \tuplet 3/2 { f, e c } f f~ f4 r4
  r8 g8 c-. e g-- e c a
  g gis a e g gis a e g
  \break

  a, c d ees e f fis g
  a, c d ees a, d a c c~
  c4 c4 c4-- \tuplet 3/2 { c8 c c }
  c8 c c r r4

}

