
\LoadClass{article}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2017/08/15 AK Resume Class]

\RequirePackage[margin=0.75in]{geometry}
\RequirePackage{sectsty}
\RequirePackage{setspace}
\RequirePackage{enumitem}
\RequirePackage{titlesec}

\pagenumbering{gobble}
\allsectionsfont{\normalsize}
\setlength{\parindent}{0pt}
\setlist{noitemsep, topsep=0pt, partopsep=0pt}

\titlespacing\section{0pt}{0pt}{3pt}
\titlespacing\subsection{0pt}{0pt}{0pt}
\titlespacing\subsubsection{0pt}{0pt}{0pt}

%\newcommand{\topname}[7]{
%    {\center {\Large\textbf{#1}} \\ #2 \hfill #4 \hfill #6 \\ #3 \hfill #5 \hfill #7}
%}
\newcommand{\topname}[3]{
    {\center {\Large\textbf{#1}} \\ #2 $|$ #3 \\}
}

\titleformat{\section}
    {\vspace{2pt}\titlerule\vspace{1pt}\scshape\raggedright}
    {}{0em}
    {}
    [\titlerule]

\titleformat{\subsection}
    {\raggedright}
    {}{0em}
    {}

\newcommand{\basesubsection}[1]{
    \subsection{\textbf{#1}}
}

\newcommand{\datedsubsection}[2]{
    \subsection{#1 \hfill #2}
}

\newcommand{\datedbfsubsection}[2]{
    \subsection{\textbf{#1} \hfill #2}
}

\newcommand{\worksubsection}[3]{
    \datedsubsection{\textbf{#1}: \textit{#2}}{#3}
}

\newcommand{\projectsubsection}[2]{
    \datedsubsection{\textbf{#1}}{#2}
}

\titleformat{\subsubsection}
    {\raggedright}
    {}{0em}
    {}

\newcommand{\datedsubsubsection}[2]{
    \subsubsection{#1 \hfill \textit{#2}}
}

\newcommand{\dateditsubsubsection}[2]{
    \subsubsection{\textit{#1} \hfill \textit{#2}}
}

\newcommand{\worksubsubsection}[3]{
    \datedsubsubsection{\textit{#1}: #2}{#3}
}

\newcommand{\listitem}[2]{
    \item \textit{#1:} {#2}
}
