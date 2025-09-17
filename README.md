# 📚 Sistema de Biblioteca com SQL

Projeto de banco de dados relacional para gerenciamento de uma biblioteca, com foco em operações de CRUD (Create, Read, Update, Delete) e conceitos essenciais de modelagem, relacionamentos, integridade referencial e consultas SQL.

---

## 🧠 Objetivo do Projeto

O objetivo deste projeto é demonstrar habilidades fundamentais de um futuro DBA (Administrador de Banco de Dados) através da criação de um sistema simples, porém completo, de gerenciamento de biblioteca, utilizando SQL puro e boas práticas de modelagem.

Este projeto faz parte da minha jornada de transição do ensino técnico para a faculdade, com foco no fortalecimento do meu portfólio como futuro DBA.

---

## 🛠️ Tecnologias Utilizadas

- PostgreSQL *(pode ser adaptado para MySQL/MariaDB)*
- SQL Puro (DDL e DML)
- DBeaver / pgAdmin *(ou qualquer outro client SQL)*
- Git + GitHub

---

## 🗃️ Estrutura do Banco de Dados

### Tabelas Criadas:

- `autores`: Armazena os autores dos livros
- `livros`: Contém informações sobre os livros disponíveis
- `usuarios`: Representa os usuários que pegam livros emprestados
- `emprestimos`: Registra os empréstimos e devoluções de livros

### Relacionamentos:

- Um **livro** pertence a **um autor**
- Um **empréstimo** pertence a **um usuário** e a **um livro**

---

## 📁 Estrutura do Repositório

```bash
biblioteca-sql/
├── create_database.sql         # Criação do banco de dados
├── create_tables.sql           # Estrutura das tabelas com relacionamentos
├── inserts_exemplo.sql         # Dados fictícios para testes
├── emprestimos_devolucoes.sql  # Simulações de empréstimos e devoluções
└── views_e_queries.sql         # Views e consultas úteis para análise
```

## ▶️ Como Executar o Projeto

### 🔧 1. Crie o banco de dados:
```sql
CREATE DATABASE biblioteca;
```

## 🔗 2. Conecte-se ao banco:

### No PostgreSQL:
```sql
\c biblioteca
```

### No MySQL:

```
USE biblioteca;
```

## 🏗️ 3. Crie as tabelas:

Execute o conteúdo do arquivo `create_tables.sql`.

---

## 🧪 4. Insira dados de exemplo:

Execute `inserts_exemplo.sql` para popular o banco com autores, livros e usuários.

---

## 🔁 5. Simule empréstimos e devoluções:

Rode os scripts em `emprestimos_devolucoes.sql`.

---

## 🔍 6. Explore as views e consultas:

Execute `views_e_queries.sql` para ver relatórios e análises dos dados.

---

## 🔍 Exemplos de Consultas

### 📚 Livros atualmente emprestados:
```sql
SELECT u.nome, l.titulo, e.data_emprestimo
FROM emprestimos e
JOIN usuarios u ON e.id_usuario = u.id
JOIN livros l ON e.id_livro = l.id
WHERE e.data_devolucao IS NULL;


