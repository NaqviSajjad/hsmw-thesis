\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{HSMW-Faltblatt}[2015/09/26 (Klaus Dohmen)]

\RequirePackage{graphicx}
\RequirePackage{ifthen}
\AtBeginDocument{\RequirePackage{scrbase}}

\newif\ifjubilogo
\jubilogofalse

\DeclareOption{blueheadings}{\def\@hsmwcolor{true}}
\DeclareOption{150}{\jubilogotrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{leaflet}}
\ProcessOptions \relax

\LoadClass{leaflet}

\RequirePackage{ngerman}

\AtBeginDocument{%
\ifthenelse{\isundefined{\@hsmwcolor}}{}{
\RequirePackage{xcolor}
\providecolor{HSMW-Blau}{RGB}{47,106,174}
\renewcommand{\sectfont}{\sffamily\bfseries\color{HSMW-Blau}}
}
\ifpdfoutput{%
\AddToBackground{1}{
\ifjubilogo
\put(155.5,513){\includegraphics[width=3.9cm, viewport = 0 -19 215 122,
  clip]{HSMW-Logo-150.pdf}}
\else
\put(158.5,527){\includegraphics[width=3.9cm, viewport = 5 -19 280 131,
  clip]{HSMW-Logo.pdf}}
\fi
}}{%
\AddToBackground{1}{
\ifjubilogo
\put(155,521){\includegraphics[width=39mm]{HSMW-Logo-150.ps}}
\else
\put(158,535){\includegraphics[width=39mm]{HSMW-Logo.ps}}
\fi
}}
\vspace*{1.5cm}
}

\endinput