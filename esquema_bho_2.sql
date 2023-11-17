CREATE SCHEMA `bho_peliculas_2`;
USE `bho_peliculas_2`;

CREATE TABLE `peliculas` (
    `id_pelicula` VARCHAR(500),
    `nombre_pelicula` VARCHAR(500),
    `tipo` VARCHAR(500),
    `genero` VARCHAR(500),
    `año_estreno` VARCHAR(500),
    `mes_estreno` VARCHAR(500),
    `direccion` VARCHAR(500),
    `argumento` MEDIUMTEXT,
    `duracion` VARCHAR(500),
    PRIMARY KEY (`id_pelicula`),
    UNIQUE (`nombre_pelicula`)  -- puede que haya más peliculas con el mismo nombre, ponemos unique para asegurarnos que coge solo uno; esto es porque no nos dejaba crear oscars
    );

CREATE TABLE `datos_interpretes` (
    `nombre_interprete` VARCHAR(500),
    `año_nacimiento`VARCHAR(500),
    `se_conoce_por` VARCHAR(500),
    `que_hace` VARCHAR(500),
    `premios` VARCHAR(500),
    PRIMARY KEY (`nombre_interprete`)
);

CREATE TABLE `oscars` (
    `fecha_ceremonia` VARCHAR(500),
    `nombre_pelicula`VARCHAR(500),
    `direccion` VARCHAR(500),
    `nombre_actor` VARCHAR(500),
    `nombre_actriz` VARCHAR(500),
    PRIMARY KEY (`nombre_pelicula`),
    FOREIGN KEY (`nombre_actor`)
	REFERENCES `datos_interpretes` (`nombre_interprete`)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
    FOREIGN KEY (`nombre_actriz`)
    REFERENCES `datos_interpretes` (`nombre_interprete`),
    FOREIGN KEY (`nombre_pelicula`)
    REFERENCES `peliculas` (`nombre_pelicula`)
);

CREATE TABLE `puntuaciones` (
    `id_pelicula` VARCHAR(500),
    `nombre_pelicula`VARCHAR(500),
    `puntos_imdb` VARCHAR(500),
    `puntos_rotten` VARCHAR(500),
    PRIMARY KEY (`id_pelicula`),
    FOREIGN KEY (`id_pelicula`)
	REFERENCES `peliculas` (`id_pelicula`)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);

CREATE TABLE `interpretes_peliculas` (
	`id_interpretes_peliculas` INT NOT NULL AUTO_INCREMENT,
    `id_pelicula` VARCHAR(500),
    `nombre_interprete` VARCHAR(500),
     PRIMARY KEY (`id_interpretes_peliculas`),
     FOREIGN KEY (`nombre_interprete`)
     REFERENCES `datos_interpretes` (`nombre_interprete`)
	 ON DELETE CASCADE
	 ON UPDATE CASCADE,
     FOREIGN KEY (`id_pelicula`)
     REFERENCES `peliculas` (`id_pelicula`)
	 ON DELETE CASCADE
	 ON UPDATE CASCADE
);

CREATE TABLE `guionistas_peliculas` (
	`id_guionistas_peliculas` INT NOT NULL AUTO_INCREMENT,
    `id_pelicula` VARCHAR(500),
    `nombre_guionista` VARCHAR(500),
     PRIMARY KEY (`id_guionistas_peliculas`),
     FOREIGN KEY (`id_pelicula`)
     REFERENCES `peliculas` (`id_pelicula`)
	 ON DELETE CASCADE
	 ON UPDATE CASCADE
);
