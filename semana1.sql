CREATE DATABASE posts;

\c post

CREATE TABLE post (
    id SERIAL,
    nombre VARCHAR(25),
    fecha DATE,
    contenido VARCHAR,
    descripcion VARCHAR
    PRIMARY KEY(id)
);

INSERT INTO post(id, nombre, fecha, contenido, descripcion)
VALUES(1, 'pamela', CURRENT_DATE, 'contenido 1', 'descripcion 1')

INSERT INTO post (id, nombre, fecha, contenido, descripcion)
VALUES(2, 'pamela', CURRENT_DATE, 'contenido 2', 'descripcion 2')

INSERT INTO post (id, nombre, fecha, contenido, descripcion)
VALUES(3, 'carlos', CURRENT_DATE, 'contenido 3', 'descripcion 3')

ALTER TABLE post
ADD titulo VARCHAR(20);

UPDATE post SET titulo = 'titulo 1'
WHERE id = 1;

UPDATE post SET titulo = 'titulo 2'
WHERE id = 2;

UPDATE post SET titulo = 'titulo 3'
WHERE id = 3;

INSERT INTO post (id, nombre, fecha, contenido, descripcion, titulo)
VALUES(4, 'pedro', CURRENT_DATE, 'contenido 4', 'descripcion 4');

INSERT INTO post (id, nombre, fecha, contenido, descripcion, titulo)
VALUES(5, 'pedro', CURRENT_DATE, 'contenido 5', 'descripcion 5');

DELETE FROM post WHERE  nombre = 'carlos';

INSERT INTO post (id, nombre, fecha, contenido, descripcion, titulo)
VALUES(6, 'carlos', CURRENT_DATE, 'contenido 6', 'descripcion 6');


CREATE TABLE comentarios(
    id SERIAL,
    post_id INT,
    fecha DATE,
    hora TIME,
    contenido VARCHAR,
    PRIMARY KEY(ID),
    FOREIGN KEY(post_id) REFERENCES post(id)
);

INSERT INTO comentarios (post_id, fecha, hora, contanido)
VALUES (1, CURRENT_DATE, currenta_times)
