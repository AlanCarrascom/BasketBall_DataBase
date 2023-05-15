-- @Autor: Alan Michel Carrasco Meza
-- @Fecha de entrega: 14/mayo/2023

-- R E P R E S E N T A N T E S (O)
INSERT INTO representante_legal (representante_id, rfc, nombre_completo, direccion_fiscal)
VALUES (seq_representante_pk.NEXTVAL, 'XAXX010101000', 'Santiago Ramírez', 'Calle Primavera 123, Ciudad Ficticia, Estado Inexistente');

INSERT INTO representante_legal (representante_id, rfc, nombre_completo, direccion_fiscal)
VALUES (seq_representante_pk.NEXTVAL, 'ABCD123456789', 'Valeria Fernández', 'Avenida Libertad 456, Pueblo Imaginario, Provincia Desconocida');

INSERT INTO representante_legal (representante_id, rfc, nombre_completo, direccion_fiscal)
VALUES (seq_representante_pk.NEXTVAL, 'PQRZ987654321', 'Andrés López', 'Calle del Sol 789, Villa Irreal, Región Fantástica');

INSERT INTO representante_legal (representante_id, rfc, nombre_completo, direccion_fiscal)
VALUES (seq_representante_pk.NEXTVAL, 'LMNO567890123', 'Sofía García', 'Avenida Principal 321, Ciudad Irreal, Departamento Desconocido');

INSERT INTO representante_legal (representante_id, rfc, nombre_completo, direccion_fiscal)
VALUES (seq_representante_pk.NEXTVAL, 'UVWX098765432', 'Mateo Torres', 'Calle del Bosque 987, Pueblo Imaginado, Estado Inexistente');

INSERT INTO representante_legal (representante_id, rfc, nombre_completo, direccion_fiscal)
VALUES (seq_representante_pk.NEXTVAL, 'YZAB210987654', 'Isabella Rodríguez', 'Avenida Central 654, Ciudad Fantasía, Provincia Desconocida');

INSERT INTO representante_legal (representante_id, rfc, nombre_completo, direccion_fiscal)
VALUES (seq_representante_pk.NEXTVAL, 'CDEF987654321', 'Sebastián Martínez', 'Calle de la Luna 321, Villa Soñada, Región Imaginaria');


-- D I R E C T O R E S (Actuales) (O)
INSERT INTO director_tecnico (director_id, nombre_completo, numero_contrato, fecha_ingreso, fecha_salida, motivo_salida)
VALUES (seq_director_pk.NEXTVAL, 'Valentina Herrera', 123456, TO_DATE('2022-01-01', 'YYYY-MM-DD'), NULL, NULL);

INSERT INTO director_tecnico (director_id, nombre_completo, numero_contrato, fecha_ingreso, fecha_salida, motivo_salida)
VALUES (seq_director_pk.NEXTVAL, 'Leonardo Silva', 223456, TO_DATE('2022-01-01', 'YYYY-MM-DD'), NULL, NULL);

INSERT INTO director_tecnico (director_id, nombre_completo, numero_contrato, fecha_ingreso, fecha_salida, motivo_salida)
VALUES (seq_director_pk.NEXTVAL, 'Camila Vargas', 323456, TO_DATE('2022-01-01', 'YYYY-MM-DD'), NULL, NULL);

INSERT INTO director_tecnico (director_id, nombre_completo, numero_contrato, fecha_ingreso, fecha_salida, motivo_salida)
VALUES (seq_director_pk.NEXTVAL, 'Nicolás Castro', 523456, TO_DATE('2022-01-01', 'YYYY-MM-DD'), NULL, NULL);

INSERT INTO director_tecnico (director_id, nombre_completo, numero_contrato, fecha_ingreso, fecha_salida, motivo_salida)
VALUES (seq_director_pk.NEXTVAL, 'Lucía Paredes', 423456, TO_DATE('2022-01-01', 'YYYY-MM-DD'), NULL, NULL);

INSERT INTO director_tecnico (director_id, nombre_completo, numero_contrato, fecha_ingreso, fecha_salida, motivo_salida)
VALUES (seq_director_pk.NEXTVAL, 'Daniel Muñoz', 723456, TO_DATE('2022-01-01', 'YYYY-MM-DD'), NULL, NULL);

INSERT INTO director_tecnico (director_id, nombre_completo, numero_contrato, fecha_ingreso, fecha_salida, motivo_salida)
VALUES (seq_director_pk.NEXTVAL, 'Javier Duarte', 823456, TO_DATE('2022-01-01', 'YYYY-MM-DD'), NULL, NULL);

