---
title: Construindo um framework web em PHP - Parte 1
date: 2020-09-16 16:15:42
tags:
    - PHP
    - Arquitetura de software
categories:
    - Frameworks PHP
keywords:
    - PHP
    - Arquitetura de software
---

O código do projeto pode ser encontrado no github neste
[link](https://github.com/ovalves/selene)

## Introdução

Nesta série de artigos irei abordar todos os passos necessários para a construção de um framework completo em PHP. Da criação do sistema de roteamento à a criação de uma template engine simples. Em cada etapa da criação você terá um framework web funcional. Começaremos com um framework bem simples e iremos acrescentando mais recursos com o tempo.


### Motivação

Muitos desenvolvedores iniciam suas carreiras já programando em cima de abstrações,
vide a imensa quantidade de desenvolvedores "laravel" ou "react".
Nosso inuito nessa série será criar um framework que se assemelhe ao laravel. Tentaremos criar um framework robusto que ajude outros devs a executarem tarefas do dia dia.

### Por que criar seu próprio framework?
Escrever seu próprio framework o forçará a fazer escolhas de arquitetura que, por sua vez, tornará mais fácil a compreensão de outros frameworks existentes no mercado, porque no final das contas, a grande maioria segue quase que os mesmos princípios. Esse desafio também o forçará a tomar decisões que, em outro momento ou projeto  você acredita-se que poderia evitar: decisões de arquitetura, decisões de código, decisões por falta de tempo.

>Disclaimer: O framework criado tem a finalidade de ser didático, caso queira usá-lo em produção faça muitos testes antes.

### Aqui estão mais razões para criar seu próprio framework:

- Aprender mais sobre arquitetura de sistemas modernos para web.
- Criar só por diversão mesmo
- Para entender que criar sistemas robustos e com boa experiência para outros programadores usarem é uma tarefa difícil, mas recompensadora.
- Para ter maior compreensão sobre como diferentes módulos de um framework podem conversar entre si
- Para aprender novos paradigmas de programação
- Para reforçar o conhecimento em alguma linguagem de programação


## O que será abordado
- Criação de uma engine de roteamento simples porém poderosa
- Criação de um sistema de injeção de dependências
- Criação de um sistema de gerenciamento de sessão
- Criação de um sistema de autenticação seguro
- Criação de um ORM para execução das queries no banco de dados
- Criação de um sistema de template engine, facilitando a criação das views no framework
- Criação de um sistema de Middlewares
- Criação de um sistema de arquivos
- Criação de um sistema de Request e Response (para trabalharmos com as requições HTTP)
- Criação de um sistema de gerenciamento de banco de dados (Gerenciamento de conexões, persistência, etc)
- O framework seguirá o padrão MVC
- Sistema de logs
- Criação de um console gerador de código, para criação das models, controllers, views, etc
- Criação de um [skeleton](https://github.com/ovalves/selene-skeleton) para rápida criação de novos projetos utilizando o framework

## Gerenciamento de dependências
Iremos utilizar o [composer](https://getcomposer.org) para instalar os componentes que serão utilizados ao longo do projeto. Caso não saiba o que é o composer, aqui está um artigo onde descrevo brevemente para que serve.

*Parte 2 da série*
[Construindo um framework PHP](/posts/php/selene/desenvolvendo-php-framework-2/)
