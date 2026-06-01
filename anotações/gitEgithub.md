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
se for primeira vez usando precisa setar email e nome:
git config --global user.email "seu@email.com"
git config --global user.nome "seu nome"



git --version: verifica a versao do git instalada
git init --help: mostra as descrições e comandos

git init: inicia o repositorio na pasta(cria a pasta oculta .git)

git status: exibe a stuação atual da working tree
git rm --cached nomeArquivo: isso faz com que o arquivo volte a nao ser monitorado "A"
git add . : Adiciona todos os arquivos modificados "M" e nao rastreaveis "A" para a stage

git commit: registra as alterações preparadas no historico do repositorio de forma definitiva
git commit -m "mensagem": faz o mesmo que git commit, porem com uma descrição junto do que foi feito
git restore: reverte as alterações em um arquivo, voltando ele pro ultimo commit
git log: mostra o historico de commits
git diff: mostra as alterações entre diferentes commits, entre commit e a working tree, etc


git merge - integra mudanças entre branchs

Boas praticas de commits --------------------------------------------------------------------------------------

Nomeie os Seus commits com cuidado:
use o commit -m com uma mensagem falando o que foi feito e deixar claro pra quem olhar e saber o que voce fez

Existe uma convenção de padrões de commits
link>:https://www.conventionalcommits.org/en/v1.0.0/

revise suas mudanças antes de commitalas, teste local e faça os testes automatizados tambem.

faça pequenos commits e frequentes para que a revisão seja melhor, a mensagem do commit seja mais explicativa e e reverter seja menos agressivos
faça um commit apos terminar uma pequena alteração

tipos de versão------------------------------------------------------------------------
0.0.0

cada numero tem o seu papel e significado

o primeiro é a major: indica uma nova funcionalidade e mudanças grandes, significativas
o segundo é minor: melhorias e funcionalidades que não irão alterar o fluxo ou o geral da aplicação
Patch é o terceiro: correções de bigs, pequenas melhorias que nao alteram funcionalidades etc

branches------------------------------------------------------------------------------------------------
branches são ramificações que permitem trabalhar em diferentes linhas de desenvolvimento dentro de um mesmo repositorio

cada branch, pode conter uma serie de commits idependentes, permitindo que desenvolvedores trablhem em funcionalidades ou correções sem inteferir na branch principal

Branch Main ou Master - Tronco da arvore
branch - são os galhos ligados ao troco

ajudam a manter o historico de desenvolvimento organizado e claro 

Facilitam a colaboração entre devs, permitindo que cada um trabalhe em sua propria branch e depois integre (merge) as mudanças

Conceitos de branch
Branch principal - Branch Master ou Main, linha principal onde o codigo limpo, sem erros etc está e que ira receber as mudanças das branchs

branchs de funcionalidade: branch criada a partir da branch principal, ou seja, ela clona a branch principal, e voce desenvolve uma funcionalidade nela, depois disso voce faz um merge nessa branch principal, voce integra suas mudanças nela apos todos os testes e resultados positivos

branch de correção: igual a de funcionalidade mas para correções


Exemplo Real:
em projetos é comum ter mais de uma branch principal. Pode-se ter uma branch Principal de qualidade, e uma de desenvolvimento alem da main

Entao seria: Main - principal
Qualidade - principal para testes
Desenvolvimento - com novas funcionalidades e correções antes de ir pra testes

Trabalhando com branchs - fluxo
1- para criar uma nova branch, primeiro entre na branch que precisa clonar. Para isso, git checkout nome-da-branch

2- depois, dentro da branch alvo, use git checkout -b nome-da-branch-nova para criar uma branch nova e ja entrar nela
ou use git branch nome-da-branch-nova, para só criar sem entrar nela

dica: use git branch para listar todas e ter o controle das que ja existe

3 - para integrar suas mudanças, entre na branch que ira receber as mudanças, e depois use git merge nome-da-branch-que-ira-enviar para que a branch atual puxe todas as alterações

git branch --help: mostra todos os comandos referentes a branch

git branch -d nome-da-branch: apagar branch que nao irao mais ser usadas

git branch -m novo-nome: muda o nome da branch atual


conflitos de merge ------------------------------------------------------------------------------------------
o que são conflitos de merge:
conflitos de merge ocorrem quando o GIT nao consegue automaticamente combinar mudanças de duas branches
alterações conflitantes no mesmo trecho do codigo

como identificar confltos:
o git da erro e informa os arquivos com conflito de merge
usando esses simbolos: <<<<<<<<,=========== e, >>>>>>>>

git merge --abort: cancela o merge