-- P A I S E S (O)
INSERT INTO pais_catalogo (pais_id, nombre)
VALUES (seq_pais_pk.NEXTVAL, 'Mexico');

INSERT INTO pais_catalogo (pais_id, nombre)
VALUES (seq_pais_pk.NEXTVAL, 'Canada');

INSERT INTO pais_catalogo (pais_id, nombre)
VALUES (seq_pais_pk.NEXTVAL, 'Alemania');

INSERT INTO pais_catalogo (pais_id, nombre)
VALUES (seq_pais_pk.NEXTVAL, 'Japon');

INSERT INTO pais_catalogo (pais_id, nombre)
VALUES (seq_pais_pk.NEXTVAL, 'Australia');

INSERT INTO pais_catalogo (pais_id, nombre)
VALUES (seq_pais_pk.NEXTVAL, 'Brasil');

INSERT INTO pais_catalogo (pais_id, nombre)
VALUES (seq_pais_pk.NEXTVAL, 'Francia');

-- S E D E S
INSERT INTO sede_catalogo (sede_id, nombre, direccion, capacidad)
VALUES (seq_sede_pk.NEXTVAL, 'Madison Square Garden', '4 Pennsylvania Plaza, New York, NY 10001, Estados Unidos', 20789);

INSERT INTO sede_catalogo (sede_id, nombre, direccion, capacidad)
VALUES (seq_sede_pk.NEXTVAL, 'Staples Center', '1111 S Figueroa St, Los Angeles, CA 90015, Estados Unidos', 19068);

INSERT INTO sede_catalogo (sede_id, nombre, direccion, capacidad)
VALUES (seq_sede_pk.NEXTVAL, 'United Center', '1901 W Madison St, Chicago, IL 60612, Estados Unidos', 20917);

INSERT INTO sede_catalogo (sede_id, nombre, direccion, capacidad)
VALUES (seq_sede_pk.NEXTVAL, 'TD Garden', '100 Legends Way, Boston, MA 02114, Estados Unidos', 19596);

INSERT INTO sede_catalogo (sede_id, nombre, direccion, capacidad)
VALUES (seq_sede_pk.NEXTVAL, 'Oracle Arena', '7000 Coliseum Way, Oakland, CA 94621, Estados Unidos', 10596);

INSERT INTO sede_catalogo (sede_id, nombre, direccion, capacidad)
VALUES (seq_sede_pk.NEXTVAL, 'Fiserv Forum', ' 1111 Vel R. Phillips Ave, Milwaukee, WI 53203, Estados Unidos', 17341);

INSERT INTO sede_catalogo (sede_id, nombre, direccion, capacidad)
VALUES (seq_sede_pk.NEXTVAL, 'Smoothie King Center', '1501 Dave Dixon Dr, New Orleans, LA 70113, Estados Unidos', 16867);

-- E Q U I P O S
INSERT INTO equipo (equipo_id, nombre_equipo, representante_id, director_id)
VALUES (seq_equipo_pk.NEXTVAL, 'Los Angeles Lakers', 1, 1);

INSERT INTO equipo (equipo_id, nombre_equipo, representante_id, director_id)
VALUES (seq_equipo_pk.NEXTVAL, 'Boston Celtics', 2, 2);

INSERT INTO equipo (equipo_id, nombre_equipo, representante_id, director_id)
VALUES (seq_equipo_pk.NEXTVAL, 'Chicago Bulls', 3, 3);

INSERT INTO equipo (equipo_id, nombre_equipo, representante_id, director_id)
VALUES (seq_equipo_pk.NEXTVAL, 'Golden State Warriors', 4, 4);

INSERT INTO equipo (equipo_id, nombre_equipo, representante_id, director_id)
VALUES (seq_equipo_pk.NEXTVAL, 'Milwaukee Bucks', 5, 5);

INSERT INTO equipo (equipo_id, nombre_equipo, representante_id, director_id)
VALUES (seq_equipo_pk.NEXTVAL, 'Miami Heat', 6, 6);

INSERT INTO equipo (equipo_id, nombre_equipo, representante_id, director_id)
VALUES (seq_equipo_pk.NEXTVAL, 'Brooklyn Nets', 7, 7);

