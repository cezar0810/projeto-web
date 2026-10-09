USE dbLivraria;

-- 1.1
SELECT tblLivro.idLivro, tblLivro.nomeLivro, tblLivro.precoLivro, tblEditora.nomeEditora
FROM tblLivro
LEFT JOIN tblEditora ON tblLivro.idEditora = tblEditora.idEditora;

-- 1.2
SELECT tblLivro.idLivro, tblLivro.nomeLivro, tblLivro.precoLivro, tblEditora.nomeEditora
FROM tblLivro
RIGHT JOIN tblEditora ON tblLivro.idEditora = tblEditora.idEditora;

-- 1.3
SELECT tblLivro.idLivro, tblLivro.nomeLivro, tblLivro.precoLivro, tblEditora.nomeEditora
FROM tblLivro
LEFT JOIN tblEditora ON tblLivro.idEditora = tblEditora.idEditora
UNION
SELECT tblLivro.idLivro, tblLivro.nomeLivro, tblLivro.precoLivro, tblEditora.nomeEditora
FROM tblLivro
RIGHT JOIN tblEditora ON tblLivro.idEditora = tblEditora.idEditora;

-- 1.4
SELECT tblLivro.idLivro,
       tblLivro.nomeLivro,
       tblAutor.nomeAutor,
       tblEditora.nomeEditora,
       tblAssunto.nomeAssunto,
       tblLivro.precoLivro
FROM tblLivro
LEFT JOIN tblAutor   ON tblLivro.idAutor   = tblAutor.idAutor
LEFT JOIN tblEditora ON tblLivro.idEditora = tblEditora.idEditora
LEFT JOIN tblAssunto ON tblLivro.idAssunto = tblAssunto.idAssunto;

-- 1.5
SELECT tblLivro.nomeLivro,
       tblAutor.nomeAutor,
       tblEditora.nomeEditora,
       tblAssunto.nomeAssunto,
       tblLivro.precoLivro
FROM tblLivro
LEFT JOIN tblAutor   ON tblLivro.idAutor   = tblAutor.idAutor
LEFT JOIN tblEditora ON tblLivro.idEditora = tblEditora.idEditora
LEFT JOIN tblAssunto ON tblLivro.idAssunto = tblAssunto.idAssunto
WHERE tblLivro.nomeLivro LIKE '%a%'
  AND tblLivro.precoLivro > 50;

SELECT tblLivro.nomeLivro, tblAutor.nomeAutor
FROM tblLivro
LEFT JOIN tblAutor ON tblLivro.idAutor = tblAutor.idAutor
WHERE tblAutor.nomeAutor LIKE 'A%';

-- 1.6
SELECT nomeLivro, precoLivro
FROM tblLivro
ORDER BY precoLivro ASC;

SELECT nomeLivro, precoLivro
FROM tblLivro
ORDER BY precoLivro DESC;

-- 1.7
SELECT nomeLivro, precoLivro
FROM tblLivro
ORDER BY precoLivro DESC
LIMIT 3;

-- EXTRA 1
SELECT tblEditora.nomeEditora, COUNT(tblLivro.idLivro) AS total_livros
FROM tblEditora
LEFT JOIN tblLivro ON tblLivro.idEditora = tblEditora.idEditora
GROUP BY tblEditora.idEditora, tblEditora.nomeEditora;

-- EXTRA 2
SELECT tblEditora.nomeEditora, COUNT(tblLivro.idLivro) AS total_livros
FROM tblEditora
INNER JOIN tblLivro ON tblLivro.idEditora = tblEditora.idEditora
GROUP BY tblEditora.idEditora, tblEditora.nomeEditora
HAVING total_livros > 3;

-- EXTRA 3
SELECT tblEditora.nomeEditora, AVG(tblLivro.precoLivro) AS media_preco
FROM tblEditora
INNER JOIN tblLivro ON tblLivro.idEditora = tblEditora.idEditora
GROUP BY tblEditora.idEditora, tblEditora.nomeEditora;

-- EXTRA 4
SELECT tblEditora.nomeEditora, AVG(tblLivro.precoLivro) AS media_preco
FROM tblEditora
INNER JOIN tblLivro ON tblLivro.idEditora = tblEditora.idEditora
GROUP BY tblEditora.idEditora, tblEditora.nomeEditora
ORDER BY media_preco DESC
LIMIT 1;

-- EXTRA 5
SELECT tblLivro.nomeLivro, tblAutor.nomeAutor
FROM tblLivro
LEFT JOIN tblAutor ON tblLivro.idAutor = tblAutor.idAutor;

SELECT tblAutor.nomeAutor, tblLivro.nomeLivro
FROM tblAutor
LEFT JOIN tblLivro ON tblLivro.idAutor = tblAutor.idAutor;

-- EXTRA 6
SELECT tblAutor.nomeAutor, COUNT(tblLivro.idLivro) AS total_livros
FROM tblAutor
INNER JOIN tblLivro ON tblLivro.idAutor = tblAutor.idAutor
GROUP BY tblAutor.idAutor, tblAutor.nomeAutor
ORDER BY total_livros DESC
LIMIT 3;

-- EXTRA 7
(SELECT nomeLivro, precoLivro
 FROM tblLivro
 ORDER BY precoLivro DESC
 LIMIT 5)
UNION
(SELECT nomeLivro, precoLivro
 FROM tblLivro
 ORDER BY precoLivro ASC
 LIMIT 5);