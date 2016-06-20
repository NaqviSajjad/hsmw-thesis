(TeX-add-style-hook "HSMW-QuickTalk"
 (lambda ()
    (LaTeX-add-environments
     "slide")
    (TeX-run-style-hooks
     "eso-pic"
     "pdfscreen"
     "screen"
     "panelright"
     "sectionbreak"
     "sansmath"
     "comment"
     "tikz"
     "lastpage"
     "marvosym"
     "pgf"
     "xkeyval"
     "ifthen")))

