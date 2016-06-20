(TeX-add-style-hook "HSMW-Poster"
 (lambda ()
    (LaTeX-add-environments
     "poster")
    (TeX-add-symbols
     '("conference" ["argument"] 1)
     "dateOLD"
     "insertshorttitleOLD"
     "insertshortauthorOLD"
     "insertshortinstituteOLD"
     "insertdateOLD")
    (TeX-run-style-hooks
     "beamerthemeMittweida"
     "beamerposter"
     "babel"
     "english"
     "german"
     "ngerman"
     "ifthen"
     "truncate"
     "fit"
     "beamer10"
     "beamer")))

