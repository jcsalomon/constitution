% !TeX root = constitution.tex
% !TEX encoding = UTF-8
%
% This is file ‘constitution.cls’, formatting for the US Constitution.
%
% Author: Joel C. Salomon <joelcsalomon@gmail.com>
% Copyright © 2010–’11 Joel C. Salomon
%
% This work may be distributed and/or modified under the conditions of
% the LaTeX Project Public License, either version 1.3 of this license
% or (at your option) any later version.  The latest version of the
% license is at <http://www.latex-project.org/lppl.txt> and version 1.3
% or later is part of all distributions of LaTeX version 2003/06/01 or later.
%
% The Constitution itself is not under copyright.

\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{constitution} [2011/09/14 v0.2 Formatting for Constitution.tex]

\LoadClass[article]{memoir}

\RequirePackage{ifxetex,ifluatex}
\newif\ifmoderntex
\ifxetex\moderntextrue\fi
\ifluatex\moderntextrue\fi

\ifmoderntex
	\RequirePackage{fontspec}
	\setmainfont[Ligatures=TeX,Numbers={OldStyle,Proportional}]{Constantia}
\else
	\RequirePackage[utf8]{inputenc}
\fi

\RequirePackage{hyperref}

\renewcommand{\maketitle}{\begin{center}\huge\thetitle\end{center}}

\makechapterstyle{constitution}{%
	\setlength{\beforechapskip}{1 em}
	\setlength{\midchapskip}{0 em}
	\setlength{\afterchapskip}{0 em}
	\def\printchaptername{\centering\chapnamefont Article}
	\def\chapnamefont{\bfseries}
	\def\chapnumfont{\chapnamefont\scshape}
	\def\chaptitlefont{\bfseries\upshape}
	\def\printchapternonum{\centering}
}

\chapterstyle{constitution}

\ifmoderntex	\renewcommand\thechapter{\roman{chapter}}
\else		\renewcommand\thechapter{\Roman{chapter}}
\fi

\renewcommand\cftchaptername{Article~}
\renewcommand*{\cftchapterpresnum}{\scshape}
\addtolength{\cftchapternumwidth}{0.5 em}

\renewcommand\cftsectionname{Section~}
\renewcommand\thesection{\arabic{section}}

\setbeforesecskip{0.5 em}
\setaftersecskip{-\parindent}
\setsecheadstyle{\scshape}
\setsecnumformat{Section \thesection.\space}
