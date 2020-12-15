\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cvlayout}[2018/02/12 CV Layout]
\LoadClass{article}
\RequirePackage{titlesec}
\RequirePackage{titling}
\RequirePackage[hmargin=0.8in, vmargin=1in]{geometry} %set margin vmargin/hmargin

\newcommand*\ruleline[1]{\par\noindent\raisebox{.8ex}
{\makebox[\linewidth]{\hrulefill\hspace{1ex}\raisebox{-.8ex}
{\large\scshape #1}\hspace{1ex}\hrulefill}}} %Horizontal Rule with text

\pagenumbering{gobble} %remove page numbering
\def\Plus{\texttt{+}} %Plus sign
\hyphenpenalty=10000

\titleformat{\section}
{\Large\scshape\raggedright}
{}
{0em}
{}[\titlerule]

\titleformat{\subsection}
{\large\bfseries}
{}
{0em}
{}

\newcommand*\makedate{
    \vspace{-10pt}
    \begin{flushright}
        Last update: \thedate
    \end{flushright}
    \vspace{-10pt}
}

\renewcommand{\maketitle}{
    \begin{center}
    {\Huge\scshape R\'esum\'e}
    \vspace{0pt}
    \end{center}

    \ruleline{\theauthor}
}

\newcommand*\edentry[4]{
    {\large\bfseries #1 \hfill {\normalsize #2}}
    \hfill

    \vspace{7pt}
    \begin{minipage}[t]{\textwidth}
        \textsc{\normalsize #3}
        \vspace{7pt}

        #4
    \end{minipage}
    \vspace{20pt}

}

\newcommand*\workentry[4]{
    {\large\bfseries #1 \hfill {\normalsize #3}}
    \hfill

    \vspace{2pt}
    \normalsize\textit #4
    \hfill\normalsize #2

    \vspace{15pt}


}

\newcommand*\skillentry[2]{
    \subsection{\small #1}
    \vspace{-4pt}
    \small #2 \hfill
    \vspace{3pt}

}