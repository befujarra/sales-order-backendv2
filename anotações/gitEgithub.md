Controle de versão
versionamento.

ajuda a reverter, alterar entre as versoes e controlar todas as modificações feitas

Repositorio: como nos referimos ao projeto como todo, o diretorio raiz a partir de onde serao monitorados todas as alterações


Commit: é o ato de salvar uma ou mais alterações no codigo e tambem pode se referir ao conjunto dessas alterações

Working tre: é o espaço de trabalho onde voce faz modificações nos arquivos do seu projeto. Quando voce edita, criaou deleta arquivos, essas mudanças acontecem na working tree

Staging: é a area de preparação onde as alterações são separadas para serem salvas em um commit, ou seja, elas permitem escolher exatamente o que sera salvo

branches: são ramificações que podemos criar a partir de um ponto no jistorico do projeto para trabalhar paralelamente, assim é possivel trabalhar sem afetar a ramificação

Fluxo de trabalho basico----------------------------------------

1- para começar precisamos inixializar um novo repositorio a partir de um diretorio

2 - em seguida podemos começar a modificar o conteudo do repositorio, ou seja, criar, modificar e excluir arquivos.

3 - para salvar essas modificações primeiro precisamos adicionar na area de preparação (stage)

4- depois que escolher os arquivos, nos damos commit nas alterações, gravando elas no repositorio

5 pronto, temos a primeira versao


U= untracked: não rastreavel (siginifica que ele tem alterações ou é um arquivo novo que ainda nao foi commitado)
A= adicionado

Comandos basicos ------------------------------------------------

Precisa estar dentro da pasta

git --version: verifica a versao do git instalada
git init --help: mostra as descrições e comandos

git init: inicia o repositorio na pasta(cria a pasta oculta .git)

git status: exibe a stuação atual da working tree
git rm --cached nomeArquivo: isso faz com que o arquivo volte a nao ser monitorado "A"
git add . : Adiciona todos os arquivos modificados "M" e nao rastreaveis "A" para a stage