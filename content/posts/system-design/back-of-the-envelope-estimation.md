---
title: Back-of-the-envelope Estimation
date: 2023-09-13 14:00:00
tags:
    - Design de sistema
    - Arquitetura de software
categories:
    - Design de sistema
published: true
---

# Introdução
Ao projetar um novo sistema muitas vezes precisamos estimar a quantidade de recursos necessárias e capacidade que o sistema terá para aguentar uma determinada carga de trabalho, para isso utilizamos uma espécie de conta de padaria (back-of-the-envelope estimation).

Para realizar efetivamente o calculo da capacidade e os recursos de um sistema, primeiro precisamos ter um conhecimento básico sobre escalabilidade, latencia, etc.


## Unidades de volume de dados

Para realizar efetivamente o calculo da capacidade e os recursos de um sistema, é fundamental conhecermos as unidades de volume de dados.

| Unidade            | Valor Aproximado | Tamanho (bytes)             |
| ------------------ | ---------------- | --------------------------- |
| **bit**            | 0 ou 1           | 1/8 - byte                  |
| **bytes**          | 8 bits           | 1 byte                      |
| **kilobytes (KB)** | 1.000 bytes      | 1.000 bytes                 |
| **megabyte (MB)**  | 1.000² bytes     | 1.000.000 bytes             |
| **gigabyte (GB)**  | 1.000³ bytes     | 1.000.000.000 bytes         |
| **terabyte (TB)**  | 1.000⁴ bytes     | 1.000.000.000.000 bytes     |
| **petabyte (PB)**  | 1.000⁵ bytes     | 1.000.000.000.000.000 bytes |

## Números de latência

![Números de latência](/latency_numbers.png)
Referência: [Latency numbers every programmer should know](https://gist.github.com/hellerbarde/2843375)

## Números de disponibilidade

A alta disponibilidade é a capacidade de um sistema operar continuamente por um certo período de tempo. A alta disponibilidade é medida em porcentagem: 100% de disponibilidade significa que o sistema nunca fica fora do ar. A maioria dos sistemas possuem uam taxa de disponibilidade entre 99% and 100%.

O SLA é um termo comumente usado por provedores de serviços. Provedores de cloud como AWS, Azure e GCP, garantem SLAs acima dos 99,9%.


| Disponibilidade %	| Inatividade por dia  | Inatividade por semana | Inatividade por mês | Inatividade por ano |
| ----------------- | -------------------- | ---------------------- | ------------------- | ------------------- |
| 99%	            | 14.40 minutos	       | 1.68 horas	            | 7.31 horas	      | 3.65 dias           |
| 99.99%	        | 8.64 segundos	       | 1.01 minutos	        | 4.38 minutos	      | 52.60 minutos       |
| 99.999%	        | 864.00 milissegundos | 6.05 segundos	        | 26.30 segundos	  | 5.26 minutos        |
| 99.9999%	        | 86.40 milissegundos  | 604.80 milissegundos   | 2.63 segundos	      | 31.56 segundos      |
