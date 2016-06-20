\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{HSMW-Brief}[2015/09/26 (Klaus Dohmen)]

\newif\ifqrcodeinclude
\qrcodeincludefalse
\newif\ifnoextralogos
\noextralogosfalse
\newif\ifgross
\grossfalse
\newif\ifmoreextralogos
\moreextralogosfalse
\newif\ifjubilogo
\jubilogofalse

\DeclareOption{noqrcode}{\qrcodeincludefalse}
\DeclareOption{qrcode}{\qrcodeincludetrue}
\DeclareOption{noextralogos}{\noextralogostrue}
\DeclareOption{extralogos}{\noextralogosfalse}
\DeclareOption{C4}{\grosstrue}
\DeclareOption{DL}{\grossfalse}
\DeclareOption{moreextralogos}{\moreextralogostrue}
\DeclareOption{150}{\jubilogotrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrlttr2}}
\ProcessOptions\relax

\LoadClass[DIV14,fontsize=10pt,version=3.04]{scrlttr2}[2009/07/07]

\ifqrcodeinclude
\else
\qrcode{}
\fi

\RequirePackage{ngerman}
\RequirePackage[german]{isodate}
\RequirePackage{mathptmx} 
\RequirePackage{fixltx2e}
\RequirePackage{eurosym}
\RequirePackage{xcolor}
\RequirePackage{eso-pic}
\RequirePackage{graphicx}
\RequirePackage{ifthen}

\IfFileExists{HSMW-Fonts.sty}{%
\RequirePackage{HSMW-Fonts} % fuer Hausschrift
\renewcommand{\sfdefault}{univers}
}{%
\RequirePackage[scaled]{helvet}
}

\providecolor{HSMW-Blau}{RGB}{47,106,174}
\renewcommand{\familydefault}{\sfdefault}

\newcommand{\AllLogos}{
\AddToShipoutPicture*{%
\ifpdfoutput{%
\ifjubilogo
\put(382,733){\includegraphics[width=56mm, viewport = 0 0 215 122,
  clip]{HSMW-Logo-150.pdf}}
\else
\put(386,747){\includegraphics[width=56mm, viewport = 5 6 280 131,
  clip]{HSMW-Logo.pdf}}
\fi
\ifnoextralogos\else 
\put(300,39){\includegraphics[width=16mm, viewport = 89 522 424 747,
  clip]{Fremdlogos.pdf}}
\put(494,35){\includegraphics[width=15mm, viewport = 91 356 211 478,
  clip]{Fremdlogos.pdf}}
\ifmoreextralogos
\put(200,39){\includegraphics[height=1.07cm]{ASIIN.png}}
\put(85,39){\includegraphics[height=1.2cm]{Stipendium.png}}
\fi
\fi
}%
{
\ifjubilogo
\put(383,731){\includegraphics[width=55.5mm]{HSMW-Logo-150.ps}}
\else
\put(386,745){\includegraphics[width=55.5mm]{HSMW-Logo.ps}}
\fi
\ifnoextralogos\else 
\put(300,39){\includegraphics[width=16mm, viewport = 89 522 424 747,
  clip]{Fremdlogos.ps}}
\put(494,35){\includegraphics[width=15mm, viewport = 91 356 211 478,
  clip]{Fremdlogos.ps}}
\fi
}}

% Logo auf Folgeseiten
\nexthead{ 
\AddToShipoutPicture*{%
\ifpdfoutput{
\ifjubilogo
\put(419,731){\includegraphics[width=45mm, viewport = 0 -25 215 122,
  clip]{HSMW-Logo-150.pdf}}
\else
\put(423,745){\includegraphics[width=45mm, viewport = 5 -19 280 131,
  clip]{HSMW-Logo.pdf}}
\fi
}%
{
\ifjubilogo
\put(419,744){\includegraphics[width=44.75mm]{HSMW-Logo-150.ps}}
\else
\put(422,758){\includegraphics[width=44.75mm]{HSMW-Logo.ps}}
\fi
}}}

}

