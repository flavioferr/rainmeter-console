# Console

**Terminal: fetch do sistema, prompt de busca, todo.txt e player em ASCII.**

Skin para o [Rainmeter](https://www.rainmeter.net), minimalista e com tela de configurações própria.

![Console](docs/hero.png)

[**⬇ Baixar Console.rmskin**](https://github.com/flavioferr/rainmeter-console/releases/latest/download/Console.rmskin)

## Sobre

O Console transforma a área de trabalho num terminal: um resumo do sistema no estilo neofetch, hora com cursor piscando, player com barra em ASCII clicável, busca em forma de prompt e uma lista todo.txt.

## Widgets

| Widget | O que mostra |
|---|---|
| **Fetch** | usuário@máquina, Windows, tempo ligado, CPU, RAM, disco, clima, hora e rede, com paleta de cores |
| **Hora** | hora grande com cursor piscando, data, semana e dia do ano |
| **Tocando** | `$ tocando --fonte "YouTube"`, faixa, barra ASCII clicável e botões em texto |
| **Busca** | prompt: digite e Enter; clique no buscador para trocar |
| **Tarefas** | todo.txt com até 6 itens |

## Temas

4 temas prontos: Fósforo, Âmbar, Drácula, Solar.

![Temas](docs/themes.png)

## Configurações

Clique com o botão direito em qualquer widget → **Configurações**. Tudo é salvo na hora.

- Tema (4 opções)
- Tamanho dos widgets (70% a 160%)
- Opacidade dos painéis
- Busca padrão
- Nome de usuário do prompt
- Hora em 24h ou 12h
- Sua cidade (coordenadas buscadas automaticamente)
- Ligar/desligar cada widget

![Configurações](docs/settings.png)

## Instalação

1. Instale o [Rainmeter](https://www.rainmeter.net) (4.5 ou mais novo).
2. Baixe o [`Console.rmskin`](https://github.com/flavioferr/rainmeter-console/releases/latest) na página de Releases.
3. Dê dois cliques no arquivo e clique em **Install**.
4. Na primeira vez, os widgets aparecem já posicionados e as configurações abrem sozinhas.

Prefira o `.rmskin`: ele já instala o plugin de música. A pasta [`Console`](Console) tem o código da skin.

## Dicas

- **Música:** o player lê tudo que aparece nos controles de mídia do Windows — Spotify, YouTube, Netflix e qualquer site no Chrome/Edge/Firefox, Apple Music, Deezer, VLC… O plugin [WebNowPlaying](https://github.com/keifufu/WebNowPlaying-Rainmeter) (MIT) já vem dentro do `.rmskin`; a [extensão do navegador](https://wnp.keifufu.dev) é opcional. Clique na barra de progresso para pular.
- **Clima:** digite sua cidade nas configurações; as coordenadas são buscadas sozinhas (se não encontrar, tente sem acento). Os dados vêm do [Open-Meteo](https://open-meteo.com), gratuito e sem chave de API.
- **Mover:** arraste os widgets com o mouse.
- **Ajustes avançados:** o botão *Editar variáveis* abre o `@Resources/Variables.inc`.

## Requisitos

Windows 10 ou 11 e Rainmeter 4.5+. As fontes usadas já vêm com o Windows 11. Se o player ficar vazio, instale o [Microsoft Visual C++ Redistributable](https://aka.ms/vs/17/release/vc_redist.x64.exe), usado pelo plugin de música.

## Coleção

Outras skins da mesma leva:

- [Divisa](https://github.com/flavioferr/rainmeter-divisa) — Horas gigantes de um lado, música, clima e frase do dia do outro.
- [Serra](https://github.com/flavioferr/rainmeter-serra) — Vidro fosco: barra de menu, central de controle, widgets e dock.
- [Mosaico](https://github.com/flavioferr/rainmeter-mosaico) — Um kit de 9 cartões: relógio, lembretes, cronômetro, música, previsão e mais.
- [Painel](https://github.com/flavioferr/rainmeter-painel) — Blocos escuros com destaque colorido: nota, busca, visualizador, links e player.
- [Eixo](https://github.com/flavioferr/rainmeter-eixo) — Um eixo central minimalista: saudação, dia da semana gigante, data e hora.
- [Maré](https://github.com/flavioferr/rainmeter-mare) — Vidro e música: a capa do que está tocando vira o cartão.
- [Bússola](https://github.com/flavioferr/rainmeter-bussola) — Tudo em círculos: relógio em anel, disco que gira e medidores.
- [Lousa](https://github.com/flavioferr/rainmeter-lousa) — Escrito à mão: lista do dia, recado adesivo e um player de fita cassete.
- [Régua](https://github.com/flavioferr/rainmeter-regua) — A linha do dia: régua de 24h com o agora, nascer e pôr do sol.

E mais 12 na coleção: [Lumen](https://github.com/flavioferr/rainmeter-lumen), [Horizon](https://github.com/flavioferr/rainmeter-horizon), [Orbit](https://github.com/flavioferr/rainmeter-orbit), [Shell](https://github.com/flavioferr/rainmeter-shell), [Folio](https://github.com/flavioferr/rainmeter-folio), [Bento](https://github.com/flavioferr/rainmeter-bento), [Prisma](https://github.com/flavioferr/rainmeter-prisma), [Linea](https://github.com/flavioferr/rainmeter-linea), [Pixel](https://github.com/flavioferr/rainmeter-pixel), [Soft](https://github.com/flavioferr/rainmeter-soft), [Swiss](https://github.com/flavioferr/rainmeter-swiss) e [Island](https://github.com/flavioferr/rainmeter-island).

## Licença

[CC BY-NC-SA 4.0](LICENSE.md) — use, modifique e compartilhe, dando crédito e sem fins comerciais.
O plugin WebNowPlaying incluído no `.rmskin` é de [keifufu](https://github.com/keifufu/WebNowPlaying-Rainmeter), sob licença MIT.
