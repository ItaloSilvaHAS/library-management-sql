-- Inserindo autores
INSERT INTO autores (nome) VALUES ('J.K. Rowling');
INSERT INTO autores (nome) VALUES ('George Orwell');
INSERT INTO autores (nome) VALUES ('Machado de Assis');

-- Inserindo livros
INSERT INTO livros (titulo, id_autor, ano_publicacao, quantidade_disponivel)
VALUES 
    ('Harry Potter e a Pedra Filosofal', 1, 1997, 3),
    ('1984', 2, 1949, 2),
    ('Dom Casmurro', 3, 1899, 1);

-- Inserindo usuários
INSERT INTO usuarios (nome, email) 
VALUES 
    ('João da Silva', 'joao@email.com'),
    ('Maria Oliveira', 'maria@email.com'),
    ('Carlos Souza', 'carlos@email.com');
