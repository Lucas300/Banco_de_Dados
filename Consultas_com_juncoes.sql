use viagens

SELECT * FROM usuarios us 
INNER JOIN reservas rs ON us.id = rs.id_usuario;

SELECT * FROM usuarios us
INNER JOIN destios ds ON rs.id_destino = ds.id;

SELECT * FROM reservas rs
RIGHT JOIN destino ds
ON rs.id_destino = ds.id;
