---
title: Construindo um framework web em PHP - Parte 2
date: 2020-09-16 16:15:42
tags:
    - PHP
    - Arquitetura de software
categories:
    - Frameworks PHP
    - Frameworks Web
    - PHP
keywords:
    - PHP
    - Arquitetura de software
---

O código do projeto pode ser encontrado no github neste
[link](https://github.com/ovalves/selene)

## Introdução

Algumas pessoas têm vontade de escrever seu próprio framework. Outras pessoas, por outro lado preferem usar os já existentes. E existem centenas, talvez milhares de frameworks web no mercado. Por que mais um? Por que iremos nos dar ao trabalho de implementarmos nosso próprio framework na "unha"? Bom, acredito que assim como eu, você  também já se viu tendo de aprender diversas tecnologias e frameworks que estão em alta no momento, e quando a tal moda acaba você precisa recomeçar do zero em outro framework, talvez até em outra linguagem de programação.

Escrever seu próprio framework o forçará a fazer escolhas de arquitetura que, por sua vez, tornará mais fácil a compreensão de outros frameworks existentes no mercado, porque no final das contas, a grande maioria segue quase que os mesmos princípios. Esse desafio também o forçará a tomar decisões que, em outro momento ou projeto  você acredita-se que poderia evitar: decisões de arquitetura, decisões de código, decisões por falta de tempo.

>Disclaimer: Você não irá escrever o próximo reactjs ou vue ou laravel, pelo menos não no seu primeiro framework.

## Por que criar seu próprio framework?

*"Não reinvente a roda, eles dizem" ou "escolha um framework já existente e confiável."*
Na maioria das vezes eles estão certos, ainda mais quando estamos falando de projetos de empresas ou quando segurança é um problema, ou mesmo o tempo é uma variável problemática. No mais, crie seu próprio framework, se você é curioso e quer saber como as coisas funcionam por debaixo dos panos, ou se você simplesmente quer aprender mais sobre determinada linguagem de programação.

### Aqui estão algumas razões para criar seu próprio framework:

- Aprender mais sobre arquitetura de sistemas modernos para web.
- Por diversão
- Para entender que criar sistemas robustos e com boa experiência para outros programadores usarem é uma tarefa difícil, mas recompensadora.

Esta série irá guiá-lo através de todo o processo da criação de um
framework web, um passo de cada vez. E em cada etapa você terá um
framework web funcional. Começaremos com um framework bem simples, acrescentando mais recursos com o tempo. E então, eventualmente, você terá um framework web completo.

## O que será abordado
- Criação de uma engine de roteamento simples porém poderosa
- Criação de um sistema de injeção de dependências
- Criação de um sistema de gerenciamento de sessão
- Criação de um sistema de autenticação seguro
- Criação de um ORM para execução das queries no banco de dados
- Criação de um sistema de template engine, facilitando a criação das views no framework
- Criação de um sistema de Middlewares
- Criação de um sistema de arquivos
- Criação de um sistema de Request e Response (para trabalharmos com as requisições HTTP)
- Criação de um sistema de gerenciamento de banco de dados (Gerenciamento de conexões, persistência, etc)
- O framework seguirá o padrão MVC
- Sistema de logs
- Criação de um console gerador de código, para criação das models, controllers, views, etc
- Criação de um [skeleton](https://github.com/ovalves/selene-skeleton) para rápida criação de novos projetos utilizando o framework

## Gerenciamento de dependências
Iremos utilizar o [composer](https://getcomposer.org) para instalar os componentes que serão utilizados ao longo do projeto. Caso não saiba o que é o composer, aqui está um artigo onde descrevo brevemente para que serve.

*Parte 2 da série*
[Construindo seu framework PHP](/posts/php/selene/desenvolvendo-php-framework-2/)