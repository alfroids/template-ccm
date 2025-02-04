# TemplateCCM

Esse é um template LaTeX com duas classes com customizações temáticas do CCM-USP.

## Como usar

### No seu diretório

O diretório que contém o seu arquivo `.tex` também deve conter o arquivo `.cls` referente à classe que você vai utilizar (`templateccm` ou `slideccm`) bem como a pasta `tpl`.

### No seu arquivo

Coloque uma das seguintes linhas no topo do arquivo:

```
\documentclass[color, logo, mode]{templateccm}
\documentclass[color]{slideccm}
```

A classe `templateccm` foi feita para ser usada em listas de exercícios, relatórios, cadernos, etc. As opções da classe e os respectivos possíveis valores são:

 - `color`: `black`, `red`, `orange`, `yellow`, `green`, `blue`.
 - `logo` (opcional): `ccm`, `fapesp` -- se não especificada, nenhum logo será incluído no cabeçalho da capa.
 - `mode` (opcional): `assignment` (padrão), `notebook`.

A classe `slideccm` foi feita para ser usada em apresentações de slides. As opções da classe são `color` e `logo`, que funcionam das mesmas maneiras especificadas acima.

## Comandos especiais

O template também contém alguns comandos matemáticos recorrentes, como `\NN`, `\ZZ`, `\QQ`, `\RR` e `\CC` para a notação dos principais conjuntos numéricos, os operadores `\supp`, `\erf`, `\argmax` e `\argmin` e as funções `\norm{X}` para a norma de um vetor e `\ind{X}` para a função indicadora.
Adicionalmente, existem alguns comandos para notações estatísticas, como `\PP`, `\EE` e `\VV` para a probabilidade, a esperança e a variância, respectivamente, `\IC` para o intervalo de confiança e `\given` para a barra vertical com espaçamento.
Você pode complementar ou fazer alterações aos comando dessa lista através do arquivo `tpl/math_commands.tex`.
