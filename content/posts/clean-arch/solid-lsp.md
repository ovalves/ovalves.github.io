---
title: L - Liskov Substitution Principle
date: 2020-03-08 14:00:00
tags:
    - Clean Architecture
    - SOLID
    - Fundamentos
categories:
    - Clean Architecture
    - SOLID
published: true
---

# Introdução

O princípio SOLID é um conjunto de cinco princípios de design de software que visam tornar o código mais fácil de entender, manter e estender. Cada letra do acrônimo SOLID representa um desses princípios.

## L - Liskov Substitution Principle (Princípio da Substituição de Liskov)

"Se **S** for um subtipo de **T**, os objetos do tipo **T** em um programa poderão ser substituídos por objetos do Tipo **S** sem alterar nenhuma das propriedades desse programa. — [Wikipedia](https://pt.wikipedia.org/wiki/Princ%C3%ADpio_da_substitui%C3%A7%C3%A3o_de_Liskov)."

Quando uma classe filha não pode executar as mesmas ações que sua classe pai, isso pode causar erros.