(TeX-add-style-hook "HSMW-Worksheet"
 (lambda ()
    (LaTeX-add-environments
     "loesungshinweis"
     "loesung"
     '("teilaufgaben" [ "Nummerierungsart" ] )
     '("aufgabe" [ "Ueberschrift" ])
     '("exercise" [ "Ueberschrift" ])
     "solution"
     "hint"
     '("subexercises" [ "Nummerierungsart" ] )
     '("wahrfalsch" [ "Nummerierungsart" ]) )
    (TeX-add-symbols
     '("loesungskasten" [ "Ueberschrift" ] t)
     '("Semester" [ "Kurzform" ] "Langform")
     '("phantomtext" [ "Faktor" ] )
     '("subexercise" [ "Number" ] )
     '("teilaufgabe" [ "Nummer" ] )
     '("wf" 1)
     '("Aufgaben" 1)
     '("Nummer" 1)
     '("Thema" 1)
     '("Lehreinheit" 1)
     '("Dozent" 1)
     '("Fakultaet" 1)
     '("translate" 1)
     '("ifsolutions" 0)
     '("ifnosolutions" 0)
     '("ifhints" 0)
     '("ifnohints" 0)
     '("ifdraft" 0)
     '("ifhypertext" 0)
     '("ifgerman" 0)
     '("ifenglish" 0)
     '("sepline" 0)
     '("Zusatzblatt" 0)
     '("stern" 0))
    (TeX-run-style-hooks
     "sansmath"
     "lastpage"
     "graphicx"
     "eso-pic"
     "ngerman"
     "babel"
     "english"
     "dvips"
     "hyperref"
     "pdftex"
     "colorlinks"
     "breaklinks"
     "pifont"
     "multicol"
     "mathrsfs"
     "url"
     "comment"
     "verbatim"
     "lmodern"
     "fix-cm"
     "fontenc"
     "LY1"
     "T1"
     "xcolor"
     "amsthm"
     "amssymb"
     "amsmath"
     "enumerate"
     "ifthen"
     "xkeyval"
     "ifpdf")))

