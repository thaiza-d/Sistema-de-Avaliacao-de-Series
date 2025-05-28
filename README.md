# Sistema-de-Avaliacao-de-Series
Este projeto simula um pequeno sistema de gerenciamento de usuários, séries e avaliações, utilizando MySQL. Ele serve como prática para criação, modificação e consulta de dados com SQL, e pode ser usado como base para estudos ou aplicações simples.

## Estrutura do Projeto
O banco de dados se chama notas e é composto por três tabelas principais:

◻ usuarios: Contém informações de usuários, como nome, email, data de nascimento e sexo.

◻ series: Armazena informações sobre séries de TV, como nome, plataforma, ano de lançamento e gênero.

◻ avaliacoes: Relaciona usuários e séries por meio de notas e comentários.

## Comandos SQL Utilizados
#### ✅ Criação do Banco e Tabelas
◾ CREATE DATABASE com charset utf8mb4

◾ CREATE TABLE com PRIMARY KEY, AUTO_INCREMENT, ENUM, CHECK, FOREIGN KEY

#### ✅ Alterações Estruturais
◾ ALTER TABLE para adicionar colunas (nascimento, sexo, genero)

◾ MODIFY COLUMN para reorganizar a ordem das colunas

#### ✅ Inserções de Dados
◾ INSERT INTO com múltiplos registros realistas em todas as tabelas

#### ✅ Consultas SQL (SELECT)
🔹 Foram realizadas diversas consultas SQL para explorar os dados, como:

◾ Visualizar todas as tabelas (SELECT *)

◾ Exibir avaliações com nome do usuário, série, nota e comentário

◾ Filtrar por sexo (M/F)

◾ Ver avaliações acima de uma nota

◾ Calcular média das notas por série

◾ Ver avaliações de uma série específica (ex: Modern Family)

## Exemplo de consulta com JOIN

SELECT<br> 
  usuarios.nome AS nome_usuario,<br>
  series.nome AS nome_series,<br>
  avaliacoes.nota,<br>
  avaliacoes.comentario <br>
FROM avaliacoes <br>
JOIN usuarios ON avaliacoes.id_usuarios = usuarios.id <br>
JOIN series ON avaliacoes.id_series = series.id; <br>

## Consultas Avançadas
◻ Cálculo de média das notas por série com AVG e GROUP BY

◻ Ordenação de séries pela nota média (ORDER BY)

## Objetivo do Projeto
🔹 Este projeto tem como objetivo:

✔ Praticar o uso de SQL com foco em modelagem de dados relacional

✔ Criar relacionamentos entre tabelas com chaves estrangeiras

✔ Executar consultas SQL realistas e úteis

✔ Familiarizar com comandos de modificação de estrutura

## Observações
🔸 As colunas foram reorganizadas com ALTER TABLE ... AFTER para mostrar domínio sobre estrutura.

🔸 Os dados simulam um sistema de avaliação real, com diversas séries populares e comentários variados.

🔸 Pode ser expandido para incluir autenticação de usuários, sistema de login, categorias de séries, etc.



