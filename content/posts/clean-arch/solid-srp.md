---
title: S - Single Responsibility Principle
date: 2020-05-08 13:00:00
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

## S - Single Responsibility Principle (Princípio da Responsabilidade Única)

Este princípio afirma que uma classe deve ter apenas uma razão para mudar. Em outras palavras, uma classe deve ter apenas uma responsabilidade.

Esse princípio visa separar comportamentos para que, se os bugs surgirem após alguma mudança no código, isso não afetará outros comportamentos não relacionados.

### Exemplo - Violação do Princípio da Responsabilidade Única

O exemplo abaixo viola o Princípio da Responsabilidade Única

```php
<?php
class Report
{
    public function getTitle()
    {
        return 'Report Title';
    }

    public function getDate()
    {
        return '2016-04-21';
    }

    public function getContents()
    {
        return [
            'title' => $this->getTitle(),
            'date' => $this->getDate(),
        ];
    }

    /*
     * Violação da SRP ao implementar o método de formatar o conteúdo para JSON
    */
    public function formatJson()
    {
        return json_encode($this->getContents());
    }
}
```

### Exemplo do Princípio da Responsabilidade Única:

O Exemplo abaixo demonstra como podemos fazer uso do **SRP**.

```php
<?php

/*
* Criamos uma interface que define um contrato de formatação
*/
interface ReportFormatTable
{
    public function format(Report $report);
}

/*
* Criamos uma classe especializada em formatação de Report para JSON
*/
class JsonReportFormatter implements ReportFormatTable
{
    public function format(Report $report)
    {
        return json_encode($report->getContents());
    }
}

/*
* Removemos o método de formatação da classe do Report
*/
class Report
{
    public function getTitle()
    {
        return 'Report Title';
    }

    public function getDate()
    {
        return '2016-04-21';
    }

    public function getContents()
    {
        return [
            'title' => $this->getTitle(),
            'date' => $this->getDate(),
        ];
    }
}
```

### Conclusão

Agora podemos adicionar novos tipos de formatação, basta criarmos novos tipos de classes de formatação similares a **JsonReportFormatter** e respeitarmos a interface **ReportFormatTable**