-- D I R E C T O R E S (Pasados)	E 	  H I S T O R I C O
INSERT INTO director_tecnico (director_id, nombre_completo, numero_contrato, fecha_ingreso, fecha_salida, motivo_salida)
VALUES (seq_director_pk.NEXTVAL, 'Sergio Mendoza', 14892, TO_DATE('2021-01-01', 'YYYY-MM-DD'), TO_DATE('2021-12-31', 'YYYY-MM-DD'), 'Negligencia');
INSERT INTO historico_director(historico_director_id, equipo_id, director_id)
VALUES (seq_historico_director_pk.NEXTVAL, 1,seq_director_pk.CURRVAL);

INSERT INTO director_tecnico (director_id, nombre_completo, numero_contrato, fecha_ingreso, fecha_salida, motivo_salida)
VALUES (seq_director_pk.NEXTVAL, 'Daniela Ríos', 56234, TO_DATE('2021-01-01', 'YYYY-MM-DD'), TO_DATE('2021-12-31', 'YYYY-MM-DD'), 'Negligencia');
INSERT INTO historico_director(historico_director_id, equipo_id, director_id)
VALUES (seq_historico_director_pk.NEXTVAL, 2,seq_director_pk.CURRVAL);

INSERT INTO director_tecnico (director_id, nombre_completo, numero_contrato, fecha_ingreso, fecha_salida, motivo_salida)
VALUES (seq_director_pk.NEXTVAL, 'Javier Fernández', 97321, TO_DATE('2021-01-01', 'YYYY-MM-DD'), TO_DATE('2021-12-31', 'YYYY-MM-DD'), 'Negligencia');
INSERT INTO historico_director(historico_director_id, equipo_id, director_id)
VALUES (seq_historico_director_pk.NEXTVAL, 3,seq_director_pk.CURRVAL);

INSERT INTO director_tecnico (director_id, nombre_completo, numero_contrato, fecha_ingreso, fecha_salida, motivo_salida)
VALUES (seq_director_pk.NEXTVAL, 'Carolina Silva', 42058, TO_DATE('2021-01-01', 'YYYY-MM-DD'), TO_DATE('2021-12-31', 'YYYY-MM-DD'), 'Negligencia');
INSERT INTO historico_director(historico_director_id, equipo_id, director_id)
VALUES (seq_historico_director_pk.NEXTVAL, 4,seq_director_pk.CURRVAL);

INSERT INTO director_tecnico (director_id, nombre_completo, numero_contrato, fecha_ingreso, fecha_salida, motivo_salida)
VALUES (seq_director_pk.NEXTVAL, 'Marcelo Gómez', 83749, TO_DATE('2021-01-01', 'YYYY-MM-DD'), TO_DATE('2021-12-31', 'YYYY-MM-DD'), 'Negligencia');
INSERT INTO historico_director(historico_director_id, equipo_id, director_id)
VALUES (seq_historico_director_pk.NEXTVAL, 5,seq_director_pk.CURRVAL);

INSERT INTO director_tecnico (director_id, nombre_completo, numero_contrato, fecha_ingreso, fecha_salida, motivo_salida)
VALUES (seq_director_pk.NEXTVAL, 'Valentina Vargas', 21546, TO_DATE('2022-01-01', 'YYYY-MM-DD'), TO_DATE('2021-12-31', 'YYYY-MM-DD'), 'Negligencia');
INSERT INTO historico_director(historico_director_id, equipo_id, director_id)
VALUES (seq_historico_director_pk.NEXTVAL, 6,seq_director_pk.CURRVAL);

INSERT INTO director_tecnico (director_id, nombre_completo, numero_contrato, fecha_ingreso, fecha_salida, motivo_salida)
VALUES (seq_director_pk.NEXTVAL, 'Andrés Morales', 65432, TO_DATE('2022-01-01', 'YYYY-MM-DD'), TO_DATE('2021-12-31', 'YYYY-MM-DD'), 'Negligencia');
INSERT INTO historico_director(historico_director_id, equipo_id, director_id)
VALUES (seq_historico_director_pk.NEXTVAL, 7,seq_director_pk.CURRVAL);

-- J U G A D O R E S
INSERT INTO jugador (jugador_id, nombre_jugador, numero_jugador, apellido_paterno, apellido_materno, fecha_nacimiento, equipo_id, pais_id)
VALUES (seq_jugador_pk.NEXTVAL, 'Juan', seq_numero_jugador.NEXTVAL, 'Gómez', 'López', TO_DATE('1994-01-15', 'YYYY-MM-DD'), 1, 7);

INSERT INTO jugador (jugador_id, nombre_jugador, numero_jugador, apellido_paterno, apellido_materno, fecha_nacimiento, equipo_id, pais_id)
VALUES (seq_jugador_pk.NEXTVAL, 'Pedro', seq_numero_jugador.NEXTVAL, 'Hernández', 'Martínez', TO_DATE('1993-05-28', 'YYYY-MM-DD'), 2, 6);

