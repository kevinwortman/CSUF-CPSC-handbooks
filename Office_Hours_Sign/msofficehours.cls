%
% Copyright (c) 2013 - 2016, Michael Shafae
% All rights reserved.
%
% Redistribution and use in source and binary forms, with or without
% modification, are permitted provided that the following conditions are met:
%
% 1. Redistributions of source code must retain the above copyright notice,
% this list of conditions and the following disclaimer.
%
% 2. Redistributions in binary form must reproduce the above copyright notice,
% this list of conditions and the following disclaimer in the documentation
% and/or other materials provided with the distribution.
%
% THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
% AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
% IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
% ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
% LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
% CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
% SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
% INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
% CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
% ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
% POSSIBILITY OF SUCH DAMAGE.
%
% originally from:
% $Id: msofficehours.cls 4120 2013-03-08 02:28:46Z mshafae $
%
% A latex class for making an office hours sign.
%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{msofficehours}[2013/03/07 M.S. Office Hours Class]

\LoadClassWithOptions{article}

\RequirePackage{setspace}

\AtBeginDocument{\singlespacing}
\AtBeginDocument{\maketitle}
\AtBeginDocument{\pagestyle{empty}}

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
  \begin{center}%
  \let \footnote \thanks
\huge{Office Hours \Courseterm\ \Courseyear}\\
\huge{\Instructor}
  \end{center}%
}
