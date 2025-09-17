-- Conecte ao banco após criá-lo
-- No PostgreSQL: \c biblioteca
-- No MySQL: USE biblioteca;

-- Tabela de autores
CREATE TABLE autores (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

-- Tabela de livros
CREATE TABLE livros (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(200) NOT NULL,
    id_autor INTEGER REFERENCES autores(id),
    ano_publicacao INT,
    quantidade_disponivel INT DEFAULT 1
);

-- Tabela de usuários
CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

-- Tabela de empréstimos
CREATE TABLE emprestimos (
    id SERIAL PRIMARY KEY,
    id_usuario INTEGER REFERENCES usuarios(id),
    id_livro INTEGER REFERENCES livros(id),
    data_emprestimo DATE NOT NULL DEFAULT CURRENT_DATE,
    data_devolucao DATE
);