INSERT INTO jugador (jugador_id, nombre_jugador, numero_jugador, apellido_paterno, apellido_materno, fecha_nacimiento, equipo_id, pais_id)
VALUES (seq_jugador_pk.NEXTVAL, 'Luis', seq_numero_jugador.NEXTVAL, 'Rodríguez', 'García', TO_DATE('1992-09-10', 'YYYY-MM-DD'), 3, 6);

INSERT INTO jugador (jugador_id, nombre_jugador, numero_jugador, apellido_paterno, apellido_materno, fecha_nacimiento, equipo_id, pais_id)
VALUES (seq_jugador_pk.NEXTVAL, 'Carlos', seq_numero_jugador.NEXTVAL, 'López', 'González', TO_DATE('1991-02-22', 'YYYY-MM-DD'), 4, 5);

INSERT INTO jugador (jugador_id, nombre_jugador, numero_jugador, apellido_paterno, apellido_materno, fecha_nacimiento, equipo_id, pais_id)
VALUES (seq_jugador_pk.NEXTVAL, 'Jorge', seq_numero_jugador.NEXTVAL, 'García', 'Fernández', TO_DATE('1990-06-08', 'YYYY-MM-DD'), 5, 4);

INSERT INTO jugador (jugador_id, nombre_jugador, numero_jugador, apellido_paterno, apellido_materno, fecha_nacimiento, equipo_id, pais_id)
VALUES (seq_jugador_pk.NEXTVAL, 'Andrés', seq_numero_jugador.NEXTVAL, 'Martínez', 'Hernández', TO_DATE('1993-11-17', 'YYYY-MM-DD'), 6, 3);

INSERT INTO jugador (jugador_id, nombre_jugador, numero_jugador, apellido_paterno, apellido_materno, fecha_nacimiento, equipo_id, pais_id)
VALUES (seq_jugador_pk.NEXTVAL, 'Alejandro', seq_numero_jugador.NEXTVAL, 'Vargas', 'Pérez', TO_DATE('1992-04-29', 'YYYY-MM-DD'), 7, 2);

INSERT INTO jugador (jugador_id, nombre_jugador, numero_jugador, apellido_paterno, apellido_materno, fecha_nacimiento, equipo_id, pais_id)
VALUES (seq_jugador_pk.NEXTVAL, 'Mario', seq_numero_jugador.NEXTVAL, 'Silva', 'Ramírez', TO_DATE('1994-07-03', 'YYYY-MM-DD'), 7, 1);

-- L O G O S
INSERT INTO logo (equipo_id, imagen, formato)
VALUES (1, EMPTY_BLOB(), 'png');

INSERT INTO logo (equipo_id, imagen, formato)
VALUES (2, EMPTY_BLOB(), 'jpg');

INSERT INTO logo (equipo_id, imagen, formato)
VALUES (3, EMPTY_BLOB(), 'jpg');

INSERT INTO logo (equipo_id, imagen, formato)
VALUES (4, EMPTY_BLOB(), 'svg');

INSERT INTO logo (equipo_id, imagen, formato)
VALUES (5, EMPTY_BLOB(), 'png');

INSERT INTO logo (equipo_id, imagen, formato)
VALUES (6, EMPTY_BLOB(), 'svg');

INSERT INTO logo (equipo_id, imagen, formato)
VALUES (7, EMPTY_BLOB(), 'jpg');

-- T E M P O R A D A S
INSERT INTO temporada (temporada_id, fecha_inicio, fecha_fin, anio_temporada, primer_lugar, segundo_lugar)
VALUES (seq_temporada_pk.NEXTVAL, TO_DATE('2015-01-01', 'YYYY-MM-DD'), TO_DATE('2015-12-31', 'YYYY-MM-DD'), 2015, 1, 2);

INSERT INTO temporada (temporada_id, fecha_inicio, fecha_fin, anio_temporada, primer_lugar, segundo_lugar)
VALUES (seq_temporada_pk.NEXTVAL, TO_DATE('2016-01-01', 'YYYY-MM-DD'), TO_DATE('2016-12-31', 'YYYY-MM-DD'), 2016, 3, 4);

INSERT INTO temporada (temporada_id, fecha_inicio, fecha_fin, anio_temporada, primer_lugar, segundo_lugar)
VALUES (seq_temporada_pk.NEXTVAL, TO_DATE('2017-01-01', 'YYYY-MM-DD'), TO_DATE('2017-12-31', 'YYYY-MM-DD'), 2017, 5, 6);

