-- João empresta "1984"
UPDATE livros
SET quantidade_disponivel = quantidade_disponivel - 1
WHERE id = 2 AND quantidade_disponivel > 0;

INSERT INTO emprestimos (id_usuario, id_livro)
VALUES (1, 2);

-- Maria empresta "Harry Potter"
UPDATE livros
SET quantidade_disponivel = quantidade_disponivel - 1
WHERE id = 1 AND quantidade_disponivel > 0;

INSERT INTO emprestimos (id_usuario, id_livro)
VALUES (2, 1);

-- João devolve "1984"
UPDATE emprestimos
SET data_devolucao = CURRENT_DATE
WHERE id_usuario = 1 AND id_livro = 2 AND data_devolucao IS NULL;

UPDATE livros
SET quantidade_disponivel = quantidade_disponivel + 1
WHERE id = 2;
