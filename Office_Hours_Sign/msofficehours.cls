%
% Copyright (c) 2013 Michael Shafae
% All rights reserved.
%
% $Id: msofficehours.cls 4120 2013-03-08 02:28:46Z mshafae $
%
% A latex class for making an office hours sign.
%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{msofficehours}[2013/03/07 M.S. Office Hours Class]

\LoadClassWithOptions{article}

%\RequirePackage{xfrac}
\RequirePackage{setspace}
%\RequirePackage{listing}
%\RequirePackage{listings}
%\RequirePackage{multirow}
\RequirePackage[xetex]{hyperref}
%\RequirePackage{hyperxmp}
%\RequirePackage{amsmath}
%\RequirePackage{fancyhdr}


\AtBeginDocument{\singlespacing}
\AtBeginDocument{\maketitle}
\AtBeginDocument{\pagestyle{empty}}
%\AtBeginDocument{\syllabusheader}
%\AtBeginDocument{\syllabusfooter}

\newcommand{\instructor}[1]{\newcommand\Instructor{#1}}
\newcommand{\instructorofficehours}[1]{\newcommand\Instructorofficehours{\begin{tabular}{lc}#1\end{tabular}}}
\newcommand{\instructorofficelocation}[1]{\newcommand\Instructorofficelocation{\textsc{#1}}}
\newcommand{\instructorphone}[1]{\newcommand\Instructorphone{#1}}
\newcommand{\instructoremail}[1]{\newcommand\Instructoremail{\guillemotleft #1\guillemotright}}
\newcommand{\courseyear}[1]{\newcommand\Courseyear{#1}}
\newcommand{\courseterm}[1]{\newcommand\Courseterm{#1}}

\renewcommand\maketitle{\par
  \begingroup
    \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
    \def\@makefnmark{\rlap{\@textsuperscript{\normalfont\@thefnmark}}}%
    \long\def\@makefntext##1{\parindent 1em\noindent
            \hb@xt@1.8em{%
                \hss\@textsuperscript{\normalfont\@thefnmark}}##1}%
      \newpage
      \global\@topnum\z@   % Prevents figures from going at top of page.
      \@maketitle
    %\thispagestyle{plain}\@thanks
  \endgroup
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
}
\def\@maketitle{%
  \newpage
  %\null
  %\vskip 2em%
  \begin{center}%
  \let \footnote \thanks
\huge{Office Hours \Courseterm\ \Courseyear}\\
%\large{\Courseterm\ \Courseyear}\\
\huge{\Instructor}
  \end{center}%
  %\par
  %\vskip 1.5em
}
