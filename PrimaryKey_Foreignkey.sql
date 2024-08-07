use viagens

/*Definindo as  primary key*/
ALTER TABLE usuarios
MODIFY COLUMN id INT AUTO_INCREMENT,
ADD PRIMARY KEY (id);


ALTER TABLE reservas
MODIFY COLUMN id INT AUTO_INCREMENT,
ADD PRIMARY KEY (id);

/*Aqui precisamos excluir alguns IDs reptidos , senão não seria possivel implementar a primary key*/
DELETE FROM reservas
WHERE id = 1;

DELETE FROM destino
WHERE id = 1;

ALTER TABLE destino
MODIFY COLUMN id int AUTO_INCREMENT,
ADD PRIMARY KEY (id);

select * from usuarios;
select * from destino;
select * from reservas;

/*Definindo as  as foreign key*/
ALTER TABLE reservas
ADD CONSTRAINT fk_reservas_usuarios
FOREIGN KEY(id_usuario) REFERENCES usuarios(id);

ALTER TABLE reservas
ADD CONSTRAINT fk_reservas_destino
FOREIGN KEY(id_usuario) REFERENCES destino(id);

INSERT INTO reservas (id, id_usuario, id_destino,data,status) VALUES 
( 7, 2, 2, '2023-07-10','confirmada');