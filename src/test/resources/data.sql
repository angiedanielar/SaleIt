
DROP TABLE IF EXISTS Articulo CASCADE;
DROP TABLE IF EXISTS Categoria CASCADE;
DROP TABLE IF EXISTS Subasta CASCADE;
DROP TABLE IF EXISTS Puja CASCADE;
DROP TABLE IF EXISTS Usuario CASCADE;
DROP TABLE IF EXISTS Favoritos CASCADE;


CREATE TABLE IF NOT EXISTS Usuario(id SERIAL PRIMARY KEY, email VARCHAR(50) NOT NULL, password VARCHAR(20) NOT NULL, nombre VARCHAR(50) NOT NULL, documento VARCHAR(50) NOT NULL, tipodedocumento VARCHAR(20) NOT NULL, telefono VARCHAR(50) NOT NULL);

CREATE TABLE IF NOT EXISTS Categoria (id SERIAL PRIMARY KEY, nombre VARCHAR(60) NOT NULL);

CREATE TABLE IF NOT EXISTS Articulo (id SERIAL PRIMARY KEY, nombre VARCHAR(50) NOT NULL, estadodeuso VARCHAR(5) NOT NULL, descripcion VARCHAR(600), preciominimo NUMERIC NOT NULL, dimensiones VARCHAR(20), ubicacion VARCHAR(30) NOT NULL, imagen VARCHAR(20) NOT NULL, categoria INTEGER REFERENCES Categoria(id));

CREATE TABLE IF NOT EXISTS Favoritos  (idusuario INTEGER NOT NULL REFERENCES Usuario(id), idarticulo INTEGER NOT NULL REFERENCES Articulo(id) );

ALTER TABLE Favoritos ADD CONSTRAINT PK_FAVORITOS PRIMARY KEY (idusuario, idarticulo);

CREATE TABLE IF NOT EXISTS Subasta (id SERIAL PRIMARY KEY, fechainicio TIMESTAMP, fechafin TIMESTAMP NOT NULL, vendedor INTEGER REFERENCES Usuario(id), articulo INTEGER references Articulo(id));

CREATE TABLE IF NOT EXISTS Puja(id SERIAL PRIMARY KEY, monto INTEGER NOT NULL, fecha TIMESTAMP, usuario INTEGER REFERENCES Usuario(id), subasta INTEGER REFERENCES Subasta(id));
