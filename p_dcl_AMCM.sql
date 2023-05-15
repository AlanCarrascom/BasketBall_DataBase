-- @Autor: Alan Michel Carrasco Meza
-- @Fecha de entrega: 14/05/2023 
-- Curso Prebecario Base de Datos 22-2

CREATE USER admin_proy IDENTIFIED BY admin;
CREATE USER invitado IDENTIFIED BY invitado;

CREATE ROLE rol_admin;
CREATE ROLE rol_inv;

GRANT CREATE SESSION, CREATE TABLE, CREATE VIEW, CREATE SEQUENCE, CREATE USER TO rol_admin;
GRANT CREATE SESSION, CREATE SYNONYM TO rol_inv;

GRANT rol_admin TO admin_pro;
GRANT rol_inv TO invitado;

DROP USER admin_proy CASCADE;
DROP USER invitado CASCADE;

DROP ROLE rol_admin;
DROP ROLE rol_inv;
