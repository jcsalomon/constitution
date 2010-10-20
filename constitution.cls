% !TeX root = Constitution.tex
% !TEX encoding = UTF-8
% 
% This is file ‘constitution.cls’, formatting for the US Constitution.
% 
% Author: Joel C. Salomon <joelcsalomon@gmail.com>
% Copyright © 2010 Joel C. Salomon
% 
% This work may be distributed and/or modified under the conditions of
% the LaTeX Project Public License, either version 1.3 of this license
% or (at your option) any later version.
% The latest version of the license is in
% <http://www.latex-project.org/lppl.txt> and version 1.3 or later is
% part of all distributions of LaTeX version 2003/06/01 or later.
% The Constitution itself is not under copyright.

\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{constitution} [2010/08/05 v0.1 Formatting for Constitution.tex]

\LoadClass[article]{memoir}

\RequirePackage{ifxetex,ifluatex}
\newif\ifmoderntex
\ifxetex
	\RequirePackage{fontspec, xunicode, xltxtra}
	\moderntextrue
\fi
\ifluatex
	\RequirePackage{fontspec}
	\moderntextrue
\fi

\ifmoderntex
	\setmainfont[Ligatures=TeX,Numbers={OldStyle,Proportional}]{Constantia}
	\newfontface\fraktur{eufm10}
\else
	\RequirePackage[utf8]{inputenc}
	\def\fraktur{}
\fi


\RequirePackage{hyperref}

\renewcommand{\maketitle}{%
	{\begin{center}\huge\fraktur \thetitle \par\end{center}}
}

\makechapterstyle{constitution}{%
	\def\chapnamefont{\normalfont\huge\bfseries}
	\def\chapnumfont{\normalfont\huge\bfseries\scshape}
	\def\chapterheadstart{\qquad}
	\def\printchaptername{\chapnamefont Article}
	\def\chapternamenum{\space}
	\def\printchapternum{\chapnumfont \thechapter}
	\def\afterchapternum{}
	\def\printchapternonum{}
	\def\printchaptertitle##1{}
	\def\afterchaptertitle{\par\nobreak}
}

\chapterstyle{constitution}

\renewcommand\cftchaptername{Article~}
\renewcommand\thechapter{\roman{chapter}}

\renewcommand*{\cftchapterpresnum}{\scshape}
\renewcommand*{\cftchapteraftersnum}{}
\renewcommand*{\cftchapteraftersnumb}{}
\addtolength{\cftchapternumwidth}{1 em}


\renewcommand\cftsectionname{Section~}
\counterwithout{section}{chapter}
\renewcommand\thesection{\arabic{section}}

\setbeforesecskip{0.5 em}
\setaftersecskip{-\parindent}
\setsecheadstyle{\normalfont}
\setsecnumformat{Section \thesection.}

\let\oldsection\section
\renewcommand\section[1]{\oldsection[#1]{}}


\newcommand{\preamble}{%
	\newpage
	\chapter*{Preamble}\phantomsection
	\addcontentsline{toc}{chapter}{Preamble}
}
\newcommand*{\wtp}[1]{\textbf{\Huge\fraktur#1}}
\newcommand*{\otus}[1]{{\Large#1}}

