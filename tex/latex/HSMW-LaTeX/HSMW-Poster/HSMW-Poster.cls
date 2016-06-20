\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{HSMW-Poster}[2015/09/25 (Klaus Dohmen)]

\LoadClass{beamer}

\RequirePackage[fit]{truncate}
\RequirePackage{ifthen}
\RequirePackage[english,german,ngerman]{babel}
\selectlanguage{ngerman}

\newif\if@sizeanull
\newif\if@sizeaeins
\newif\if@sizeazwei
\newif\if@sizeadrei
\newif\if@sizeavier
\@sizeanulltrue
\@sizeaeinsfalse
\@sizeazweifalse
\@sizeadreifalse
\@sizeavierfalse

\DeclareOption{A0}{\@sizeanulltrue}
\DeclareOption{A1}{\@sizeanullfalse\@sizeaeinstrue}
\DeclareOption{A2}{\@sizeanullfalse\@sizeazweitrue}
\DeclareOption{A3}{\@sizeanullfalse\@sizeadreitrue}
\DeclareOption{A4}{\@sizeanullfalse\@sizeaviertrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamerthemeMittweida}}

\ProcessOptions*

\if@sizeanull
\RequirePackage[orientation=landscape,size=a0,scale=1.2]{beamerposter}
\fi

\if@sizeaeins
\RequirePackage[orientation=landscape,size=a1]{beamerposter}
\fi

\if@sizeazwei
\RequirePackage[orientation=landscape,size=a2,scale=0.8]{beamerposter}
\fi

\if@sizeadrei
\RequirePackage[orientation=landscape,size=a3,scale=0.6]{beamerposter}
\fi

\if@sizeavier
\RequirePackage[orientation=landscape,size=a4,scale=0.4]{beamerposter}
\fi

\RequirePackage{beamerthemeMittweida}

\setbeamersize{sidebar width right = 0cm}
\setbeamersize{sidebar width left = 0cm}

