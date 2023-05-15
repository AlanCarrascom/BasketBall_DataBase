-- @Autor: Alan Michel Carrasco Meza
-- @Fecha de entrega: 14/mayo/2023


-- Creacion de Tablas
CREATE TABLE representante_legal(
	representante_id NUMERIC(10) NOT NULL,
    rfc VARCHAR(13) NOT NULL,
	nombre_completo VARCHAR(150) NOT NULL,
	direccion_fiscal VARCHAR(150) NOT NULL,

	CONSTRAINT represendante_id_pk PRIMARY KEY (representante_id),
	CONSTRAINT representante_rfc_uk UNIQUE (rfc)
);

CREATE TABLE director_tecnico(
	director_id NUMERIC(10) NOT NULL,
    nombre_completo VARCHAR(150) NOT NULL,
	numero_contrato NUMERIC(10) NOT NULL,
	fecha_ingreso DATE NOT NULL,
	fecha_salida DATE NULL,	-- Esto es null porque el director actual no tiene fecha de salida
	motivo_salida VARCHAR(100) NULL,

	CONSTRAINT director_id_pk PRIMARY KEY (director_id)
);

CREATE TABLE sede_catalogo(
    sede_id NUMERIC(10) NOT NULL,
	nombre VARCHAR(56) NOT NULL,
	direccion VARCHAR(150) NOT NULL,
	capacidad NUMERIC(6) NOT NULL,

    CONSTRAINT sede_id_pk PRIMARY KEY (sede_id)
);

CREATE TABLE equipo(
	equipo_id NUMERIC(10) NOT NULL,
	nombre_equipo VARCHAR(56) NOT NULL,
	representante_id NUMERIC(10) NOT NULL,
	director_id NUMERIC(10) NOT NULL,

	CONSTRAINT equipo_id_pk PRIMARY KEY (equipo_id),
	CONSTRAINT representante_equipo_fk FOREIGN KEY (representante_id) REFERENCES representante_legal (representante_id),
	CONSTRAINT director_equipo_fk FOREIGN KEY (director_id) REFERENCES director_tecnico (director_id)
);

CREATE TABLE logo(
	equipo_id NUMERIC(10) NOT NULL,
	imagen BLOB NOT NULL, -- Lo puse como una cadena para representar los bits.
	formato VARCHAR(10) NOT NULL,

	CONSTRAINT logo_equipo_fk FOREIGN KEY (equipo_id) REFERENCES equipo (equipo_id)
);

CREATE TABLE temporada(
	temporada_id NUMERIC(10) NOT NULL,
	fecha_inicio DATE NOT NULL,
	fecha_fin DATE NOT NULL,
	anio_temporada NUMERIC(10) NOT NULL,
	primer_lugar NUMERIC(10) NOT NULL,
	segundo_lugar NUMERIC(10) NOT NULL,

	CONSTRAINT temporada_id_pk PRIMARY KEY (temporada_id),
	CONSTRAINT primer_lugar_fk FOREIGN KEY (primer_lugar) REFERENCES equipo (equipo_id),
	CONSTRAINT segundo_lugar_fk FOREIGN KEY (segundo_lugar) REFERENCES equipo (equipo_id)
);

CREATE TABLE pais_catalogo(
	pais_id NUMERIC(10) NOT NULL,
	nombre VARCHAR(56) NOT NULL,

	CONSTRAINT pais_id_pk PRIMARY KEY (pais_id)
);

CREATE TABLE jugador(
	jugador_id NUMERIC(10) NOT NULL,
	nombre_jugador VARCHAR(30) NOT NULL,
	numero_jugador NUMERIC(2) NOT NULL,
	apellido_paterno VARCHAR(30) NOT NULL,
	apellido_materno VARCHAR(30) NULL,
	fecha_nacimiento DATE NOT NULL,
	equipo_id NUMERIC(10) NOT NULL,
	pais_id NUMERIC(10) NOT NULL,

	CONSTRAINT jugador_id_pk PRIMARY KEY (jugador_id),
	CONSTRAINT jugador_equipo_fk FOREIGN KEY (equipo_id) REFERENCES equipo (equipo_id),
	CONSTRAINT jugador_pais_fk FOREIGN KEY (pais_id) REFERENCES pais_catalogo (pais_id)
);

