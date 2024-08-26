-- Desafio 01 Buscar o nome e ano dos filmes --

SELECT
	Nome,
	Ano
FROM Filmes

-- Desafio 02 Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano --

SELECT * FROM Filmes
ORDER BY Ano 

-- Desafio 03 Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração --

SELECT * FROM Filmes 
WHERE Nome = 'De Volta para o Futuro'

-- Desafio 04 Buscar os filmes lançados em 1997 --

SELECT * FROM Filmes 
WHERE Ano = 1997

-- Desafio 05 Buscar os filmes lançados APÓS o ano 2000 --

SELECT * FROM Filmes 
WHERE Ano > 2000;

-- Desafio 06 Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente --

SELECT * FROM Filmes 
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao 

-- Desafio 07 Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente --

SELECT Ano,
	COUNT(*) Quantidade
FROM Filmes 
GROUP BY Ano
ORDER BY Quantidade DESC

-- Desafio 08 Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome --

SELECT * FROM Atores
WHERE Genero = 'M'

-- Desafio 09 Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome --

SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome 

-- Desafio 10 Buscar o nome do filme e o gênero --

SELECT f.Nome, g.Genero 
FROM Filmes f   
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme   
INNER JOIN Generos g ON g.Id = fg.IdGenero 

-- Desafio 11 Buscar o nome do filme e o gênero do tipo "Mistério" --

SELECT f.Nome, g.Genero 
FROM Filmes f   
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme   
INNER JOIN Generos g ON g.Id = fg.IdGenero 
WHERE g.Genero = 'Mistério'

-- Desafio 12 Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel --

SELECT  
    Filmes.Nome,
    Atores.PrimeiroNome,
    Atores.UltimoNome, 
    ElencoFilme.Papel  
FROM  
    Filmes  
    INNER JOIN ElencoFilme ON IdFilme = ElencoFilme.IdFilme 
    INNER JOIN Atores ON ElencoFilme.IdAtor = IdAtor 
 