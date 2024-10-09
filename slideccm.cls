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
\ProvidesClass{slideccm}[2024/09/27 Template temático do CCM-USP para slides e apresentações]


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

% Outras opções
\PassOptionsToClass{aspectratio=32}{beamer}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}
\ProcessOptions\relax

% Carregar a classe base
\LoadClass{beamer}


% PACOTES
\RequirePackage{graphicx}
\RequirePackage{svg}
\RequirePackage[sfdefault, mono, proportional, scaled=1.11]{notomath}
\RequirePackage[T1]{fontenc}


% ESTILO
\usefonttheme[onlymath]{serif}

\setbeamercolor{frametitle}{fg=maincolor,bg=white}
\setbeamercolor{title}{fg=maincolor,bg=white}
\setbeamercolor{section}{fg=white,bg=maincolor}
\setbeamercolor{local structure}{fg=maincolor}
\setbeamercolor{footline}{fg=maincolor, bg=white}
\setbeamercolor{item projected}{fg=maincolor,bg=white}

\setbeamerfont{frametitle}{series=\bfseries}
\setbeamerfont{title}{series=\bfseries}
\setbeamerfont{section}{series=\bfseries,size=\huge}

\setbeamertemplate{itemize item}{\color{maincolor}$\bullet$}
\setbeamertemplate{itemize subitem}{\color{maincolor}\scriptsize{$\circ$}}


% LAYOUT
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

\titlegraphic{\includesvg[height=1.2\baselineskip]{img/logo-cm.svg}}


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