INSERT INTO temporada (temporada_id, fecha_inicio, fecha_fin, anio_temporada, primer_lugar, segundo_lugar)
VALUES (seq_temporada_pk.NEXTVAL, TO_DATE('2018-01-01', 'YYYY-MM-DD'), TO_DATE('2018-12-31', 'YYYY-MM-DD'), 2018, 7, 1);

INSERT INTO temporada (temporada_id, fecha_inicio, fecha_fin, anio_temporada, primer_lugar, segundo_lugar)
VALUES (seq_temporada_pk.NEXTVAL, TO_DATE('2019-01-01', 'YYYY-MM-DD'), TO_DATE('2019-12-31', 'YYYY-MM-DD'), 2019, 2, 6);

INSERT INTO temporada (temporada_id, fecha_inicio, fecha_fin, anio_temporada, primer_lugar, segundo_lugar)
VALUES (seq_temporada_pk.NEXTVAL, TO_DATE('2020-01-01', 'YYYY-MM-DD'), TO_DATE('2020-12-31', 'YYYY-MM-DD'), 2020, 1, 4);

INSERT INTO temporada (temporada_id, fecha_inicio, fecha_fin, anio_temporada, primer_lugar, segundo_lugar)
VALUES (seq_temporada_pk.NEXTVAL, TO_DATE('2021-01-01', 'YYYY-MM-DD'), TO_DATE('2021-12-31', 'YYYY-MM-DD'), 2021, 7, 3);

-- P A R T I D O S
INSERT INTO partido(partido_id, fecha_hora_partido, equipo_a, equipo_b, sede_id, temporada_id)
VALUES ('partido001',TO_DATE('2015-03-17 19:00:00', 'YYYY-MM-DD HH24:MI:SS'),1, 2, 4, 1);

INSERT INTO partido(partido_id, fecha_hora_partido, equipo_a, equipo_b, sede_id, temporada_id)
VALUES ('partido002',TO_DATE('2016-03-17 20:00:00', 'YYYY-MM-DD HH24:MI:SS'),3, 6, 3, 2);

INSERT INTO partido(partido_id, fecha_hora_partido, equipo_a, equipo_b, sede_id, temporada_id)
VALUES ('partido003',TO_DATE('2017-03-17 16:00:00', 'YYYY-MM-DD HH24:MI:SS'),5, 1, 2, 3);

INSERT INTO partido(partido_id, fecha_hora_partido, equipo_a, equipo_b, sede_id, temporada_id)
VALUES ('partido004',TO_DATE('2018-03-17 19:00:00', 'YYYY-MM-DD HH24:MI:SS'),2, 4, 5, 4);

INSERT INTO partido(partido_id, fecha_hora_partido, equipo_a, equipo_b, sede_id, temporada_id)
VALUES ('partido005',TO_DATE('2019-03-17 20:00:00', 'YYYY-MM-DD HH24:MI:SS'),1, 2, 7, 5);

INSERT INTO partido(partido_id, fecha_hora_partido, equipo_a, equipo_b, sede_id, temporada_id)
VALUES ('partido006',TO_DATE('2020-03-17 18:00:00', 'YYYY-MM-DD HH24:MI:SS'),3, 6, 1, 6);

INSERT INTO partido(partido_id, fecha_hora_partido, equipo_a, equipo_b, sede_id, temporada_id)
VALUES ('partido007',TO_DATE('2021-03-17 20:00:00', 'YYYY-MM-DD HH24:MI:SS'),4, 7, 6, 7);

-- B O L E T O S
INSERT INTO boleto (partido_id, folio, asiento, precio)
VALUES ('partido001', '0000001', 'A1', 100);

INSERT INTO boleto (partido_id, folio, asiento, precio)
VALUES ('partido002', '0000002', 'B2', 200);

INSERT INTO boleto (partido_id, folio, asiento, precio)
VALUES ('partido003', '0000003', 'C3', 300);

INSERT INTO boleto (partido_id, folio, asiento, precio)
VALUES ('partido004', '0000004', 'D4', 400);

INSERT INTO boleto (partido_id, folio, asiento, precio)
VALUES ('partido003', '0000005', 'E5', 300);

INSERT INTO boleto (partido_id, folio, asiento, precio)
VALUES ('partido002', '0000006', 'F6', 200);

INSERT INTO boleto (partido_id, folio, asiento, precio)
VALUES ('partido001', '0000007', 'G7', 100);