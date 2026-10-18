
CREATE TABLE socios (
    id_socio        INT PRIMARY KEY,
    nombres         VARCHAR(50)  NOT NULL,
    apellidos       VARCHAR(50)  NOT NULL,
    edad            INT          NOT NULL,
    fecha_registro  VARCHAR(10)  NOT NULL,
    activo          BOOLEAN      NOT NULL
);


INSERT INTO socios (id_socio, nombres, apellidos, edad, fecha_registro, activo)
VALUES
(1, 'Anthony','Herrera',26,'2026-01-15', true),
(2, 'Ana','Torres', 17, '2026-02-20', true),
(3, 'Luis','Garcia', 32, '2026-03-10', false),
(4, 'Maria','Salinas',19, '2026-04-05', true),
(5, 'Sebastian','Rios', 15, '2026-05-18', true);

select * from socios;

--Consulta 1 : Mostrar únicamente nombres, apellidos y edad de los socios que tengan activo = true y sean mayores a 18 años.

SELECT nombres, apellidos, edad
FROM socios
WHERE activo = true AND edad > 18; 

--Consulta 2: Mostrar los socios registrados después de '2026-02-01' utilizando comparación sobre el campo fecha_registro

SELECT *
FROM socios
WHERE fecha_registro > '2026-02-01';

--Consulta 3: Mostrar todos los socios ordenados por edad de mayor a menor (ORDER BY DESC)

SELECT *
FROM socios
ORDER BY edad DESC;

--Agregar columna email

ALTER TABLE socios
ADD COLUMN email VARCHAR(100);

--Asignar correo

UPDATE socios
SET email = 'anthony.herrra@gmail.com'
WHERE id_socio = 1;
