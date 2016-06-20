(TeX-add-style-hook "HSMW-Brief"
 (lambda ()
    (LaTeX-add-environments
     '("brief" 1))
    (TeX-run-style-hooks
     "helvet"
     "scaled" 
     "HSMW-Fonts"
     "ifthen"
     "graphicx"
     "eso-pic"
     "xcolor"
     "eurosym"
     "fixltx2e"
     "mathptmx"
     "isodate"
     "scrlettr2"
     "ngerman"
     "babel")))

