# lilypond-transcriptions
A place to store music notation for transcriptions I've done using Lilypond

Use this command to generate the pdf from the source:
`time lilypond -s -o pdf/take-five source/take-five.ly`

or, if you have fswatch installed: `fswatch -0 source/ | xargs -0 -n 1 -I {} time lilypond -s -o pdf/hallelujah-i-love-her-so source/hallelujah-i-love-her-so.ly`
