---
title: Git Básico
date: 2020-09-23 11:11:00
tags:
    - Git Básico
categories:
    - Git
keywords:
    - GIT
published: true
---

# Introdução
Git é um sistema de controle de versões distribuído, usado principalmente no desenvolvimento de software.
O git pode ser usado para registrar o histórico de edições de qualquer tipo de arquivo, ele foi inicialmente projetado e desenvolvido por Linus Torvalds para o desenvolvimento do kernel Linux.

# Controle de versão
Um sistema de controle de versão é um software com a finalidade de gerenciar diferentes versões no desenvolvimento de documentos.
Esses sistemas são utilizados no desenvolvimento de software para controlar suas versões, manter o histórico de atualizações, e para o desenvolvimento de códigos-fontes e documentação.
# Instalação
*Para realizar a instalação do git acesse o site https://git-scm.com/downloads e escolha a versão compatível com seu sistema operacional.*

# Configuração do Git
Diga ao git quem você é.
```
git config --global user.name "Seu nome"
git config --global user.email "Seu email"
```
No comando acima utilizamos *--global*. Essa opção diz ao git para armazenar as configurações no arquivo *~/.gitconfig*. Esta configuração é definida para cada usuário do sistema operacional.

Para compartilhar a mesma configuração entre todos os usuários do sistema operacional, utilize a opção *--system*. Esta opção vai armazenar as configurações no arquivo */etc/gitconfig*.

Para criar uma configuração restrita a um projeto específico, utilize *--local*. Esta opção vai armazenar as configurações no diretório do repositório corrente.

# Configurando atalhos
Criando atalhos para comandos do git:
```
git config --global alias.ci commit
```
O comando acima cria um atalho para o comando *commit* que será explicado mais a frente

*Para saber mais: https://git-scm.com/book/en/v2/Git-Basics-Git-Aliases*

# Trabalhando com repositórios
### Criando um repositório
```
git init
```
O comando acima irá iniciar um repositório do *git*

*Criei um arquivo chamado **README.md** dentro do mesmo diretório onde foi realizado o git init. Iremos utilizar este arquivo para aprender sobre as diferentes áreas de trabalho do git*

# Estados e áreas
### No Git temos três estados que são:
- Working directory
- Staging area
- Repositório (head / commits)

O código local está dentro do working directory, no caso o arquivo README que acabamos de criar está dentro do working directory - este é o nosso local de trabalho.

# Listando os arquivos não monitorados
Arquivos não monitorados são arquivos que estão no *working directory* - ou melhor são os arquivos que ainda não apresentamos ao *git*.

```
git status
```
Este comando irá exibir o arquivo *README.md* na listagem de arquivos não monitorados

# Adicionando o arquivo na staging area

Agora iremos apresentar o arquivo para o *git*, colocando-o na *staging area*

```
git add README.md
```

Agora o arquivo *README.md* saiu do working directory e foi para a *staging area*. Nesse estado, o arquivo está sob o controle do git.

O git irá armazenar o histórico de alterações deste arquivo.

Os arquivos na staging area estão prontos para serem registrados como parte de um commit. *O commit é o registro das alterações de um ou mais arquivos que foram alterados no working directory*.

A partir do estado da *staging area* seguido do *commit*, o arquivo do *repositório local* está pronto para ir para o *repositório remoto*.

# Removendo arquivos da staging area

Para remover arquivos que foram adicionados incorretamente podemos usar o comando.

```
git reset HEAD <NOME_DO_ARQUIVO>
```
Este comando irá remover o arquivo da *staging area*, devolvendo-o para o *working directory*.

# Fazendo um commit

Um commit é uma unidade de controle que pode contar um ou mais arquivos e operações que foram realizadas no *working directory*.

```
git commit -m "meu primeiro commit"
```
No comando acima utilizamos a *flag -m* que significa que estamos passando uma mensagem para o *commit*. Esta mensagem é usada para identificar o conteúdo deste *commit*.