\newcommand{\conference}[2][]{\institute[#1]{#2}}

\pgfdeclareimage[width=\paperwidth,height=\paperheight]{Hintergrund}{Hochschule1__.png}
\ifmw@mb
\pgfdeclareimage[width=\paperwidth,height=\paperheight]{Hintergrund}{Fakultaet1__.png}
\fi
\ifmw@mni
\pgfdeclareimage[width=\paperwidth,height=\paperheight]{Hintergrund}{Fakultaet2__.png}
\fi
\ifmw@ww
\pgfdeclareimage[width=\paperwidth,height=\paperheight]{Hintergrund}{Fakultaet3__.png}
\fi
\ifmw@sa
\pgfdeclareimage[width=\paperwidth,height=\paperheight]{Hintergrund}{Fakultaet4__.png}
\fi
\ifmw@me
\pgfdeclareimage[width=\paperwidth,height=\paperheight]{Hintergrund}{Fakultaet5__.png}
\fi

\renewcommand{\institute}[2][]{\renewcommand{\insertshortinstitute}{\ifthenelse{\equal{#1}{\empty}}{\ifthenelse{\equal{#2}{\empty}}{}{#2}}{#1}}\ifthenelse{\equal{#2}{\empty}}{\renewcommand{\insertinstitute}{}}{\renewcommand{\insertinstitute}{#2}}}
\renewcommand{\maketitle}{}

\let\dateOLD\date
\renewcommand{\title}[2][]{\renewcommand{\insertshorttitle}{#2}}

%%%%%%%%%%%%%%% A0

\if@sizeanull

\setbeamersize{text margin left=80pt}\setbeamersize{text margin right=80pt}
\renewcommand{\date}[2][]{\dateOLD{\raisebox{22pt}{\hspace{5cm}\scalebox{4}{\begin{minipage}{5.5cm}\begin{center}\truncate{5.5cm}{\bfseries
          #2}\end{center}\end{minipage}}}}
\renewcommand{\insertframenumber}{}
}

\date{}

\AtBeginDocument{
  
\let\insertshorttitleOLD\insertshorttitle
\let\insertshortauthorOLD\insertshortauthor
\let\insertshortinstituteOLD\insertshortinstitute
\let\insertdateOLD\insertdate

\renewcommand{\insertshortauthor}{\raisebox{22pt}{\hspace{55pt}\scalebox{4}{\textbf{\insertshortauthorOLD}}}}
\renewcommand{\insertshorttitle}{\raisebox{53pt}{\hspace{55pt}\scalebox{4}{\textbf{\truncate{.1775\textwidth}{\insertshortinstituteOLD}}}}}
\renewcommand{\insertshortinstitute}{}

\newenvironment{poster}{%
\begin{frame}{}
\vspace{0pt plus -1fill}
\vspace{2cm}
{\setbeamercolor{block title}{fg=Strukturfarbe!10,bg=}
\begin{block}{\scalebox{3.5}{\parbox[c][3cm][c]{.21\textwidth}{\textbf{\insertshorttitleOLD}}}}
\vspace{-1cm}
\end{block}
}\vfill
}{\end{frame}}

}

\fi

%%%%%%%%%%%%%%% A1

\if@sizeaeins

\setbeamersize{text margin left=60pt}\setbeamersize{text margin right=60pt}
\renewcommand{\date}[2][]{\dateOLD{\raisebox{15pt}{\hspace{3cm}\scalebox{3.5}{\begin{minipage}{4.6cm}\begin{center}\truncate{4.6cm}{\bfseries
          #2}\end{center}\end{minipage}}}}
\renewcommand{\insertframenumber}{}
}

\date{}

\AtBeginDocument{
  
\let\insertshorttitleOLD\insertshorttitle
\let\insertshortauthorOLD\insertshortauthor
\let\insertshortinstituteOLD\insertshortinstitute
\let\insertdateOLD\insertdate

\renewcommand{\insertshortauthor}{\raisebox{15pt}{\hspace{40pt}\scalebox{3.5}{\textbf{\insertshortauthorOLD}}}}
\renewcommand{\insertshorttitle}{\raisebox{40pt}{\hspace{40pt}\scalebox{3.5}{\textbf{\truncate{.2\textwidth}{\insertshortinstituteOLD}}}}}
\renewcommand{\insertshortinstitute}{}

\newenvironment{poster}{%
\begin{frame}{}
\vspace{0pt plus -1fill}
\vspace{2cm}
{\setbeamercolor{block title}{fg=Strukturfarbe!10,bg=}
\begin{block}{\scalebox{3}{\parbox[c][2cm][c]{.24\textwidth}{\textbf{\insertshorttitleOLD}}}}
\vspace{-1cm}
\end{block}
}\vfill
}{\end{frame}}

}

\fi

%%%%%%%%%%%%%%% A2

\if@sizeazwei

\setbeamersize{text margin left=45pt}\setbeamersize{text margin right=45pt}
\renewcommand{\date}[2][]{\dateOLD{\raisebox{10pt}{\hspace{2.1cm}\scalebox{3}{\begin{minipage}{3.7cm}\begin{center}\truncate{3.7cm}{\bfseries #2}\end{center}\end{minipage}}}}
\renewcommand{\insertframenumber}{}
}

\date{}

\AtBeginDocument{
  
\let\insertshorttitleOLD\insertshorttitle
\let\insertshortauthorOLD\insertshortauthor
\let\insertshortinstituteOLD\insertshortinstitute
\let\insertdateOLD\insertdate

\renewcommand{\insertshortauthor}{\raisebox{10pt}{\hspace{23pt}\scalebox{3}{\textbf{\insertshortauthorOLD}}}}
\renewcommand{\insertshorttitle}{\raisebox{30pt}{\hspace{23pt}\scalebox{3}{\textbf{\truncate{.235\textwidth}{\insertshortinstituteOLD}}}}}
\renewcommand{\insertshortinstitute}{}

\newenvironment{poster}{%
\begin{frame}{}
\vspace{0pt plus -1fill}
\vspace{2cm}
{\setbeamercolor{block title}{fg=Strukturfarbe!10,bg=}
\begin{block}{\scalebox{2.7}{\parbox[c][1cm][c]{.27\textwidth}{\textbf{\insertshorttitleOLD}}}}
\vspace{-1cm}
\end{block}
}\vfill
}{\end{frame}}

}

\fi

%%%%%%%%%%%%%%% A3

\if@sizeadrei

\setbeamersize{text margin left=30pt}\setbeamersize{text margin right=30pt}
\renewcommand{\date}[2][]{\dateOLD{\raisebox{6pt}{\hspace{1.5cm}\scalebox{2.7}{\begin{minipage}{2.9cm}\begin{center}\truncate{2.9cm}{\bfseries
          #2}\end{center}\end{minipage}}}}
\renewcommand{\insertframenumber}{}
}

\date{}

\AtBeginDocument{
  
\let\insertshorttitleOLD\insertshorttitle
\let\insertshortauthorOLD\insertshortauthor
\let\insertshortinstituteOLD\insertshortinstitute
\let\insertdateOLD\insertdate

\renewcommand{\insertshortauthor}{\raisebox{6pt}{\hspace{15pt}\scalebox{2.7}{\textbf{\insertshortauthorOLD}}}}
\renewcommand{\insertshorttitle}{\raisebox{19pt}{\hspace{15pt}\scalebox{2.7}{\textbf{\truncate{.262\textwidth}{\insertshortinstituteOLD}}}}}
\renewcommand{\insertshortinstitute}{}

\newenvironment{poster}{%
\begin{frame}{}
\vspace{0pt plus -1fill}
\vspace{2cm}
{\setbeamercolor{block title}{fg=Strukturfarbe!10,bg=}
\begin{block}{\scalebox{2.5}{\parbox[c][0.3cm][c]{.29\textwidth}{\textbf{\insertshorttitleOLD}}}}
\vspace{-1cm}
\end{block}
}\vfill
}{\end{frame}}

}

\fi

%%%%%%%%%%%%%%% A4

\if@sizeavier

\setbeamersize{text margin left=22.5pt}\setbeamersize{text margin right=22.5pt}
\renewcommand{\date}[2][]{\dateOLD{\raisebox{6pt}{\hspace{1cm}\scalebox{2.8}{\begin{minipage}{1.9cm}\begin{center}\truncate{1.9cm}{\bfseries #2}\end{center}\end{minipage}}}}
\renewcommand{\insertframenumber}{}
}

\date{}

\AtBeginDocument{
  
\let\insertshorttitleOLD\insertshorttitle
\let\insertshortauthorOLD\insertshortauthor
\let\insertshortinstituteOLD\insertshortinstitute
\let\insertdateOLD\insertdate

\renewcommand{\insertshortauthor}{\raisebox{6pt}{\hspace{7pt}\scalebox{2.8}{\textbf{\insertshortauthorOLD}}}}
\renewcommand{\insertshorttitle}{\raisebox{14pt}{\hspace{7pt}\scalebox{2.8}{\textbf{\truncate{.25\textwidth}{\insertshortinstituteOLD}}}}}
\renewcommand{\insertshortinstitute}{}

\newenvironment{poster}{%
\begin{frame}{}
\vspace{0pt plus -1fill}
\vspace{0.35cm}
{\setbeamercolor{block title}{fg=Strukturfarbe!10,bg=}
\begin{block}{\scalebox{2.6}{\parbox[c][1cm][c]{.28\textwidth}{\textbf{\insertshorttitleOLD}}}}
\vspace{-1cm}
\end{block}
}\vfill
}{\end{frame}}

}

\fi



\endinput