\header {
  title = "Take Five (solo)"
  composer = "Paul Desmond"
  % This is probably wrong, but it gets the right result ¯\_(ツ)_/¯
  meter = "Eb Alto Sax"
}

\relative {
  \time 5/4
  \key bes \major

  g''2.\glissando g,2
  c2. d8 ees \breathe r4
  c'8 [g f c] f c~ c4 ees4->
  c2 d8 ees g4-> r4
  \break

  r8 c,8~ c4 ees8 c8 d4-- f->
  r8 c8~ c4 ees8 c d bes g4->
  r8 c~ c4 ees8 c d4-- f->
  r8 c~ c4 ees8 c d8 f-> r4
  \break

  r8 f~ f1
  r8 ees8~ ees d c4~ c2
  c,4 f'2 r8 bes g-- ees
  r8 c8~-> c2 \breathe r4 c,
  \break

  r8 c'~ c4 d8 c ees4-- f->
  r8 c~ c d~ d bes c d ees f
  g4 r8 a~ a f g4-- c->
  g r8 a~ a f g a bes c
  \break

  d~ d~\turn d1\glissando
  d,4. \breathe c'8~ c4 a8 f r4
  r4 c, bes''\glissando d,8 bes c d
  ees f g c,~ c4 c-> r4
  \break

  f,4. f'8~ f8 c8 ees d c4
  f,4. f'8~ f8
    \override NoteHead.style = #'cross
    c8
    \revert NoteHead.style
    d ees r4
  f,4. f'8~ f8 c8 ees d c4
  f,4. d'8-^ r8 bes8 c4. a8
  \break

  g2.~ g2
}

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
