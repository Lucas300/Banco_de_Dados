use viagens;

CREATE TABLE usuarios_nova(
	id INT,
    nome VARCHAR(255) COMMENT 'Nome do usuário',
    email VARCHAR(100) NOT NULL UNIQUE COMMENT 'E-mail do usuário',
    data_nascimento DATE NOT NULL COMMENT 'Data de nascimento',
    endereco VARCHAR(50) NOT NULL COMMENT 'Endereço do usuário'
);

-- Migrando os dados de uma tabela para outra
INSERT INTO usuarios_nova(id , nome , email , endereco, data_nascimento)
SELECT id , nome , email , endereco, data_nascimento
FROM usuarios;

-- Apagando a tabela usuarios (antiga)
DROP TABLE usuarios;

-- Alterando o nome da tabela usuarios_nova para usuarios
ALTER TABLE usuarios_nova RENAME usuarios;


ALTER TABLE usuarios MODIFY COLUMN endereco VARCHAR(150);
