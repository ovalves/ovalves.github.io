---
title: Architectural Decision Records (ADRs)
date: 2023-10-01 18:00:00
tags:
    - Arquitetura de software
categories:
    - Arquitetura de software
keywords:
    - Arquitetura de software
    - ADR
published: true
---

# Architectural Decision Records (ADRs)

## O que são ADRs?

Os Architectural Decision Records, ou ADRs, são documentos que registram as decisões arquitetônicas significativas tomadas durante o desenvolvimento de um projeto de software. Eles são uma maneira de documentar o porquê, o quê e o como de escolhas importantes relacionadas à arquitetura de um sistema.

## Por que são importantes?

1. **Rastreabilidade:** ADRs permitem que você rastreie as decisões arquitetônicas ao longo do tempo. Isso é útil para entender a evolução de um sistema e pode ser fundamental para resolver problemas no futuro.

2. **Comunicação:** Eles servem como um meio de comunicação eficaz entre membros da equipe. Quando as decisões são documentadas, todos têm uma compreensão clara do que foi decidido e por quê.

3. **Aprendizado:** ADRs também são uma excelente ferramenta de aprendizado. Equipes futuras podem aprender com as decisões anteriores, evitando erros semelhantes ou adotando melhores práticas.

## Como criar um ADR

1. **Título:** Dê um título claro que descreva a decisão.

2. **Contexto:** Descreva o contexto em que a decisão está sendo tomada. Quais são os problemas ou desafios que estão sendo abordados?

3. **Decisão:** Explicite a decisão arquitetônica em si. O que foi escolhido e por quê?

4. **Consequências:** Liste as implicações da decisão. Quais são os prós e contras? Como ela afeta o projeto?

5. **Status:** Mantenha um registro do status do ADR, indicando se ele está proposto, aceito, rejeitado ou obsoleto.

## Exemplo de um ADR

*Título: Uso de um banco de dados relacional*

*Contexto: Estamos desenvolvendo um aplicativo de gerenciamento de tarefas que precisa armazenar dados de usuários, tarefas e históricos de atividades.*

*Decisão: Optamos por usar um banco de dados relacional (MySQL) devido à necessidade de garantir a integridade dos dados e a capacidade de realizar consultas complexas.*

*Consequências: Isso nos permitirá criar consultas avançadas para análise de dados e garantir a consistência dos dados. No entanto, pode haver um custo de desempenho em operações de leitura/escrita intensivas.*

*Status: Aceito*

Em resumo, os Architectural Decision Records são uma ferramenta valiosa para documentar e comunicar decisões técnicas. Eles ajudam a manter um histórico claro das escolhas feitas, promovem transparência e contribuem para a aprendizagem contínua.

## Referências
- [architecture decision record](https://github.com/joelparkerhenderson/architecture-decision-record)
- [ADR example templates](https://github.com/joelparkerhenderson/architecture-decision-record#adr-example-templates)