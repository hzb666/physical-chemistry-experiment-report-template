\ProvidesClass{pkureport}
\LoadClass[UTF8,12pt,a4paper,twoside]{ctexart}
\RequirePackage{color}
\RequirePackage{microtype}
\RequirePackage{hycolor}
\RequirePackage{amsmath}
\RequirePackage{mhchem}
\RequirePackage{ifthen}
\RequirePackage{extarrows}
\RequirePackage{ntheorem}
\RequirePackage{pgf,tikz,pgfplots}
\pgfplotsset{compat=1.15}
\RequirePackage{mathrsfs}
\usetikzlibrary{arrows}
\RequirePackage{booktabs}
\RequirePackage{geometry}
\RequirePackage{fancyhdr}
\RequirePackage[titletoc,title]{appendix}
\RequirePackage{caption}
\RequirePackage[lite,subscriptcorrection ,slantedGreek ,nofontinfo]{mtpro2}
\RequirePackage{fontspec}
\setmainfont{Times New Roman}
\RequirePackage{setspace}
\RequirePackage{epstopdf}
\RequirePackage{CJKulem}
\RequirePackage[perpage]{footmisc}
\RequirePackage{ulem}
\RequirePackage{fbox}
\RequirePackage{graphicx}
\RequirePackage[breaklinks,colorlinks,linkcolor=black,citecolor=black,urlcolor=black,hyperfootnotes=true]{hyperref}
\RequirePackage{float}
\renewcommand{\labelenumi}{\theenumi)}
\renewcommand{\labelenumii}{\roman{enumii}.}
\RequirePackage{chngcntr}
\newfontfamily{\FA}{[FontAwesome.otf]}
\graphicspath{{graphs/}{../graphs/}}
%\counterwithin{figure}{section}
%\counterwithin{table}{section}
\RequirePackage{enumitem}
%\theoremseparator{\ }
%\newtheorem{example}{\indent 例}  
%\newtheorem{theorem}{\indent 定理} 
%\newtheorem{definition}{\indent 定义}
%\newtheorem{axiom}{\indent 公理}
%\newtheorem{property}{\indent 性质}
%\newtheorem{proposition}{\indent 命题}
%\newtheorem{lemma}{\indent 引理}
%\newtheorem{corollary}{\indent 推论}
%\newtheorem{remark}{\indent 注解}
%\newtheorem{condition}{\indent 条件}
%\newtheorem{conclusion}{\indent 结论}
%\newtheorem{assumption}{\indent 假设}
%{
%\newtheorem*{proof}{\indent 证明：}}
\setCJKfamilyfont{kaiti}{楷体}
\newcommand{\kaiti}{\CJKfamily{kaiti}}
\newcommand{\upcite}[1]{\textsuperscript{\cite{#1}}}
\newcommand{\degreec}{\ensuremath{\,^\circ}C}
\newcommand{\bolang}{\,\textasciitilde\,}
\renewcommand{\eqref}[1]{式(\ref{#1})}
\newcommand{\figref}[1]{图\,\ref{#1}\,}
\newcommand{\tabref}[1]{表\,\ref{#1}\,}
\newcommand{\dd}{\mathrm{d}}
\newcommand{\dt}{\mathrm{~d} t}
\newcommand{\dx}{\mathrm{~d} x}
\newcommand{\dtheta}{\mathrm{~d} \theta}
\newcommand{\jg}{\\[1ex]}
\def\tableunderline[#1]#2{
	\uline{\hbox to #1{\hfil#2\hfil}}}
\newcommand\labdate[1]{\def\@labdate{#1}}
\newcommand\labtemperature[1]{\def\@labtemperature{#1}}
\newcommand\labpressure[1]{\def\@labpressure{#1}}
\newcommand\labpartner[1]{\def\@labpartner{#1}}
\newcommand\labtitle[1]{\def\@labtitle{#1}}
\newcommand\yourname[1]{\def\@yourname{#1}}
\newcommand\yourstuid[1]{\def\@yourstuid{#1}}
\DeclareCaptionLabelSeparator{enspace}{\enspace}
\captionsetup[figure]{labelsep=enspace}
\captionsetup[table]{labelsep=enspace}
\CTEXsetup[format={\large\heiti}]{section}
\CTEXsetup[format={\heiti}]{subsection}
\ctexset{
	section={
		beforeskip=16pt,
		afterskip=5pt,
		name = {,、\hspace*{-1.5ex}},
		number = \chinese{section}}, 
	subsection={
		beforeskip=12pt,
		afterskip=2pt, 
		name = {,. \hspace*{-1.1ex}},
		number = {\bfseries\arabic{subsection}},
		indent = 1ex},
	}
\setenumerate[1]{itemsep=0.8ex,partopsep=0pt,parsep=\parskip,topsep=5pt}
\setitemize[1]{itemsep=0.8ex,partopsep=0pt,parsep=\parskip,topsep=5pt}
\setdescription{itemsep=0.8ex,partopsep=0pt,parsep=\parskip,topsep=5pt}
\setlength{\parskip}{0.8ex}
\geometry{left=2.5cm,right=2.5cm,top=2.84cm,bottom=2.54cm}
\fancypagestyle{titlepage}{
   %\settototalheight{\headheight}{\maxof{\leftheadertitlepage}}
   \renewcommand{\headrulewidth}{0pt}
   \lhead{\kaiti{\@yourname}\quad{\@yourstuid}}
   \chead{}
   \rhead{\begin{picture}(0,0)
		\put(-91.8,-10){\includegraphics[width=0.2\linewidth]{graphs/logo}}
\end{picture}}
   \cfoot{\thepage}
   \rfoot{}
}

\pagenumbering{arabic}
\pagestyle{fancy}
\renewcommand{\headrulewidth}{0pt}
\fancyhead[OR]{
	\begin{picture}(0,0)
		\put(-91.8,-10){\includegraphics[width=0.2\linewidth]{graphs/logo}}
\end{picture}}
\fancyhead[EL]{
	\begin{picture}(0,0)
		\put(0,-10){\includegraphics[width=0.2\linewidth]{graphs/logo}}
\end{picture}}
\fancyhead[ER]{\kaiti{\@labtitle}}
\fancyhead[OL]{\kaiti{\@yourname}\quad{\@yourstuid}}
\fancyfoot[C]{\thepage}

\newcommand{\makeheader}{
\centerline{\Large \@labtitle}
\vspace*{1ex}
\begin{table}[!htbp]
\centering
 \addtolength{\leftskip} {-2cm}
    \addtolength{\rightskip}{-2cm}
\begin{tabular}{c}
		实验时间：\tableunderline[62pt]\@labdate\ 
		室温：\tableunderline[38pt]\@labtemperature\ 
		大气压： \tableunderline[65pt]\@labpressure\ 
		合作者： \tableunderline[90pt]\@labpartner
\end{tabular}
\end{table}
\thispagestyle{titlepage}
}
\makeatletter
\renewcommand\normalsize{%
 \abovedisplayskip 5\p@ \@plus2\p@ \@minus5\p@
 \abovedisplayshortskip \z@ \@plus3\p@
 \belowdisplayshortskip 4\p@ \@plus3\p@ \@minus3\p@
 \belowdisplayskip \abovedisplayskip
 \let\@listi\@listI}
\makeatother
\makeatletter
\def\UrlAlphabet{%
	\do\a\do\b\do\c\do\d\do\e\do\f\do\g\do\h\do\i\do\j%
	\do\k\do\l\do\m\do\n\do\o\do\p\do\q\do\r\do\s\do\t%
	\do\u\do\v\do\w\do\x\do\y\do\z\do\A\do\B\do\C\do\D%
	\do\E\do\F\do\G\do\H\do\I\do\J\do\K\do\L\do\M\do\N%
	\do\O\do\P\do\Q\do\R\do\S\do\T\do\U\do\V\do\W\do\X%
	\do\Y\do\Z}
\def\UrlDigits{\do\1\do\2\do\3\do\4\do\5\do\6\do\7\do\8\do\9\do\0}
\g@addto@macro{\UrlBreaks}{\UrlOrds}
\g@addto@macro{\UrlBreaks}{\UrlAlphabet}
\g@addto@macro{\UrlBreaks}{\UrlDigits}
\makeatother
%\newpage
%\pagestyle{fancy}
%\renewcommand{\headrulewidth}{0pt}
%\fancyhead[R]{
%	\begin{picture}(0,0)
%		\put(-81.5,-10){\includegraphics[width=0.2\linewidth]{graphs/logo}}
%	\end{picture}}
%\fancyhead[LO,LE]{\textit{附录}~A\quad\textit{附录名称}}
%\fancyfoot[CO,CE]{\thepage}
%\begin{appendices}
%\renewcommand{\appendixname}{附录}
%\appendixtitleon
%\section{源码}
%
%Latex源码见\url{https://github.com/hzb666/ibrutinib}
%
%\end{appendices}
