---
title: Padrão MVVM
date: 2023-10-01 18:00:00
tags:
  - arquitetura-de-software
categories:
  - arquitetura-de-software
keywords:
  - arquitetura-de-software
published: true
---
A Arquitetura Limpa (Clean Architecture) é um conceito e uma abordagem de design de software que enfatiza a separação de preocupações e a organização do código de forma a torná-lo mais flexível, testável e fácil de manter. Desenvolvida por Robert C. Martin, também conhecido como "Uncle Bob", a Arquitetura Limpa tem como objetivo principal criar sistemas de software que sejam independentes de frameworks, bancos de dados e detalhes de implementação, permitindo que as regras de negócios sejam o ponto central do projeto.

![Clean Architecture](../_files/CleanArchitecture.jpg)

Os princípios da Arquitetura Limpa incluem:

1. **Independência de Frameworks**: A Arquitetura Limpa busca manter o código de negócios isolado dos detalhes de implementação e das bibliotecas e frameworks externos. Isso significa que o núcleo da aplicação não deve depender de tecnologias específicas.

2. **Círculos Concêntricos**: A arquitetura é dividida em camadas concêntricas, com o núcleo contendo as regras de negócios mais críticas e as camadas externas cuidando de detalhes de interface do usuário, acesso a dados e comunicação com sistemas externos.

3. **Princípio da Dependência Inversa (DIP)**: A Arquitetura Limpa segue o princípio da Dependência Inversa, o que significa que as dependências fluem das camadas internas para as camadas externas. Isso permite que as camadas mais internas permaneçam independentes das camadas mais externas.

4. **Testabilidade**: A Arquitetura Limpa promove a testabilidade do código, tornando mais fácil escrever testes unitários, de integração e de aceitação. A separação das camadas facilita a substituição de componentes por simuladores ou implementações de teste.

5. **Separation of Concerns (SoC)**: Há uma forte separação de preocupações, com cada camada ou componente sendo responsável por um aspecto específico da aplicação (por exemplo, a camada de interface do usuário lida apenas com a interação com o usuário, enquanto a camada de negócios contém as regras de negócios).

6. **Princípio de Inversão de Controle (IoC)**: A inversão de controle é usada para fornecer dependências externas aos componentes da aplicação, permitindo que a configuração seja definida fora do código da aplicação.

7. **Facilidade de Evolução**: A Arquitetura Limpa facilita a evolução e a manutenção do software, pois as mudanças em detalhes de implementação não afetam as regras de negócios centrais.

8. **Limite de Casos de Uso**: A aplicação é organizada em torno de casos de uso ou funcionalidades, com cada caso de uso sendo representado por um conjunto de interações e componentes relacionados.

### As Camadas da clean architecture

1. **Entidades**: Esta é a camada mais interna da arquitetura e contém as entidades de negócios ou objetos de domínio. As entidades representam os conceitos fundamentais do domínio e geralmente são independentes de qualquer estrutura ou tecnologia específica. Elas encapsulam a lógica de negócios essencial.

2. **Casos de Uso (Use Cases)**: As camadas de casos de uso contêm a lógica de aplicação, que coordena as operações do sistema. Cada caso de uso representa um cenário de uso específico da aplicação e é responsável por orquestrar a interação entre as entidades, bem como a camada de interface do usuário e a camada de dados. Essa camada contém regras de negócios específicas da aplicação.

3. **Interfaces do Presenters/Controllers**: Esta camada inclui as interfaces e controladores que fazem a ponte entre a lógica de aplicação (casos de uso) e a interface do usuário. Os presenters ou controllers são responsáveis por receber as solicitações da interface do usuário, chamar os casos de uso apropriados e retornar os resultados para a interface do usuário. Essa camada pode ser adaptada para diferentes tipos de interfaces de usuário, como interfaces da web, APIs, interfaces de linha de comando, etc.

4. **Interface do Usuário (UI)**: A camada de interface do usuário lida com a apresentação e a interação com o usuário final. Ela pode incluir elementos de interface gráfica, lógica de apresentação e componentes de interface do usuário. Essa camada é a única que pode depender de bibliotecas e frameworks específicos.

5. **Camada de Frameworks e Drivers**: A camada mais externa contém os frameworks, bibliotecas e componentes específicos da plataforma ou infraestrutura, como frameworks de persistência de dados, frameworks web, banco de dados, etc. Essa camada interage com componentes externos, como bancos de dados, APIs, servidores web, dispositivos de hardware, etc.


A principal ideia por trás da Clean Architecture é que as camadas internas são independentes de todas as camadas externas, e a direção da dependência é sempre de dentro para fora. Isso significa que as camadas internas não conhecem as camadas externas, permitindo uma maior flexibilidade e testabilidade. A lógica de negócios e as regras de negócios estão encapsuladas nas camadas mais internas, tornando-as reutilizáveis e independentes de detalhes de implementação.

Essa estrutura da Clean Architecture ajuda a garantir que a lógica de negócios seja o foco central do design do software e que o código seja organizado de maneira a facilitar a manutenção, escalabilidade e testabilidade.