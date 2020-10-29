---
title: Sistemas de recomendação
date: 2020-10-29 16:25:00
tags:
    - Sistemas de recomendação
    - Inteligência artificial
categories:
    - Inteligência artificial
keywords:
    - Inteligência artificial
    - Sistemas de recomendação
published: true
---

*[Código do projeto no github](https://github.com/ovalves/algorithms/blob/master/src/machine-learning/recommender/recommender.py)*

# Introdução
**Definição da Wikipedia** - Um Sistema de Recomendação combina várias técnicas computacionais para selecionar itens personalizados com base nos interesses dos usuários e conforme o contexto no qual estão inseridos. Tais itens podem assumir formas bem variadas como, por exemplo, livros, filmes, notícias, música, vídeos, anúncios, links patrocinados, páginas de **internet**, produtos de uma loja virtual, etc. Empresas como Amazon, Netflix e Google são reconhecidas pelo uso intensivo de sistemas de recomendação com os quais obtém grande vantagem competitiva.

# Como os sistemas de recomendação funcionam?
Um **sistema de recomendação** prevê a probabilidade de um usuário gostar de um determinado produto. Essa previsão é feita com base nas interações anteriores do usuário com o sistema.

Para geração de novas recomendações o **sistema de recomendação** utiliza alguns relacionamentos entre as entidades presentes no sistema.

# Relacionamentos entre as entidades do sistema
**Existem três tipos de relacionamentos principais que são utlizados**

### Relacionamento **Usuário-Produto**
A relação **Usuário-Produto** ocorre quando alguns usuários têm preferência por produtos específicos de uma categoria. Por exemplo, usuários da netflix que somente assistem a filmes de terror.

### Relacionamento **Produto-Produto**
A relação **Produto-Produto** ocorre quando os produtos são da mesma categoria ou possuem características similares. Alguns exemplos incluem livros ou músicas do mesmo gênero.

### Relacionamento **Usuário-Usuário**
A relação **Usuário-Usuário** ocorre quando os usuários do sistema possuem gostos similares em relação a um determinado produto ou serviço. Por exemplo, usuários que assistiram a um determinado filme de romance e avaliaram o filme de forma semelhante.


# Sistemas de recomendação baseado em conteúdo
Esses **sistemas de recomendação** utilizam a similaridade entre as caracteristicas dos produtos que um determinado usuário gostou no passado.

Os **sistemas de recomendação** baseado em conteúdo utilizam as interações históricas de um determinado usuário não levando em consideração as interações de outros usuários presentes no sistema.

# Sistemas de recomendação baseado em filtragem colaborativa
Esses **sistemas de recomendação** utiliza a similaridade entre os usuários do sistema em relação ao modo em que esses usuários avaliam os produtos.

### Exemplo de recomendação de filme
1 - O **usuário 1** costuma dar **nota 5** para filmes de terror, e costuma dar **nota 3** para todos os outros tipos de filmes.

2 - O **usuário 2** utiliza a mesma abordadem de avaliação que o **usuário 1**.

3 - Para recomendar um novo filme para o **usuário 2**, o sistema de recomendação irá procurar na lista de filmes assistidos de todos os usuários do sistema.

4 - Como o **usuário 1** e o **usuário 2** avaliam filmes de formas similares, ou seja, eles tem gosto similares, o sistema irá recomendar algum filme da lista do **usuário 1** para o **usuário 2**.

# Tipos de feedback em sistemas de recomendação
### Feedback explícito
É fornecido pelos usuários do sistema.

Esses feedbacks são fornecidos quando os usuários clicam nos botões **gostar** / **não gostar** em um vídeo no youtube por exemplo. Quando os usuários avaliam um produto dando um determinado número de estrelas. Em muitos casos, é difícil obter dados de feedback explícito, simplesmente porque alguns usuários simplesmente não interagem com o sistema.

### Feedback implícito
São dados relacionados a interação do usuário com o sistema. Por exemplo, quando o usuário visualiza um produto, ou quando o usuário chega até a parte final de uma notícia. Esses tipos de feedbacks costumam ser fáceis de coletar.

# Referências
- [Wikipedia](https://en.wikipedia.org/wiki/Recommender_system)
- [Medium - recommender-systems-explained](https://medium.com/recombee-blog/recommender-systems-explained-d98e8221f468)
- [Builtin - recommender-systems](https://builtin.com/data-science/recommender-systems)