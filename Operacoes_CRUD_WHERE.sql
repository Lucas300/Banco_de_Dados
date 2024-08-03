use viagens;

SELECT * FROM usuarios
WHERE id = 1 OR nome LIKE "%Pamela%";

UPDATE usuarios SET id=4 
WHERE email = "teste@teste.com";

DELETE FROM destino WHERE nome = "Praia do Rosa";

