(TeX-add-style-hook "HSMW-Thesis"
 (lambda ()
    (LaTeX-add-environments
     "beweis"
     "theorem"
     "hilfssatz"
     "satz"
     "korollar"
     "corollary"
     "folgerung"
     "lemma"
     "definition"
     "beispiel"
     "example"
     "festlegung"
     "bemerkung"
     "remark"
     "Referat"
     "Vorwort")
    (TeX-add-symbols
     '("Datum" 1)
     '("ISBN" 1)
     '("Druck" 1)
     '("Verlag" 1)
     '("Textsatz" 1)
     '("Copyright" 1)
     '("Jahr" 1)
     '("Monat" 1)
     '("Tag" 1)
     '("Anlagen" 1)
     '("Zweitpruefer" 1)
     '("Erstpruefer" 1)
     '("Fakultaet" 1)
     '("Seminargruppe" 1)
     '("Studiengang" 1)
     '("Thema" 1)
     '("Nachname" 1)
     '("Vorname" 1)
     '("Anrede" 1)
     '("Art" 1)
     '("Ort" 1)
     '("Firmenlogo" 1)
     "Anhang"
     "Hauptteil")
    (TeX-run-style-hooks
     "setspace"
     "scrpage2"
     "headsepline"
     "eso-pic"
     "makeidx"
     "graphicx"
     "fixltx2e"
     "showkeys"
     "notref"
     "color"
     "glossaries"
     "toc"
     "nonumberlist"
     "hypcap"
     "dvips"
     "hyperref"
     "pdftex"
     "colorlinks"
     "breaklinks"
     "bookmarksnumbered"
     "lineno"
     "sansmath"
     "varioref"
     "translator"
     "norefpage"
     "nomencl"
     "german"
     "refpage"
     "HSMW-Count"
     "table"
     "figure"
     "mathptmx"
     "fontenc"
     "T1"
     "footmisc"
     "multiple"
     "chngcntr"
     "cite"
     "mathrsfs"
     "amsthm"
     "amssymb"
     "amsmath"
     "pdfpages"
     "draft"
     "final"
     "comment"
     "verbatim"
     "xspace"
     "url"
     "xcolor"
     "override"
     "english"
     "babel"
     "ngerman"
     "twoside"
     "geometry"
     "includehead"
     "xkeyval"
     "ifthen")))

