# TemplateCCM

Esse é um template LaTeX com duas classes com customizações temáticas do CCM-USP.

## Como usar

    \documentclass[color, logo, mode]{templateccm}
    \documentclass[color]{slideccm}

A classe `templateccm` foi feita para ser usada em listas de exercícios, relatórios, cadernos, etc. As opções da classe e os respectivos possíveis valores são:

 - `color`: `black`, `red`, `orange`, `yellow`, `green`, `blue`.
 - `logo` (opcional): `ccm`, `fapesp` -- se não especificada, nenhum logo será incluído no cabeçalho da capa.
 - `mode` (opcional): `assignment` (padrão), `notebook`.

A classe `slideccm` foi feita para ser usada em apresentações de slides. As opções da classe são `color` e `logo`, que funcionam das mesmas maneiras especificadas acima.