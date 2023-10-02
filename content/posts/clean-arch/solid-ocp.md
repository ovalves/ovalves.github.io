---
title: O - Open-Closed
date: 2020-04-08 14:00:00
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

## O - Open-Closed

Este princípio afirma que as classes devem estar abertas para extensão, mas fechadas para modificação. Se você deseja que a classe execute mais funções, a abordagem ideal é adicionar funções ao invés de alterá-las.

Esse princípio visa estender o comportamento de uma classe sem alterar o comportamento existente dessa classe. Isso evita causar bugs onde quer que a classe esteja sendo usada.

### Exemplo - Violação do Princípio Open-Closed

O exemplo abaixo viola o **OCP**

```php
<?php
class Programmer
{
    public function code()
    {
        return 'coding';
    }
}

class Tester
{
    public function test()
    {
        return 'testing';
    }
}

class ProjectManagement
{
    public function process($member)
    {
        if ($member instanceof Programmer) {
            $member->code();
        } elseif ($member instanceof Tester) {
            $member->test();
        };

        throw new Exception('Invalid input member');
    }
}
```

### Exemplo do Princípio Open-Closed:

O Exemplo abaixo demonstra como podemos fazer uso do **OCP**.

```php
<?php
interface Workable
{
    public function work();
}

class Programmer implements Workable
{
    public function work()
    {
        return 'coding';
    }
}

class Tester implements Workable
{
    public function work()
    {
        return 'testing';
    }
}

class ProjectManagement
{
    public function process(Workable $member)
    {
        return $member->work();
    }
}
```

### Conclusão

Ao utilizarmos o princípio do **OCP** fica fácil adicionarmos mais funções para as classes do sistema.