apos resolver os conflitos, use o git add e commit para reolver, ou clicando nas opções da IDE

evitando:
Comunicação regular com sua equipe para evitar trabalhar nos mesmo arquivos e trechos de codigos
pull frequentes para manter a branch sempre atualizada
commits pequenos e frequentes


repositorios remotos e GitHub----------------------------------------------------------------------------
sao versoes do projeto hospedado na internet
permitem que voce e os outros devs atuem no mesmo projeto de diferentes locais

facilitam o trabalho entre pessoas
servem como backup do codigo, garantindo que ele nao seja perdido caso algo aconteça com o projeto local

possibilitando a integração continua e outras praticas de DEVOPS

GitHub é uma plataforma de hospedagem de codigo fonte para trabalhar com repositorios remotos

oferece uma interface web amigavel e varias ferramentas adicionais para colaboração como pull requests, inssues, wikis, kanban etc


Trabalhar com repos remotos:
1 clone do repositorio git clone url-repo
2- quando possuir commits que deseja integrar ao repositorio, envie eles com git push, git push nome-do-remote nome-da-branch
3 quando quiser sincronizar com o repositorio e manter o projeto local atualizado, git pull nome-do-remote nome-da-branch



ssh e remotos setup inicial------------------------------------------------------------------------------------
primeiro se cria a pasta do repositorio local/projeto
entra na pasta pelo terminal
usa o git init pra iniciar o repositorio local
crie o README.md para usar como base de commit, pois o git so começa depois do primeiro commit
git add README.md
git commit -m "commiti inicial"

git remote add nome link-do-repo: exemplo git remote add origin https://github.com/usuario/nomeDoRepositorio

git push: para enviar os dados pro remoto - exemplo git push origin master


No git hub, nas configurações de conta tem a opção de SSH e GPG keys
nessa opção voce pode criar chaves para que valide ao usar o git push
criar no terminal>:
ssh-keygen -C "email"
escolha o diretorio
crie uma senha

com isso sera salvo uma senha ssh no diretorio
e tambem informa uma senha publica para ser registrada no github


adicionar a senha:
ssh-add caminho-do-arquivo
digitar senha

com isso ao clonar o repositorio, usar o modo ssh para clone


fork e contribuições em projetos------------------------------------------------------------------------------
fork é como se fizesse um clone de um repositorio para sua conta.
voce copiar um repositorio de outro existente como se fosse, porem com referencia pro projeto raiz

assim é possivel contribuir para o projeto original, muito usado em projetos de codigo aberto



usando o .gitignore-----------------------------------------------------------------------------------------
esse arquivo serve para indicar quais arquivos ou tipos de arquivos nao devem ser considerados pelo git.
por exemplo o node_modules ou .env

se nao tiver no projeto, basta criar o arquivo na raiz chamado .gitignore
e indicar nesse aqurivo o que deve ser inorado
com isso, o prorpio git emite erro ao tentar add esses arquivos na stage e commitar

se quiser manter uma pasta vazia monitorada pelo git, cria um arquivo vazio chamado .gitkeep, assim a pasta com o conteudo ignorado pode continuar sendo monitorada

fluco colaborativo:------------------------------------------------------------------------------------------
1 clonar repositorio ou fazer setup inicial
2 Criar uma branch separada para trabalhar em alguma tarefa do projeto a partir de uma branch inicial
3 mudar para a nova branch (git checkou) e fazer alteraç~es
4 preparar (git add) e , quando finalizar, guardar (git commit)
5 apos finalizar a tarefa, subir a branch para o repositorio remoto e abrir uma pull request (git push origin branch)
 - para abrir a PR, depois de executar push para a sua branch, va ao github, acesse a aba Pull request, clique em New pull request ou pule essas etapas clianco em compare e pull request que fica aprencendo nas paginas
 - apos isso, escolha qual branch ira receber(base) os codigo e qual branch ira enviar(compare), base:master <- compare:sua-branch
  - o github avisa se houver conflito
  - de um nome pra PR
  - adicione uma descrição detalhada, normalmente usada com um template adotado pelo time
  - se necessario, adicione um reviewer no lado direito
  - clique em create pull request
  - se nao houver automação, e nem aprovação no final da pagina tera o botao "merge pull request"
  - e deletar a branch

6 o lider do projeto aprova ou nao, o pull request e integra as alterações na branch principal(git merge)
7 volta ao passo 2 e fica nesse loop

obs: se demorar muito tempo em um branch, voltar na branch principal e dar git pull, depois voltar pra sua branch e dar merge pra puxar as novas atualizações pra sua branch


