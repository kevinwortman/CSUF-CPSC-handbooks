%
% Copyright (c) 2013 Michael Shafae
% All rights reserved.
%
% $Id: msnameplate.cls 5915 2015-08-31 06:31:06Z mshafae $
%
% A latex class for making an office hours sign.
%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{msofficehours}[2013/03/07 M.S. Office Hours Class]

\LoadClassWithOptions{article}

\RequirePackage{mscommon}
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
%\AtBeginDocument{\maketitle}
\AtBeginDocument{\pagestyle{empty}}
%\AtBeginDocument{\syllabusheader}
%\AtBeginDocument{\syllabusfooter}


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
\large{Office Hours \Courseterm\ \Courseyear}\\
%\large{\Courseterm\ \Courseyear}\\
\large{Michael Shafae}
  \end{center}%
  %\par
  %\vskip 1.5em
}
