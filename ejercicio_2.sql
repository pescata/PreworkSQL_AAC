/* Ejercicio 2 */
/* Nivel de dificultad: Fácil*/

/*
1. Crea una base de datos llamada "MiBaseDeDatos".
*/
CREATE DATABASE MiBaseDeDatos 
/*
2. Crea una tabla llamada "Usuarios" con las columnas: "id" (entero, clave
primaria), "nombre" (texto) y "edad" (entero).
*/
CREATE TABLE IF NOT EXISTS public.usuarios (
	id INT PRIMARY KEY,
	nombre VARCHAR(255),
	edad INT
)
/*
3. Inserta dos registros en la tabla "Usuarios".
*/
INSERT INTO public.usuarios (id,nombre,edad)
VALUES 
(1,'enrique',56),
(2,'rafael',37)
/*
4. Actualiza la edad de un usuario en la tabla "Usuarios".
*/
UPDATE public.usuarios
SET edad = 41
WHERE id = 1
/*
5. Elimina un usuario de la tabla "Usuarios".
*/
DELETE FROM public.usuarios
WHERE id = 1

/* Nivel de dificultad: Moderado */

/*
1. Crea una tabla llamada "Ciudades" con las columnas: "id" (entero, clave
primaria), "nombre" (texto) y "pais" (texto).
*/
CREATE TABLE IF  NOT EXISTS public.ciudades (
	id INT PRIMARY KEY,
	nombre VARCHAR(255),
	pais VARCHAR(255)
)
/*
2. Inserta al menos tres registros en la tabla "Ciudades".
*/
INSERT INTO public.ciudades (id,nombre,pais)
VALUES 
(1,'vigo','españa'),
(2,'cape town','sudáfrica'),
(3,'londres','inglaterra')
/*
3. Crea una foreign key en la tabla "Usuarios" que se relacione con la columna "id"
de la tabla "Ciudades".
*/
ALTER TABLE public.usuarios
ADD id_ciudad INT

ALTER TABLE public.usuarios
ADD CONSTRAINT FK_ciudad_id FOREIGN KEY (id_ciudad) REFERENCES public.ciudades(id)
/*
4. Realiza una consulta que muestre los nombres de los usuarios junto con el
nombre de su ciudad y país (utiliza un LEFT JOIN).
*/
SELECT u.nombre as usuario, c.nombre as ciudad, c.pais FROM public.usuarios u
LEFT JOIN public.ciudades c
ON u.id_ciudad = c.id
/*
5. Realiza una consulta que muestre solo los usuarios que tienen una ciudad
asociada (utiliza un INNER JOIN).
*/
SELECT u.nombre as usuario, c.nombre as ciudad, c.pais FROM public.usuarios u
INNER JOIN public.ciudades c
ON u.id_ciudad = c.id