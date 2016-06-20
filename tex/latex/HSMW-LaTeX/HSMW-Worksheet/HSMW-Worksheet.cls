\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{HSMW-Worksheet}[2013/01/30 (Klaus Dohmen)]

\newif\ifhintsincolumns
\hintsincolumnsfalse
\newif\ifsolutionsincolumns
\solutionsincolumnsfalse
\newif\ifhints
\hintsfalse
\newif\ifnohints
\nohintstrue
\newif\ifsolutions
\solutionsfalse
\newif\ifnosolutions
\nosolutionstrue
\newif\ifblatt
\blatttrue
\newif\ifsansserif
\sansseriffalse
\newif\ifseplines
\seplinesfalse
\newif\ifenglish
\englishfalse
\newif\ifgerman
\germantrue
\newif\ifpresentation
\presentationfalse
\newif\ifnopresentation
\nopresentationtrue
\newif\ifhypertext
\hypertextfalse
\newif\ifnohypertext
\nohypertexttrue
\newif\ifsolutionsinsitu
\solutionsinsitufalse
\newif\ifhintsinsitu
\hintsinsitufalse
\newif\ifdraft
\draftfalse

\RequirePackage{ifpdf}
\RequirePackage{xkeyval}
\RequirePackage{ifthen}
\RequirePackage{enumerate}
\RequirePackage{amsmath,amssymb,amsthm}
\RequirePackage{xcolor}
\RequirePackage[LY1,T1]{fontenc}
\RequirePackage{fix-cm}
\RequirePackage{lmodern}
\RequirePackage{verbatim}
\RequirePackage{comment}
\RequirePackage{url}
\RequirePackage{mathrsfs}
\RequirePackage{multicol}
\RequirePackage{pifont}
\AtBeginDocument{\setlength{\columnsep}{23pt}}