-- No necesito definir la hora porque el tipo de dato date ya lo almacena
CREATE TABLE partido(
	partido_id VARCHAR(10) NOT NULL,
	fecha_hora_partido DATE NOT NULL,
	equipo_a NUMERIC(10) NOT NULL,
	equipo_b NUMERIC(10) NOT NULL,
	sede_id NUMERIC(10) NOT NULL,
	temporada_id NUMERIC(10) NOT NULL,

	CONSTRAINT partido_id_pk PRIMARY KEY (partido_id),
	CONSTRAINT equipo_a_fk FOREIGN KEY (equipo_a) REFERENCES equipo (equipo_id),
	CONSTRAINT equipo_b_fk FOREIGN KEY (equipo_b) REFERENCES equipo (equipo_id),
	CONSTRAINT sede_partido_fk FOREIGN KEY (sede_id) REFERENCES sede_catalogo (sede_id),
	CONSTRAINT temporada_partido_fk FOREIGN KEY (temporada_id) REFERENCES temporada (temporada_id)
);

CREATE TABLE boleto(
    partido_id VARCHAR(10) NOT NULL,
    folio VARCHAR(7) NOT NULL,
    asiento VARCHAR(10) NOT NULL,
    precio NUMERIC(5) NOT NULL,

    CONSTRAINT boleto_partido_fk FOREIGN KEY (partido_id) REFERENCES partido (partido_id)
);

CREATE TABLE historico_director(
	historico_director_id NUMERIC(10) NOT NULL,
	equipo_id NUMERIC(10) NOT NULL,
	director_id NUMERIC(10) NOT NULL,

	CONSTRAINT historico_director_pk PRIMARY KEY (historico_director_id),
	CONSTRAINT historico_equipo_fk FOREIGN KEY (equipo_id) REFERENCES equipo (equipo_id),
	CONSTRAINT historico_director_fk FOREIGN KEY (director_id) REFERENCES director_tecnico (director_id)
);

-- Creacion de vista a partir de 2 tablas
CREATE VIEW jugador_equipo_view AS
SELECT j.nombre_jugador, j.apellido_paterno, e.nombre_equipo
FROM jugador j JOIN equipo e ON j.equipo_id = e.equipo_id;

-- Creacion de 2 sinonimos
CREATE OR REPLACE SYNONYM v_j_e FOR vista_jugador_equipo;
CREATE OR REPLACE SYNONYM encuentro FOR partido;

-- Creacion de secuencias
-- Los partidos tienen claves de 10 caracteres y las entidades débiles no tienen pk

CREATE SEQUENCE seq_sede_pk
START WITH 1
INCREMENT BY 1
MINVALUE 1
CACHE 20
NOORDER;

CREATE SEQUENCE seq_temporada_pk
START WITH 1
INCREMENT BY 1
MINVALUE 1
NOCACHE
ORDER;

CREATE SEQUENCE seq_pais_pk
START WITH 1
INCREMENT BY 1
MINVALUE 1
NOCACHE
NOORDER;

CREATE SEQUENCE seq_jugador_pk
START WITH 1
INCREMENT BY 1
MINVALUE 1
CACHE 20
NOORDER;

CREATE SEQUENCE seq_equipo_pk
START WITH 1
INCREMENT BY 1
MINVALUE 1
NOCACHE
NOORDER;

CREATE SEQUENCE seq_representante_pk
START WITH 1
INCREMENT BY 1
MINVALUE 1
NOCACHE
ORDER;

CREATE SEQUENCE seq_director_pk
START WITH 1
INCREMENT BY 1
MINVALUE 1
CACHE 20
ORDER;

CREATE SEQUENCE seq_historico_director_pk
START WITH 1
INCREMENT BY 1
MINVALUE 1
NOCACHE
ORDER;

CREATE SEQUENCE seq_numero_jugador
START WITH 1
MINVALUE 1
INCREMENT BY 1
NOCACHE
NOORDER;