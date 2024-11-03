%             .oooooo.     .oooooo.   ooo        ooooo 
%           d8P'  `Y8b   d8P'  `Y8b  `88.       .888' 
%         888          888           888b     d'888  
%        888          888           8 Y88. .P  888  
%       888          888           8  `888'   888  
%      `88b    ooo  `88b    ooo   8    Y     888  
%      `Y8bood8P'   `Y8bood8P'  o8o        o888o .usp
%
%
%     Arquivo LaTeX modelo slides e apresentações
%     Por: Alfredo Marin (T29)
%     Criado em: Setembro/2024


% IDENTIFICAÇÃO
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{slideccm}[2024/11/03 Template temático do CCM-USP para slides e apresentações]


% DECLARAÇÕES PRELIMINARES
\RequirePackage{xcolor} % Criar cores pré-definidas
\newcommand{\hili}[1]{{\bfseries \textcolor{maincolor}{#1}}}


% OPÇÕES
% Escolha de cor
\DeclareOption{black}{\definecolor{maincolor}{RGB}{0,0,0}}
\DeclareOption{red}{\definecolor{maincolor}{RGB}{234,53,70}}
\DeclareOption{orange}{\definecolor{maincolor}{RGB}{239,135,0}}
\DeclareOption{yellow}{\definecolor{maincolor}{RGB}{249,199,14}}
\DeclareOption{green}{\definecolor{maincolor}{RGB}{4,190,81}}
\DeclareOption{blue}{\definecolor{maincolor}{RGB}{0,120,215}}

% Escolha do logo %
\newif\iflogoccm
\newif\iflogofapesp
\logoccmfalse
\logofapespfalse
\DeclareOption{ccm}{\logoccmtrue\logofapespfalse}
\DeclareOption{fapesp}{\logofapesptrue\logoccmfalse}

% Outras opções
\PassOptionsToClass{aspectratio=32}{beamer}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}
\ProcessOptions\relax

% Carregar a classe base
\LoadClass{beamer}


% PACOTES
\RequirePackage{graphicx}
\RequirePackage{svg}
\RequirePackage[vvarbb, mono, pf, scale=1.11]{notomath}
\RequirePackage[T1]{fontenc}


% ESTILO
\usefonttheme[onlymath]{serif} % TODO: fix sans greek letters in math mode

\setbeamercolor{frametitle}{fg=maincolor,bg=white}
\setbeamercolor{title}{fg=maincolor,bg=white}
\setbeamercolor{section}{fg=white,bg=maincolor}
\setbeamercolor{local structure}{fg=maincolor}
\setbeamercolor{footline}{fg=maincolor, bg=white}
\setbeamercolor{item projected}{fg=maincolor,bg=white}
\setbeamercolor{default}{fg=black,bg=white}

\setbeamerfont{frametitle}{series=\bfseries}
\setbeamerfont{title}{series=\bfseries}
\setbeamerfont{section}{series=\bfseries,size=\huge}
\setbeamerfont{institute}{series=\normalfont}
\setbeamerfont{date}{series=\normalfont}

\setbeamertemplate{itemize item}{\color{maincolor}$\bullet$}
\setbeamertemplate{itemize subitem}{\color{maincolor}\scriptsize{$\circ$}}


% LAYOUT
\setbeamertemplate{title page}{
    \begin{center}
        \includesvg[height=1.4\baselineskip]{tpl/usp_logo.svg}
        \vfill
        \hrule height 1.pt
        \vspace{.5cm}
        \usebeamerfont{title}\usebeamercolor[fg]{title}\inserttitle \\
        \usebeamerfont{subtitle}\usebeamercolor[fg]{subtitle}\insertsubtitle \\
        \usebeamercolor[fg]{default}
        \vspace{.5cm}
        \hrule height 1.pt
        \vspace{.5cm}
        \usebeamerfont{author}\usebeamercolor[fg]{author}\insertauthor \\
        \smallskip
        \usebeamerfont{institute}\usebeamercolor[fg]{institute}\insertinstitute \\
        \smallskip
        \usebeamerfont{date}\usebeamercolor[fg]{date}\insertdate \\
        \vfill
        \iflogoccm
        \includesvg[height=1.4\baselineskip]{tpl/ccm_logo.svg}
        \fi
        \iflogofapesp
        \includesvg[height=1.4\baselineskip]{tpl/fapesp_logo.svg}
        \fi
    \end{center}
}

\AtBeginSection[]{
    \begin{frame}
    \vfill
    \centering
    \begin{beamercolorbox}[sep=4pt,center,rounded=true]{section}
        \usebeamerfont{section}\insertsectionhead\par
    \end{beamercolorbox}
    \vfill
    \end{frame}
}


% EXTRA
% Outros comandos
% setas %
\newcommand{\arrow}{\textcolor{maincolor}{$\boldsymbol{\rightarrow}$\ }}
\newcommand{\longarrow}{\textcolor{maincolor}{$\boldsymbol{\longrightarrow}$\ }}
\newcommand{\squigarrow}{\textcolor{maincolor}{$\boldsymbol{\rightsquigarrow}$\ }}

% observação %
\newcommand{\obs}[2][Obs]{{\footnotesize \hili{#1:} #2}}

% matemática %
\input{tpl/math_commands}