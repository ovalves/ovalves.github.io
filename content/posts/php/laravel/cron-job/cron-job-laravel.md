---
title: Cron Job no Laravel
date: 2020-09-23 12:39:00
tags:
    - PHP
    - Laravel
categories:
    - PHP
keywords:
    - PHP
    - Laravel
published: true
---

*[Código do projeto no github](https://github.com/ovalves/selene)*

# Introdução
Antigamente precisávamos criar várias entradas no crontab para cada tarefa que precisava ser agendar no servidor. No entanto, isso pode rapidamente se tornar um problema, uma vez que a programação das tarefas agendadas não está mais no *working directory*.

Resumindo, para registrar uma nova tarefa precisamos acessar o servidor e adicionar mais uma entrada no crontab.

O agendador de tarefas do Laravel (*command scheduler*) nos permite definir de forma fluente e expressiva uma programação de comandos dentro do próprio Laravel. Ao usar o agendador, precisamos criar apenas uma única entrada no crontab. A programação das tarefas é registrada no arquivo *app/Console/Kernel.php*.

Vamos ver um exemplo simples.

# Criando um command

```
php artisan make:command CartCron --command=cart:cron
```

O comando acima irá criar na pasta *app/Console/Commands* um arquivo chamado *CartCron.php*

```php
<?php
namespace App\Console\Commands;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\DB;

class CartCron extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'cart:cron';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Envia email de notificação de carrinhos abandonados';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Toda a lógica do Cron deve ser colocada no método handle
     *
     * @return mixed
     */
    public function handle()
    {
        // A lógica do Cron deve vir aqui
        DB::table('cart')->get();
        $this->info('cart cron rodando');
    }
}
```

# Registrando o cron
Todos os *commands* gerados no *laravel* devem ser registrados em *app/Console/Kernel.php*
* Abra o *app/Console/Kernel.php*;
* Adicione no *array* *$commands* o caminho para o cron que acabamos de criar.

O seu arquivo *app/Console/Kernel.php* deve ter o seguinte conteúdo.

```php
<?php
namespace App\Console;

use Illuminate\Console\Scheduling\Schedule;
use Illuminate\Foundation\Console\Kernel as ConsoleKernel;

class Kernel extends ConsoleKernel
{
    /**
     * The Artisan commands provided by your application.
     *
     * @var array
     */
    protected $commands = [
        Commands\CartCron::class,
    ];

    /**
     * Define the application's command schedule.
     *
     * @param  \Illuminate\Console\Scheduling\Schedule  $schedule
     * @return void
     */
    protected function schedule(Schedule $schedule)
    {
        $schedule->command('cart:cron')->timezone('America/Sao_Paulo')->twiceDaily(10, 20);
    }

    /**
     * Register the commands for the application.
     *
     * @return void
     */
    protected function commands()
    {
        $this->load(__DIR__.'/Commands');
        require base_path('routes/console.php');
    }
}
```

Adicionamos a linha abaixo no método *schedule*

```php
$schedule->command('cart:cron')->timezone('America/Sao_Paulo')->twiceDaily(10, 20);
```

### Algumas opções de frequencia disponiveis
```
***Schedule Frequency Options***
*---------------------------------*-----------------------------------------------------*
| Method                          | Description                                         |
| ->cron('* * * * * *');          | Run the task on a custom Cron schedule              |
| ->everyMinute();                | Run the task every minute                           |
| ->everyFiveMinutes();           | Run the task every five minutes                     |
| ->everyTenMinutes();            | Run the task every ten minutes                      |
| ->everyFifteenMinutes();        | Run the task every fifteen minutes                  |
| ->everyThirtyMinutes();         | Run the task every thirty minutes                   |
| ->hourly();                     | Run the task every hour                             |
| ->hourlyAt(17);                 | Run the task every hour at 17 mins past the hour    |
| ->daily();                      | Run the task every day at midnight                  |
| ->dailyAt('13:00');             | Run the task every day at 13:00                     |
| ->twiceDaily(1, 13);            | Run the task daily at 1:00 & 13:00                  |
| ->weekly();                     | Run the task every week                             |
| ->monthly();                    | Run the task every month                            |
| ->monthlyOn(4, '15:00');        | Run the task every month on the 4th at 15:00        |
| ->quarterly();                  | Run the task every quarter                          |
| ->yearly();                     | Run the task every year                             |
| ->timezone('America/New_York'); | Set the timezone
```

*Para saber mais sobre os tipos de agendamentos possíveis, acesse: https://laravel.com/docs/7.x/scheduling#schedule-frequency-options*

# Adicionando o executável do artisan no crontab

```bash
crontab -e # Para editar o crontab e adicione o script
```

```bash
crontab -l # Para listar todos os jobs criados
```

### Adicione o executável do artisan no crontab
```bash
* * * * * php /path/to/artisan schedule:run 1>> /dev/null 2>&1
```

# Rodando o cron do laravel manualmente

```php
php artisan cart:cron
```