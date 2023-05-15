-- @Autor: Alan Michel Carrasco Meza
-- @Fecha de entrega: 14/mayo/2023

-- 1. Obtención de todos los representantes legales y sus respectivos nombres
SELECT representante_id, nombre_completo FROM representante_legal;

-- 2. Obtención de los directores tecnicos de cada equipo
SELECT equipo_id, nombre_equipo FROM equipo WHERE director_id IS NOT NULL;

-- 3. Obtener las sedes y sus capacidades ordenadas de forma descendente por capacidad
SELECT sede_id, nombre, capacidad FROM sede_catalogo ORDER BY capacidad;

-- 4. Obtención de los jugadores que pertenecen a un equipo en particular
SELECT jugador_id, nombre_jugador FROM jugador WHERE equipo_id = 1;

-- 5. Obtener los partidos jugados en una temporada
SELECT partido_id, fecha_hora_partido FROM partido WHERE temporada_id = 1;

-- 6. Obtención de la cantidad de boletos vendidos para un partido especifico
SELECT COUNT(*) AS total_boletos FROM boleto WHERE partido_id = 'partido001';

-- 7. Mostrar los jugadores junto con el nombre de su equipo y país
SELECT jugador.*, equipo.nombre_equipo, pais_catalogo.nombre AS nombre_pais FROM jugador
JOIN equipo ON jugador.equipo_id = equipo.equipo_id
JOIN pais_catalogo ON jugador.pais_id = pais_catalogo.pais_id;

-- 8. Obtención de todos los partidos junto con la sede y temporada a la que pertenecen
SELECT partido.*, sede_catalogo.nombre AS nombre_sede, temporada.anio_temporada FROM partido
JOIN sede_catalogo ON partido.sede_id = sede_catalogo.sede_id
JOIN temporada ON partido.temporada_id = temporada.temporada_id;

-- 9. Mostrar todas las temporadas junto con el nombre de los equipos que obtuvieron el primer y segundo lugar
SELECT temporada.*, equipo1.nombre_equipo AS primer_lugar, equipo2.nombre_equipo AS segundo_lugar FROM temporada
JOIN equipo equipo1 ON temporada.primer_lugar = equipo1.equipo_id
JOIN equipo equipo2 ON temporada.segundo_lugar = equipo2.equipo_id;

-- 10. Mostrar todos los equipos junto con sus directores tecnicos actuales
SELECT equipo.nombre_equipo, director_tecnico.nombre_completo AS director_actual FROM equipo
JOIN director_tecnico ON equipo.director_id = director_tecnico.director_id;

-- 11. Obtencion de los logos de los equipos junto con sus nombres y el formato de la imagen
SELECT equipo.nombre_equipo, logo.imagen, logo.formato FROM equipo
JOIN logo ON equipo.equipo_id = logo.equipo_id;

-- 12. Obtencion todos los partidos ocurridos en un intervalo de tiempo
SELECT partido_id, fecha_hora_partido FROM partido
WHERE fecha_hora_partido BETWEEN TO_DATE('2015-01-01', 'YYYY-MM-DD') AND TO_DATE('2016-06-30', 'YYYY-MM-DD');

-- 13. Obtencion de la capacidad total entre todos los estadios
SELECT SUM(capacidad) AS capacidad_total FROM sede_catalogo;

-- 14. Obtener los jugadores de un pais ordenados alfabeticamente por nombre
SELECT jugador_id, nombre_jugador FROM jugador WHERE pais_id = 6 ORDER BY nombre_jugador;

-- 15. Obtencion del historial de directores junto con fecha de ingreso y salida
SELECT nombre_completo, fecha_ingreso, fecha_salida FROM director_tecnico;
