(TeX-add-style-hook "beamerthemeMittweida"
 (lambda ()
    (LaTeX-add-environments
     "colthm"
     "colmath"
     "progressbar")
    (TeX-add-symbols
     '("nextframeprogressbar" ["argument"] 0)
     "nextframenocontents" 0)
    (TeX-run-style-hooks
     "tikz"
     "ragged2e"
     "newcommands"
     "textpos"
     "absolute"
     "overlay"
     "pgfpages"
     "ifthen"
     "xkeyval"
     "babel"
     "english"
     "ngerman")))

