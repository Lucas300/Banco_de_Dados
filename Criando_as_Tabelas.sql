
CREATE DATABASE viagens;
use viagens;
CREATE TABLE usuarios(
	id INT,
    nome VARCHAR(255) COMMENT 'Nome do usuário',
    email VARCHAR(100) NOT NULL UNIQUE COMMENT 'E-mail do usuário',
    endereco VARCHAR(50) NOT NULL COMMENT 'Endereço do usuário',
    data_nascimento DATE NOT NULL COMMENT 'Data de nascimento'
);
CREATE TABLE destino(
	id INT,
  	nome VARCHAR(100) NOT NULL UNIQUE COMMENT 'Nome do destino',
  	descricao VARCHAR(255) NOT NULL COMMENT 'Descrição do destino'
);
CREATE TABLE reservas(
	id INT COMMENT 'Indentificador único da reserva',
  	id_usuario INT COMMENT 'Referência ao Id do Usuário que fez a reserva',
  	id_destino INT COMMENT 'Referência ao Id do destino da reserva',
  	data DATE COMMENT 'Data da reserva',
  	status VARCHAR(255) DEFAULT 'pendente' COMMENT 'Status da reserva(confirmada, pendente, cancelada, etc...)'
);