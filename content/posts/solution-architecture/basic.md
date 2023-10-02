---
title: Fundamentos da Arquitetura de Software
date: 2023-09-20 10:00:00
tags:
    - Arquitetura de software
    - Fundamentos
categories:
    - Arquitetura de software
published: true
---

# O que é Arquitetura de Software?

A arquitetura de software é o projeto estrutural e organizacional de um sistema de software. É a maneira como os diversos componentes de uma aplicação se relacionam e interagem entre si. A arquitetura define a divisão de responsabilidades, a comunicação entre os módulos, a escalabilidade do sistema e muitos outros aspectos críticos do desenvolvimento de software.

## Fundamentos da Arquitetura de Software

1. **Separation of Concerns (Separação de Responsabilidades):** Um dos princípios mais fundamentais da arquitetura de software é a separação de responsabilidades. Isso significa que diferentes partes do sistema devem ter funções específicas e bem definidas, evitando a mistura de lógica de negócios com detalhes de interface, por exemplo.

2. **Escalabilidade:** A arquitetura deve ser projetada de forma a permitir que o sistema cresça à medida que as demandas aumentam. Isso envolve a capacidade de adicionar mais recursos de hardware ou distribuir a carga de trabalho de maneira eficiente.

3. **Modularidade:** A divisão do sistema em módulos independentes facilita o desenvolvimento, a manutenção e a expansão do software. Cada módulo deve ser responsável por uma tarefa específica e acoplado de forma flexível aos outros.

4. **Reutilização:** A reutilização de componentes de software economiza tempo e recursos. A arquitetura deve permitir a criação de bibliotecas e componentes reutilizáveis que possam ser aplicados em diferentes partes do sistema.

5. **Padrões de Design:** Existem diversos padrões de design de software, como o MVC (Model-View-Controller) e o REST (Representational State Transfer), que fornecem diretrizes valiosas para a criação de sistemas coesos e bem organizados.

6. **Segurança e Confiabilidade:** A segurança e a confiabilidade são fundamentais. A arquitetura deve incorporar medidas de segurança, como autenticação e autorização, e ser projetada para resistir a falhas.

## Princípios Fundamentais

1. **Baixo Acoplamento:** Alto acoplamento é quando uma classe *A* chama uma classe *B* e a mesma classe *B* chama novamente a classe *A*. Quanto menos classes com alto acoplamento existirem no sistema, mais fácil será alterá-lo.

2. **Alta coesão:** Os componentes de uma classe devem ser altamente coesos. Exemplo: A classe *Cachorro* não deveria ter um método *falar*.
    - *Alta coesão* está fortemente relacionada com o *Baixo acoplamento*. O *Princípio da Responsabilidade Única (o S do SOLID)* pode ser usado na resolução desse problema.

3. **Escopo de Alterações:** Adição e manutenção no código, devem ser apenas locais. Isso evita erros em outros módulos do software.

4. **Componentes Intercambiáveis:** Os componentes de software devem ser facilmente removíveis e/ou substituíveis.

5. **Componentes Pequenos:** O software deve ser composto de pequenos componentes. Cada componente deve fazer apenas uma tarefa.

## Design de código

1. [S - Single Responsibility Principle ](/posts/clean-arch/solid-srp/)
2. [O - Open/Closed Principle](/posts/clean-arch/solid-ocp/)
3. [L - Liskov Substitution Principle](/posts/clean-arch/solid-lsp/)
4. [I - Interface Segregation Principle](/posts/clean-arch/solid-isp/)
5. [D - Dependency Inversion Principle](/posts/clean-arch/solid-dip/)
