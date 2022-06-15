# physical-chemistry-experiment-report-template
最小示例如下，请自行查询cls文件安装方法，请注意需要下载/graphs文件夹。

请使用texlive套件，并用xelatex编译。名为pkureport(mtpro2)的文件需要安装mtpro2宏包后使用，并且需要删除括号及内容。
```latex
\documentclass{pkureport}
\usepackage[backend=biber,style=gb7714-2015,citestyle=numeric-comp,maxnames=3,url=false,gbpub=false,gbnamefmt=uppercase]{biblatex}
\DeclareFieldFormat{journaltitle}{\itshape{#1}}
\DeclareFieldFormat[article,periodical]{volume}{\itshape{#1}}
\DeclareFieldFormat{date}{\textbf{#1}}
\addbibresource{document.bib}
\labtitle{实验名称}
\labdate{日期}
\labtemperature{温度}
\labpressure{气压}
\labpartner{合作者}
\yourname{姓名}
\yourstuid{学号}
\begin{document}
	\makeheader
	\section{实验目的}
	\begin{enumerate}
		\item XXX；
		
		\item XXX；
		
		\item XXX。
	\end{enumerate}
	\section{实验原理}
	\subsection{XXX}
	XXX。
	\subsection{一级反应}
	一级反应的动力学方程\upcite{shu}为：
	\begin{align}
		-\frac{dC}{dt}&=kC\label{1}
	\end{align}
	
	其中，$C$为$t$时刻的反应物浓度， $k$为速率常数。将\eqref{1}从$t_0$到$t$积分得：
	\begin{align}
		\ln{C} = -kt+\ln{C_0}\label{2}
	\end{align}
	其中，$C_0$为反应物初浓度。注意到，当$C=\frac{1}{2}C_0$时，反应物浓度变为初始值的一半，此时的时间$t_{\frac{1}{2}}$称为一级反应的半衰期。由\eqref{2}得：
	\begin{align}
		t_{\frac{1}{2}} = \frac{\ln{2}}{k}=\frac{0.693}{k}\label{3}
	\end{align}
	\eqref{3}即为一级反应的半衰期公式。
	
	\subsection{XXX}
	XXX。
	\clearpage
	\section{实验步骤}
	
	
	\printbibliography
\end{document}
```
![1](https://user-images.githubusercontent.com/29155232/168256837-c3b0e70a-59dc-4b61-bf15-bd974c06e5b5.png)
![2](https://user-images.githubusercontent.com/29155232/168256850-b433a69c-2471-42e7-bdac-20c2d32fdb7b.png)
