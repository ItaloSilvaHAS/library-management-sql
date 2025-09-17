-- View: livros com seus autores
CREATE VIEW livros_com_autores AS
SELECT 
    l.id, l.titulo, a.nome AS autor, l.ano_publicacao, l.quantidade_disponivel
FROM livros l
JOIN autores a ON l.id_autor = a.id;

-- Consulta: todos os livros e seus autores
SELECT * FROM livros_com_autores;

-- Consulta: livros emprestados atualmente
SELECT 
    e.id AS emprestimo_id,
    u.nome AS usuario,
    l.titulo AS livro,
    e.data_emprestimo
FROM emprestimos e
JOIN usuarios u ON e.id_usuario = u.id
JOIN livros l ON e.id_livro = l.id
WHERE e.data_devolucao IS NULL;

-- Consulta: usuários com mais de 1 empréstimo
SELECT 
    u.nome, COUNT(*) AS total_emprestimos
FROM emprestimos e
JOIN usuarios u ON e.id_usuario = u.id
GROUP BY u.nome
HAVING COUNT(*) > 1;
