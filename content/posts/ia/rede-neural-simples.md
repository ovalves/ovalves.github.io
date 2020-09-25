---
title: Redes Neurais Artificiais
date: 2020-09-24 11:35:00
tags:
    - Redes Neurais Artificiais
    - Inteligência artificial
categories:
    - Inteligência artificial
keywords:
    - Inteligência artificial
    - Redes Neurais Artificiais
published: true
---

## Introdução
O tipo mais comum de rede neural artificial é uma rede feedforward com retropropagação (backpropagation). Em uma rede feedforward cada camada se conecta à próxima camada não havendo caminho de volta. Todas as suas conexões se movem em uma única direção, partindo da camada de entrada rumo a camada de saída.

## Perceptron
Inventada em 1958 por **Frank Rosenblatt** no **Cornell Aeronautical Laboratory** o **perceptron** é um tipo de rede neural artificial. Ele pode ser visto como o tipo mais simples de rede neural feedforward: um classificador linear.

## Perceptron multicamadas
O **perceptron multicamadas (MLP)** é uma rede neural semelhante à **perceptron**. Para ajudar na resolução de problemas não lineares foram adicionadas **camadas de neurônio ocultas** ligadas entre si por sinapses com pesos. O aprendizado nesse tipo de rede é geralmente feito através do algoritmo de retropropagação do erro.

## Camada de Entrada
Um vetor de entradas é passado para o neurônio. Cada neurônio na camada de entrada representa alguma variável do mundo real - por exemplo características de uma pessoa.

## Camada de Saída
A camada de saída retorna um resultado para o ambiente externo. O número de neurônios está diretamente relacionado com a tarefa que a rede neural executa. Na fase de treinamento o resultado emitido pela camada de saída é utilizado para ajustar os pesos da rede neural.

## Neurônios
A menor unidade em uma rede neural artificial é o neurônio. Ele armazena um vetor de pesos. Cada neurônio recebe dados de entradas, esses dados são  **multiplicados (dot product)** pelos **pesos sinápticos** e **somadas entre si** junto com uma constante chamada de **bias**.

## Função de Ativação
Após o somatório dos neurônios, o valor obtido passa pelo cálculo da função de ativação. O objetivo deste cálculo é limitar a amplitude da camada de saída da rede neural normalizando o resultado final em um intervalo fechado entre (0, 1).

## Retropropagação
A retropropagação define a forma de treinamento da rede. O algoritmo de retropropagação tem por finalidade encontrar o erro emitido pela saída de uma rede neural e utilizar esse dado para modificar os pesos dos neurônios. Os neurônios que produzem saídas com erros maiores sofrem mais modificações. O erro emitido pela saída da rede neural é oriundo da fase de treinamento.

## A retropropagação possui duas etapas que são

**Forward pass**: As entradas são passadas através da rede e as previsões de saída obtidas (essa etapa também é conhecida como fase de propagação).

**Backward pass**: O gradiente da função de perda da camada de previsão é calculado. Usamos esse gradiente para atualizar recursivamente os pesos da rede (etapa também conhecida como fase de atualização de pesos ou retropropagação).
