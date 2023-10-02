---
title: I - Interface Segregation Principle
date: 2020-02-08 14:00:00
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

## I - Interface Segregation Principle (Princípio da Segregação de Interfaces)
Esse problema ocorre quando uma classe concreta implementa uma interface, e essa interface define mais ações do que classe concreta necessita. Nesse caso temos um desperdício e essa implementação pode produzir erros inesperados, caso a classe concreta não tenha a capacidade de executar as ações definidas pela interface.

Uma classe deve executar apenas ações necessárias para cumprir seu papel. Qualquer outra ação deve ser removida completamente ou movida para outro lugar, se puder ser usada por outra classe no futuro.

Esse princípio visa dividir um conjunto de ações em conjuntos menores, para que uma classe execute apenas o conjunto de ações necessário.

### Exemplo - Violação do Princípio **ISP**

O exemplo abaixo viola o **ISP**

```php
<?php
interface Workable
{
    public function canCode();
    public function code();
    public function test();
}

class Programmer implements Workable
{
    public function canCode()
    {
        return true;
    }

    public function code()
    {
        return 'coding...';
    }

    public function test()
    {
        throw new Exception('Opps! I cannot test');
    }
}

class Tester implements Workable
{
    public function canCode()
    {
        return false;
    }

    public function code()
    {
        throw new Exception('Opps! I cannot code');
    }

    public function test()
    {
        return 'testing...';
    }
}

class ProjectManagement
{
    public function processCode(Workable $member)
    {
        if ($member->canCode()) {
            $member->code();
        }
    }
}
```

### Exemplo do Princípio **ISP**

O Exemplo abaixo demonstra como podemos fazer uso do **ISP**.

```php
<?php
interface Codeable
{
    public function code();
}

interface Testable
{
    public function test();
}

class Programmer implements Codeable, Testable
{
    public function code()
    {
        return 'coding...';
    }

    public function test()
    {
        return 'testing...';
    }
}

class Tester implements Testable
{
    public function test()
    {
        return 'testing...';
    }
}

class ProjectManagement
{
    public function processCode(Codeable $member)
    {
        $member->code();
    }
}
```
