-- DATABASE E skatepark

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE skaters (
    id uuid  DEFAULT uuid_generate_v4(),
    nombre VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(255) PRIMARY KEY NOT NULL,
    anios_experiencia INT NOT NULL,
    especialidad VARCHAR(255) NOT NULL,
    foto VARCHAR(255) NOT NULL,
    estado BOOLEAN NOT NULL DEFAULT FALSE
    );

INSERT INTO skaters (email,nombre,password,anios_experiencia,especialidad,foto,estado)
	values('hola@gmail.com','juanito',123123,5,'skate', 'jasgf<dsgf<sj', true);
