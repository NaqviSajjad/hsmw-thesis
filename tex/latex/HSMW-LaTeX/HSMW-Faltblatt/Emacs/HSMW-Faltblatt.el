(TeX-add-style-hook "HSMW-Faltblatt"
 (lambda ()
    (TeX-add-symbols
    '("AddToBackground" 2))
    (TeX-run-style-hooks
     "xcolor"
     "ngerman"
     "leaflet10"
     "leaflet"
     "scrbase"
     "ifthen"
     "graphicx")))

