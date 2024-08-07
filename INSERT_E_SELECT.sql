use viagens;

INSERT INTO usuarios (id , nome , email , data_nascimento, endereco) VALUES (2 , "Pamela Apolinario","teste@Teste.com","1992-10-05","Av das rosas 100 - Bairro Alto São Paulo/SP");
INSERT INTO destino (id , nome , descricao) VALUES(1,'Praia Rosa','Linda Praia');
INSERT INTO reservas (id , id_usuario , id_destino,status,data) VALUES (1,1,1,'pendente','2024-11-11');

INSERT INTO usuarios (id , nome , email , data_nascimento, endereco) VALUES
(1 , "Joao Silva","Joao@Teste.com","1990-10-05","Rua A, 123 , Cidade x - Estado y"),
(2 , "Maria Santos","Maria@Teste.com","1985-10-05","Rua A, 123 , Cidade y - Estado x"),
(3 , "Pedro Souza","Pedro@Teste.com","1998-10-05","Avenida C , 789, Cidade x - Estado Y");

INSERT INTO destino (id , nome , descricao) VALUES
(1 , 'Praia das Tartarugas','Uma bela praia com areas brancas e mar cristalino'),
(2 , 'Cachoeira do Vale Verde','Uma chachoeira exuberante cercada pro natureza'),
(3 , 'Cidade Histórica de Pedra alta','Uma cidade rica em História e arquitetura');

INSERT INTO reservas (id, id_usuario, id_destino,data,status) VALUES 
(1, 1, 2, '2023-07-10','confirmada'),
(2, 2, 1, '2023-07-10','confirmada'),
(3, 3, 3, '2023-07-10','confirmada');

select * from usuarios;
select * from destino;
select * from reservas;