\DeclareOptionX{solutions}[exsitu]{\solutionstrue\nosolutionsfalse\ifthenelse{\equal{#1}{insitu}}{\solutionsinsitutrue\hintsinsitutrue}{\solutionsinsitufalse\ifthenelse{\equal{#1}{columns}}{\solutionsincolumnstrue}{\solutionsincolumnsfalse}}}
\DeclareOptionX{hints}[exsitu]{\hintstrue\nohintsfalse\ifthenelse{\equal{#1}{insitu}}{\hintsinsitutrue}{\hintsinsitufalse\ifthenelse{\equal{#1}{columns}}{\hintsincolumnstrue}{\hintsincolumnsfalse}\ifsolutionsinsitu\hintsinsitutrue\fi}}
\DeclareOptionX{sansserif}{\sansseriftrue}
\DeclareOptionX{seplines}{\seplinestrue}
\DeclareOptionX{english}{\englishtrue\germanfalse}
\DeclareOptionX{draft}{\drafttrue}
\DeclareOptionX{hypertext}{\hypertexttrue\nohypertextfalse}
\DeclareOptionX*{\PassOptionsToClass{\CurrentOption}{scrreprt}}
\ProcessOptionsX*\relax

\LoadClass[DIV13,parskip=half,version=3.04]{scrreprt}[2009/07/07]

\providecolor{HSMW-Blau}{RGB}{47,106,174}

\newcommand{\skipteilaufgabe}{\stepcounter{enumi}}
\newcommand{\teilaufgabe}[1][]{\ifthenelse{\equal{#1}{\empty}}{\item}{\ifthenelse{\equal{#1}{skip}}{\skipteilaufgabe}{\item[\textsf{#1}]}}}

\newcommand{\skipsubexercise}{\stepcounter{enumi}}
\newcommand{\subexercise}[1][]{\ifthenelse{\equal{#1}{\empty}}{\item}{\ifthenelse{\equal{#1}{skip}}{\skipsubexercise}{\item[\textsf{#1}]}}}

\newcommand{\stern}{${}^{\pmb{\ast}}$}
\newcommand{\phantomtext}[1][1.63]{~\vspace{-#1\baselineskip}}

\newcommand{\theteilaufgabe}{}

\DeclareRobustCommand\translate[1]{\mytranslate#1\relax}
\long\def\mytranslate#1 >> #2\relax{\ifenglish #2\else #1\fi}

\ifhypertext
\ifpdfoutput{%
\RequirePackage[pdftex,colorlinks,linkcolor=black,urlcolor=HSMW-Blau,citecolor=black,breaklinks]{hyperref}
}{%
\RequirePackage[dvips,colorlinks,linkcolor=black,urlcolor=HSMW-Blau,citecolor=black,breaklinks]{hyperref}
}
\fi

\def\thmhead@plain#1#2#3{%
  \thmname{#1}\thmnumber{\@ifnotempty{#1}{ }\@upn{#2}}%
  \thmnote{{\the\thm@notefont {\normalfont #3}}}}
\let\thmhead\thmhead@plain
\def\swappedhead#1#2#3{%
  \thmnumber{#2.}%
  \thmname{\@ifnotempty{#2}{~}#1}%
  \thmnote{{\the\thm@notefont {\normalfont #3}}}}

\ifenglish
\RequirePackage[english]{babel}
\selectlanguage{english}
\else
\RequirePackage[ngerman]{babel}
\selectlanguage{ngerman}
\fi

\providecommand{\exercisename}{Aufgabe}
\providecommand{\solutionname}{L\"osung}
\providecommand{\extrasheet}{Zusatzblatt}
\providecommand{\pleasecheck}{~(bitte ankreuzen)}
\providecommand{\solutionsname}{L\"osungen}
\ifhintsinsitu
\providecommand{\hintname}{Hinweis}
\else
\providecommand{\hintname}{L\"osungshinweis}
\fi
\providecommand{\hintsname}{L\"osungshinweise}
\providecommand{\exercisesandsolutionsname}{Aufgaben und L\"osungen}
\providecommand{\exercisesandhintsname}{Aufgaben und L\"osungshinweise}
\providecommand{\toname}{zu}
\addto\captionsenglish{\renewcommand{\exercisename}{Exercise}}
\addto\captionsenglish{\renewcommand{\solutionname}{Solution}}
\addto\captionsenglish{\renewcommand{\solutionsname}{Solutions}}
\addto\captionsenglish{\renewcommand{\extrasheet}{extra sheet}}
\addto\captionsenglish{\renewcommand{\pleasecheck}{}}
\addto\captionsenglish{\renewcommand{\hintname}{Hint}}
\addto\captionsenglish{\renewcommand{\hintsname}{Hints}}
\addto\captionsenglish{\renewcommand{\exercisesandsolutionsname}{Exercises and Solutions}}
\addto\captionsenglish{\renewcommand{\exercisesandhintsname}{Exercises and Hints}}
\addto\captionsenglish{\renewcommand{\toname}{to}}
\addto\captionsenglish{\renewcommand{\bibname}{References}}
\addto\captionsngerman{\renewcommand{\bibname}{Literaturhinweise}}

\newcommand{\sepline}{%
\ifblatt
\ifsolutions
\ifseplines
\vspace{-1mm}\rule{\linewidth}{0.1pt}\vspace{-5mm}
\fi
\fi
\fi
}

\ifhints
\ifhintsinsitu
\newenvironment{loesungshinweis}{\par
  \pushQED{\qed}%
  \normalfont \topsep6\p@\@plus6\p@\relax
  \trivlist
  \item[\hskip\labelsep
        \itshape
    \hintname\@addpunct{:}]\ignorespaces
}{}
\newenvironment{loesungshinweis*}{\par}{}
\else
\newwrite\hi@file
\immediate\openout\hi@file=\jobname.hts
\newcommand*{\loesungshinweis}{\@bsphack
  \let\do\@makeother\dospecials
  \catcode`\^^M\active
  \def\verbatim@processline{%
    \immediate\write\hi@file{\the\verbatim@line}}%
  \immediate\write\hi@file{%
    \string\begin{ex@hint}{\theaufgabe}{\theteilaufgabe}}%
  \verbatim@start}
\newcommand*{\sloesungshinweis}{\@bsphack
  \let\do\@makeother\dospecials
  \catcode`\^^M\active
  \def\verbatim@processline{%
    \immediate\write\hi@file{\the\verbatim@line}}%
  \immediate\write\hi@file{%
    \string\begin{ex@shint}{\theaufgabe}}%
  \verbatim@start}
\def\endloesungshinweis{%
  \immediate\write\hi@file{%
     \string\par\string\end{ex@hint}}\@esphack}   
\def\endsloesungshinweis{%
  \immediate\write\hi@file{%
     \string\par\string\end{ex@shint}}\@esphack}   
\newenvironment{ex@hint}[2]{\paragraph{#1.}\textsf{#2}}{}
\newenvironment{ex@shint}[1]{\par}{}
\newcommand*{\includehints}{%
\immediate\closeout\hi@file
\InputIfFileExists{\jobname.hts}{}{}
}
\newcommand*{\hintshead}{\begin{center}\Large\bfseries\hrulefill{} \textsf{\hintsname} \hrulefill\end{center}}
\AtEndDocument{%
\ifblatt
\setcounter{footnote}{0}
\clearpage
~\\[-3.1cm]
\hintshead
\bigskip\bigskip
\ifhintsincolumns
\begin{multicols}{2}
\includehints
\end{multicols}
\else
\includehints
\fi
\fi
}
\fi
\fi

\ifsolutions
\ifsolutionsinsitu
\newenvironment{loesung}{\par
  \pushQED{\qed}%
  \normalfont \topsep6\p@\@plus6\p@\relax
  \trivlist
  \item[\hskip\labelsep
        \itshape
    \solutionname\@addpunct{:}]\ignorespaces
}{}
\newenvironment{loesung*}{\par}{}
\else
\newwrite\ex@file
\immediate\openout\ex@file=\jobname.sol
\newcommand*{\loesung}{\@bsphack
  \let\do\@makeother\dospecials
  \catcode`\^^M\active
  \def\verbatim@processline{%
    \immediate\write\ex@file{\the\verbatim@line}}%
  \immediate\write\ex@file{%
    \string\begin{ex@solution}{\theaufgabe}{\theteilaufgabe}}%
  \verbatim@start}
\newcommand*{\sloesung}{\@bsphack
  \let\do\@makeother\dospecials
  \catcode`\^^M\active
  \def\verbatim@processline{%
    \immediate\write\ex@file{\the\verbatim@line}}%
  \immediate\write\ex@file{%
    \string\begin{ex@ssolution}{\theaufgabe}}%
  \verbatim@start}
\def\endloesung{%
  \immediate\write\ex@file{%
     \string\par\string\end{ex@solution}}\@esphack}
\def\endsloesung{%
  \immediate\write\ex@file{%
     \string\par\string\end{ex@ssolution}}\@esphack}
\newenvironment{ex@solution}[2]{\paragraph{#1.}\textsf{#2}}{}
\newenvironment{ex@ssolution}[1]{\par}{}
\newcommand*{\includesolutions}{%
\immediate\closeout\ex@file
\InputIfFileExists{\jobname.sol}{}{}
}
\AtEndDocument{%
\ifblatt
\clearpage
\setcounter{footnote}{0}
\newcommand*{\solutionshead}{\begin{center}\Large\bfseries\hrulefill{} \textsf{\solutionsname} \hrulefill\end{center}}
~\\[-3.1cm]
\solutionshead
\bigskip\bigskip
\ifsolutionsincolumns
\begin{multicols}{2}
\includesolutions
\end{multicols}
\else
\includesolutions
\fi
\fi
}
\fi
\fi

\ifsolutions
\ifsolutionsinsitu
\else
\newenvironment{loesung*}{\sloesung}{\endsloesung}
\fi
\fi

\ifhints
\ifhintsinsitu
\else
\newenvironment{loesungshinweis*}{\sloesungshinweis}{\endsloesungshinweis}
\fi
\fi

\ifnosolutions
\excludecomment{loesung}
\excludecomment{loesung*}
\fi

\ifnohints
\excludecomment{loesungshinweis}
\excludecomment{loesungshinweis*}
\fi

\def\@Fakultaet{~}
\def\@Dozent{~}
\def\@Lehreinheit{}
\def\@Semester{}
\def\@Nummer{}
\def\@Thema{}
\def\@SemesterKurz{}

\newcommand{\Fakultaet}[1]{\ifthenelse{\equal{#1}{\empty}}{}{\def\@Fakultaet{#1}}}
\newcommand{\Dozent}[1]{\author{\@Fakultaet, #1}\ifthenelse{\equal{#1}{\empty}}{}{\def\@Dozent{#1}}}
\newcommand{\Lehreinheit}[1]{\title{#1}\def\@Lehreinheit{#1}}
\newcommand{\Thema}[1]{\ifthenelse{\equal{#1}{\empty}}{}{\def\@Thema{#1}}}
\newcommand{\SemesterKurz}[1]{\def\@SemesterKurz{#1}}
\newcommand{\Semester}[2][]{\def\@Semester{#2}\ifthenelse{\equal{#1}{\empty}}{\date{#2}\SemesterKurz{, #2}}{\date{#1}\SemesterKurz{, #1}}}
\newcommand{\Nummer}[1]{\def\@Nummer{#1}}

\Nummer{}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\AtBeginDocument{
% Alles was hier kommt wird nach der Praeambel ausgefuehrt.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\ifthenelse{\isundefined{\@mwthemeloaded}}{\blatttrue\presentationfalse\nopresentationtrue}{\blattfalse\presentationtrue\nopresentationfalse}

\newenvironment{teilaufgaben}[1][a)]{%
~\parskip0ex\begin{enumerate}[\color{taskcolor}\sffamily#1]
\renewcommand{\theteilaufgabe}{\,\theenumi)\,}
}{%
\renewcommand{\theteilaufgabe}{}
\end{enumerate}}
\newenvironment{teilaufgaben*}[1][$\bullet$]{~\parskip0ex\renewcommand{\labelitemi}{#1}\begin{itemize}}{\end{itemize}}

\ifsolutions
\ifthenelse{\equal{\@Thema}{\empty}}{\def\@Thema{\exercisesandsolutionsname}}{}
\fi

\ifblatt
\else

\ifhints
\ifthenelse{\equal{\@Thema}{\empty}}{\def\@Thema{\exercisesandhintsname}}{}
\fi

\fi

\ifpresentation
\def\mw@autor{\@Dozent}
\def\mw@titel{\@Lehreinheit}
\def\mw@subtitle{\@Nummer\par\@Thema}
\AtBeginDocument{\maketitle\renewcommand{\maketitle}{}}
\fi

\ifblatt
%
% Einstellungen fuer gedruckte Aufgabenblaetter
%

\renewcommand*\bib@heading{\bigskip \textsf{\bfseries \bibname}}

\RequirePackage[paper=a4paper,top=35mm,bottom=35mm,left=24mm,right=26mm,footnotesep=\baselineskip]{geometry}
\RequirePackage{eso-pic}
\RequirePackage{graphicx}
\RequirePackage{lastpage}

\let\@ldthebibliography\thebibliography
\renewcommand{\thebibliography}[1]{%
\let\bibnameold\bibname
\renewcommand{\bibname}{\normalsize \bibnameold\\[-0.8\baselineskip]}
\@ldthebibliography{#1}
}

\ifsansserif
\RequirePackage{sansmath}
\renewcommand{\familydefault}{\sfdefault}
\sansmath
\fi

\renewenvironment{samepage}{}{}
\newenvironment{samepage*}{}{}

\ifthenelse{\pageref{LastPage}=1}{\thispagestyle{empty}}{}

\ifdraft
\else
\ifpdfoutput{%
\AddToShipoutPicture*{%
\put(411,743){\includegraphics[width=49.5mm, viewport = 5 -18 280 131, clip]{HSMW-Logo.pdf}}}
}{%
\AddToShipoutPicture*{%
\put(412,755){\includegraphics[width=48.75mm]{HSMW-Logo.ps}}}}
\fi

\AddToShipoutPicture*{%
\IfFileExists{LY1futura.fd}{%
\fontencoding{LY1}
\renewcommand{\sfdefault}{futura}}{}
\put(68.3,755){\parbox[b]{9cm}{\sffamily \@Fakultaet \\ \@Dozent \\ \@Semester \\ \@Nummer}}
}

\colorlet{taskcolor}{black}
\newtheoremstyle{aufgabe}{2\baselineskip}{}{\upshape}{}{\bfseries\sffamily}{\vspace{0.62\baselineskip}}{\newline}{}
\theoremstyle{aufgabe}
\newtheorem{aufgabe}{\exercisename}
\newtheorem*{aufgabe*}{\exercisename}

\AtBeginDocument{%
~\\
\begin{center}
\LARGE\bfseries \textsf{\@Lehreinheit}
\ifthenelse{\equal{\@Thema}{\empty}}{}{\sffamily\Large\par\@Thema}
\end{center}
\medskip}

\else
%
% Einstellungen fuer Beamer und Folien
%

\hypertexttrue
\nohypertextfalse

\renewenvironment{samepage}{%
\ifsolutions
\renewenvironment{loesung}{\begin{loesung*}}{\end{loesung*}}
\fi
\ifhints
\renewenvironment{loesungshinweis}{\begin{loesunghinweis*}}{\end{loesungshinweis*}}
\fi
\ifthenelse{\equal{\modus}{print}}{
\renewcommand{\clearpage}{\vspace{2.3cm}}
}{\renewcommand{\clearpage}{\bigskip\bigskip}}
}{}

\newenvironment{samepage*}{%
\ifnosolutions
\ifnohints
\renewcommand{\clearpage}{\bigskip\bigskip\medskip}
\ifthenelse{\equal{\modus}{print}}{
\renewcommand{\clearpage}{\vspace{2.3cm}}
}{\renewcommand{\clearpage}{\bigskip\bigskip}}
\fi
\fi
}{}

\renewcommand{\thepage}{\@Nummer}
\colorlet{taskcolor}{black!85}
\newcounter{aufgabe}
\setcounter{aufgabe}{0}
\ifthenelse{\equal{\modus}{print}}{
\renewcommand*{\chapterheadstartvskip}{\vspace*{-\topskip}\vspace*{-1.95cm}}
}{%
\renewcommand*{\chapterheadstartvskip}{\vspace*{-\topskip}\vspace*{-0.45cm}}
}
\renewcommand*{\chapterheadendvskip}{\vspace{4mm}}
\addtokomafont{disposition}{\color{Strukturfarbe}}
\ifsolutions
\renewenvironment{loesung}{\chapter*{\solutionname{} \toname{} \exercisename{} \theaufgabe}\Large}{\par\normalsize}
\renewenvironment{loesung*}{}{\par\normalsize}
\fi
\ifhints
\renewenvironment{loesungshinweis}{\chapter*{\hintname{} \toname{} \exercisename{} \theaufgabe}\Large}{\par\normalsize}
\renewenvironment{loesungshinweis*}{}{\par\normalsize}
\fi
\newenvironment{aufgabe}[1][]{\stepcounter{aufgabe}\chapter*{\exercisename{} \theaufgabe\ifthenelse{\equal{#1}{\empty}}{}{#1}}\Large}{\par\normalsize}
\newenvironment{aufgabe*}[1][]{\chapter*{\exercisename{}\ifthenelse{\equal{#1}{\empty}}{}{#1}}\Large}{\par\normalsize}
\fi

\ifblatt\else
\@ifpackageloaded{multicol}{\renewenvironment{multicols}[1]{}{}}{}
\renewcommand{\footnote}[1][]{}
\fi

\ifhypertext
\hypersetup
{
pdftitle = {\@Lehreinheit},
pdfsubject = {\@Nummer{}\@SemesterKurz},
pdfauthor = {\@Dozent},
pdfkeywords = {\@Thema},
pdfproducer = {HSMW-Worksheet class}
}
\fi

} % \AtBeginDocument

\renewcommand{\maketitle}{}
\renewcommand{\theequation}{\arabic{equation}}

\newenvironment{exercise}[1][]{\begin{aufgabe}[#1]}{\end{aufgabe}}
\newenvironment{exercise*}[1][]{\begin{aufgabe*}[#1]}{\end{aufgabe*}}
\newenvironment{solution}{\begin{loesung}}{\end{loesung}}
\newenvironment{solution*}{\begin{loesung*}}{\end{loesung*}}
\newenvironment{hint}{\begin{loesungshinweis}}{\end{loesungshinweis}}
\newenvironment{hint*}{\begin{loesungshinweis*}}{\end{loesungshinweis*}}
\newenvironment{subexercises}[1][a)]{\begin{teilaufgaben}[#1]}{\end{teilaufgaben}}
\newenvironment{subexercises*}[1][a)]{\begin{teilaufgaben*}[#1]}{\end{teilaufgaben}}

\renewcommand{\thefigure}{\@arabic\c@figure}

\newcommand{\lloesungskasten}[2][.95\linewidth]{\fbox{\rotatebox{-250}{\scalebox{1.5}{\textcolor{black}{\ding{"30}}}} \color{white}\rule[-#2]{#1}{#2}}}
\newcommand{\Zusatzblatt}{\hfill \ding{"72} \extrasheet\pleasecheck}
\newcommand{\loesungskasten}[2][\solutionname:]{\ifblatt\par\emph{#1}~\Zusatzblatt\\[3mm]\lloesungskasten{#2}\fi}

\newcommand{\eins}{%
\begin{tabular}{|l|*{2}{c|}} \hline
Aufgabe & ~1~ & ~$\Sigma$~ \\ \hline
Punkte & & \\ \hline
\end{tabular}
}
\newcommand{\zwei}{%
\begin{tabular}{|l|*{3}{c|}} \hline
Aufgabe & ~1~ & ~2~ & ~$\Sigma$~ \\ \hline
Punkte & & & \\ \hline
\end{tabular}
}
\newcommand{\drei}{%
\begin{tabular}{|l|*{4}{c|}} \hline
Aufgabe & ~1~ & ~2~ & ~3~ & ~$\Sigma$~ \\ \hline
Punkte & & & & \\ \hline
\end{tabular}
}
\newcommand{\vier}{%
\begin{tabular}{|l|*{5}{c|}} \hline
Aufgabe & ~1~ & ~2~ & ~3~ & ~4~ & ~$\Sigma$~ \\ \hline
Punkte & & & & &      \\ \hline
\end{tabular}
}
\newcommand{\fuenf}{%
\begin{tabular}{|l|*{6}{c|}} \hline
Aufgabe & ~1~ & ~2~ & ~3~ & ~4~ & ~5~ & ~$\Sigma$~ \\ \hline
Punkte & & & & & &      \\ \hline
\end{tabular}
}
\newcommand{\sechs}{%
\begin{tabular}{|l|*{7}{c|}} \hline
Aufgabe & ~1~ & ~2~ & ~3~ & ~4~ & ~5~ & ~6~ & ~$\Sigma$~ \\ \hline
Punkte & & & & & & &     \\ \hline
\end{tabular}
}
\newcommand{\sieben}{%
\begin{tabular}{|l|*{8}{c|}} \hline
Aufgabe & ~1~ & ~2~ & ~3~ & ~4~ & ~5~ & ~6~ & ~7~ & ~$\Sigma$~ \\ \hline
Punkte & & & & & & & &    \\ \hline
\end{tabular}
}
\newcommand{\acht}{%
\begin{tabular}{|l|*{9}{c|}} \hline
Aufgabe & ~1~ & ~2~ & ~3~ & ~4~ & ~5~ & ~6~ & ~7~ &  ~8~ & ~$\Sigma$~ \\ \hline
Punkte & & & & & & & & &     \\ \hline
\end{tabular}
}
\newcommand{\neun}{%
\begin{tabular}{|l|*{10}{c|}} \hline
Aufgabe & ~1~ & ~2~ & ~3~ & ~4~ & ~5~ & ~6~ & ~7~ &  ~8~ & ~9~ & ~$\Sigma$~ \\ \hline
Punkte & & & & & & & & & &   \\ \hline
\end{tabular}
}
\newcommand{\zehn}{%
\begin{tabular}{|l|*{11}{c|}} \hline
Aufgabe & ~1~ & ~2~ & ~3~ & ~4~ & ~5~ & ~6~ & ~7~ &  ~8~ & ~9~ & ~10~ & ~$\Sigma$~ \\ \hline
Punkte & & & & & & & & & & &     \\ \hline
\end{tabular}
}

\newcommand{\AnzAufgaben}[1]{
\ifnum #1=1 \eins \else
\ifnum #1=2 \zwei \else
\ifnum #1=3 \drei \else
\ifnum #1=4 \vier \else
\ifnum #1=5 \fuenf \else
\ifnum #1=6 \sechs \else
\ifnum #1=7 \sieben \else
\ifnum #1=8 \acht \else
\ifnum #1=9 \neun \else
\ifnum #1=10 \zehn \else
\acht
\fi\fi\fi\fi\fi\fi\fi\fi\fi\fi
}

\providecommand{\Aufgaben}[1]{%
\AtBeginDocument{%
\ifblatt
\begin{center}
\large
\begin{tabular}{|l|l|} \hline
Name: & \rule{5cm}{0cm}\\  \hline
Vorname: & \\   \hline
Seminargruppe: & \\ \hline
\end{tabular}
\par\medskip
\ding{"72}~~2. Wiederholungspr\"ufung (Angabe freiwillig)
\par\medskip
\AnzAufgaben{#1}
\par\medskip
\begin{tabular}{|l|l|}  \hline
Note: & \rule{1cm}{0mm}\\ \hline
\end{tabular}
\end{center}
\bigskip
\fi
}}

\newcommand{\wf}[1]{%
\ifblatt
\item \normalfont \ding{"72} wahr \,\ding{"72} falsch\quad #1
\item[] Begr\"undung: \hrulefill
\item[] \hrulefill
\else 
\item #1
\fi
}
\newenvironment{wahrfalsch}[1][a)]{\begin{teilaufgaben}[#1]}{\end{teilaufgaben}}

\endinput
