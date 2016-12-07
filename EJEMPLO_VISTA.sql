--------------------------------------------------------
-- Archivo creado  - miércoles-diciembre-07-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for View JUGADORES_VIEW
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "HR"."JUGADORES_VIEW" ("NOMBREJUGADOR", "NOMBREEQUIPO") AS 
  SELECT
j.NOMBRE,
e.NOMBRE
FROM
EQUIPOS e,
JUGADORES j
WHERE e.EQUIPO_ID = j.EQUIPO_ID
AND j.SALARIO > 2000
WITH READ ONLY;
