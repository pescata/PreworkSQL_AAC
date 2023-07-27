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
2. Inserta al menos tres registros en la tabla "Ciudades".
3. Crea una foreign key en la tabla "Usuarios" que se relacione con la columna "id"
de la tabla "Ciudades".
4. Realiza una consulta que muestre los nombres de los usuarios junto con el
nombre de su ciudad y país (utiliza un LEFT JOIN).
5. Realiza una consulta que muestre solo los usuarios que tienen una ciudad
asociada (utiliza un INNER JOIN).
*/