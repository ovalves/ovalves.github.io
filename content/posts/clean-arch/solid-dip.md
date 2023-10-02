---
title: D - Dependency Inversion Principle
date: 2020-01-08 14:00:00
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

## D - Dependency Inversion Principle (Princípio da Inversão de Dependência)
- Módulos de alto nível não devem depender de módulos de baixo nível. Ambos devem depender de abstrações.
- As abstrações não devem depender de classes concretas. As classes concretas devem depender de abstrações.

### Definições
- Módulo de alto nível (ou classe): classe que executa uma ação como uma ferramenta.
- Módulo de baixo nível (ou classe): a ferramenta necessária para executar a ação.
- Abstração: representa uma interface que conecta as duas classes.
- Classe concreta: Como a ferramenta de fato funciona.

Esse princípio visa reduzir a dependência de uma classe de alto nível na classe de baixo nível, introduzindo uma interface.

### Exemplo - Violação do Princípio **DIP**

O exemplo abaixo viola o **DIP**

```php
<?php
class Mailer
{
    public function send()
    {
        //
    }
}

class SendWelcomeMessage
{
    private $mailer;

    public function __construct(Mailer $mailer)
    {
        $this->mailer = $mailer;
    }
}
```

### Exemplo do Princípio **DIP**

O Exemplo abaixo demonstra como podemos fazer uso do **DIP**

```php
<?php
interface Mailer
{
    public function send();
}

class SmtpMailer implements Mailer
{
    public function send()
    {
        //
    }
}

class SendGridMailer implements Mailer
{
    public function send()
    {
        //
    }
}

class SendWelcomeMessage
{
    private $mailer;

    public function __construct(Mailer $mailer)
    {
        $this->mailer = $mailer;
    }
}
```