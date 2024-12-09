%             .oooooo.     .oooooo.   ooo        ooooo 
%           d8P'  `Y8b   d8P'  `Y8b  `88.       .888' 
%         888          888           888b     d'888  
%        888          888           8 Y88. .P  888  
%       888          888           8  `888'   888  
%      `88b    ooo  `88b    ooo   8    Y     888  
%      `Y8bood8P'   `Y8bood8P'  o8o        o888o .usp
%
%
%     Arquivo LaTeX modelo para provas, listas de exercícios, cadernos e relatórios
%     Por: Alfredo Marin (T29)
%     Criado em: Outubro/2022


% IDENTIFICAÇÃO
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{templateccm}[2024/12/09 Template temático do CCM-USP para provas, listas de exercícios, cadernos e relatórios]


% DECLARAÇÕES PRELIMINARES
% Pacotes principais
\RequirePackage{xcolor}  % Criar cores pré-definidas

% Parâmetros principais
\renewcommand{\title}[1]{\newcommand{\thistitle}{#1}}
\newcommand{\course}[1]{\newcommand{\thiscourse}{#1}}
\newcommand{\code}[1]{\newcommand{\thiscode}{#1}}
\newcommand{\professor}[1]{\newcommand{\thisprofessor}{#1}}


\newcommand{\student}[1]{\newcommand{\thisstudent}{#1}}
\newcommand{\id}[1]{\newcommand{\thisid}{#1}}
\newcommand{\class}[1]{\newcommand{\thisclass}{#1}}

\renewcommand{\date}[1]{\newcommand{\thisdate}{#1}}
\newcommand{\term}[1]{\newcommand{\thisterm}{#1}}

\newcommand{\department}[1]{\newcommand{\thisdepartment}{#1}}
\newcommand{\institute}[1]{\newcommand{\thisinstitute}{#1}}

\newcommand{\layoutfile}{tpl/assignmentlayout.tex}


% OPÇÕES
% Escolha de cor %
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

% Escolha de layout %
\DeclareOption{assignment}{\renewcommand{\layoutfile}{tpl/assignmentlayout.tex}}  % Padrão
\DeclareOption{notebook}{\renewcommand{\layoutfile}{tpl/notebooklayout.tex}}

% Ignorar algumas opções padrão %
\DeclareOption{twocolumn}{\OptionNotUsed}
\DeclareOption{twoside}{\OptionNotUsed}

% Outras opções %
\PassOptionsToClass{a4paper, 12pt}{article}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

% Carregar a classe base %
\LoadClass{article}


% OUTRAS DECLARAÇÕES
% Outros Pacotes
% configuração das fontes %
\RequirePackage[vvarbb, mono, pf, scale=1.11]{notomath}
\RequirePackage[T1]{fontenc}

% configuração do layout %
\RequirePackage[a4paper, top=3cm, bottom=3cm, left=2cm, right=2cm]{geometry}
\RequirePackage[utf8]{inputenc}
\RequirePackage{fancyhdr}                            % Customizar o cabeçalho e o rodapé
\RequirePackage{multicol}                            % Formatar o texto em múltiplas colunas
\RequirePackage{setspace}                            % Configurar o espaçamento entre linhas
\RequirePackage{caption}                             % Customizar as legendas
\RequirePackage{subcaption}                          % Inserir subfiguras e subtabelas
\RequirePackage[brazilian]{babel}                    % Traduzir alguns comandos automáticos
\RequirePackage{fvextra, csquotes}                   % Inserir citações e aspas
\RequirePackage[style=nature, sorting=nyt]{biblatex} % Gerenciar a bibliografia

% formatos especiais %
\RequirePackage{booktabs, colortbl}     % Criar tabelas personalizadas
\RequirePackage{titlesec}               % Customizar os títulos das seções
\RequirePackage[shortlabels]{enumitem}  % Customizar a enumeração
\RequirePackage{graphicx}               % Importar imagens
\RequirePackage{svg}                    % Importar imagens vetorizadas
\RequirePackage{hyperref}               % Adicionar hyperlinks
\RequirePackage{minted}                 % Importar e formatar código
\RequirePackage{tikz}                   % Criar diagramas e elementos gráficos

% comandos matemáticos %
\RequirePackage{amsmath, bm}            % Usar fórmulas, comandos e símbolos matemáticos
\RequirePackage{xfrac}                  % Gerar frações na diagonal

% outros %
\RequirePackage{lipsum}                 % Gerar parágrafos Lorem ipsum
\RequirePackage[version=4]{mhchem}      % Usar fórmulas, reações e estruturas químicas

% Comandos principais
% destacar %
\newcommand{\hili}[1]{{\bfseries \textcolor{maincolor}{#1}}}

% Redefinição dos ambientes
% título, cabeçalhos e rodapés %
\input{\layoutfile}

% seções %
\titleformat{\section}[hang]{\LARGE \bfseries \color{maincolor}}{\thesection}{.75cm}{}
\titleformat{\subsection}[hang]{\Large \bfseries \color{maincolor}}{\thesubsection}{.75cm}{}
\titleformat{\subsubsection}[hang]{\large \bfseries \color{maincolor}}{\thesubsubsection}{.75cm}{}
\renewcommand{\thesubsection}{\thesection.\alph{subsection}}
\renewcommand{\thesubsubsection}{\thesubsection.\roman{subsubsection}}

% listas %
  % /itemize/
\setlist[itemize, 1]{label=\hili{$\bullet$}}
\setlist[itemize, 2]{label=\hili{$\circ$}}
\setlist[itemize, 3]{label=\hili{$\diamond$}}
\setlist[itemize, 4]{label=\hili{-}}
  % /enumerate/
\setlist[enumerate, 1]{label=\hili{\arabic*.}}
\setlist[enumerate, 2]{label=\hili{\alph*.}}
\setlist[enumerate, 3]{label=\hili{\Roman*.}}
\setlist[enumerate, 4]{label=\hili{\roman*.}}

% Configurações do layout
% estilo do código %
\definecolor{bggray}{RGB}{240, 240, 240}
\usemintedstyle{pastie}
\setminted{
    fontsize=\small,
    %
    bgcolor=bggray,
    %
    frame=lines,
    framesep=2.5mm,
    baselinestretch=1.25,
    %
    breaklines=true,
    linenos=true,
}

% estilo dos links %
\definecolor{linkcolor}{RGB}{6,39,203}
\hypersetup{
    colorlinks=true,
    % linkcolor=.,
    % anchorcolor=.,
    % citecolor=.,
    % filecolor=.,
    % menucolor=.,
    % runcolor=.,
    % urlcolor=.,
    allcolors=linkcolor,
}

% espaçamento entre linhas %
\setstretch{1.25}

% modificação de alguns comandos %
\let\ds\displaystyle
\allowdisplaybreaks

% legendas %
\captionsetup{justification=centering, font={small}, labelfont={bf}, labelsep=period}

% importação de arquivos de texto %
\RecustomVerbatimCommand{\VerbatimInput}{VerbatimInput}{
    fontsize=\footnotesize,
    %
    frame=lines,
    framesep=.5cm,
    framerule=.5mm,
    rulecolor=maincolor,
    %
    vspace=.5cm
}

% lista de exercícios %
\newlist{exercise}{enumerate}{3}
\setlist[exercise, 1]{
    label={\large \hili{Exercício \arabic*.}},
    align=left,
    itemsep=1cm
}
\setlist[exercise, 2]{
    label={\large \hili{\alph*)}},
    itemsep=.5cm
}
\setlist[exercise, 3]{
    label={\normalsize \hili{\roman*.}},
    itemsep=.5cm
}

% Outros comandos
% setas %
\newcommand{\arrow}{\textcolor{maincolor}{$\boldsymbol{\rightarrow}$\ }}
\newcommand{\longarrow}{\textcolor{maincolor}{$\boldsymbol{\longrightarrow}$\ }}
\newcommand{\squigarrow}{\textcolor{maincolor}{$\boldsymbol{\rightsquigarrow}$\ }}

% observação %
\newcommand{\obs}[2][Obs]{{\footnotesize \hili{#1:} #2}}

% matemática %
\input{tpl/math_commands}


\endinput