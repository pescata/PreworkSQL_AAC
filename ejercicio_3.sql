/* Ejercicio 3*/
/* Nivel de dificultad: Difícil*/

/*
1. Crea una tabla llamada "Productos" con las columnas: "id" (entero, clave
primaria), "nombre" (texto) y "precio" (numérico).
*/
CREATE TABLE IF NOT EXISTS public.productos(
	id INT PRIMARY KEY,
	nombre VARCHAR(255),
	precio DECIMAL
)
/*
2. Inserta al menos cinco registros en la tabla "Productos".
*/
INSERT INTO public.productos (id,nombre,precio)
VALUES 
(6,'Calcetines',7.5),
(7,'Cinturón',42),
(8,'Toalla',25),
(9,'Chanclas',20),
(10,'Chaqueta',50)
/*
3. Actualiza el precio de un producto en la tabla "Productos".
*/
UPDATE public.productos
SET precio=10
WHERE id=6
/*
4. Elimina un producto de la tabla "Productos".
*/
DELETE FROM public.productos
WHERE id=10
/*
5. Realiza una consulta que muestre los nombres de los usuarios junto con los
nombres de los productos que han comprado (utiliza un INNER JOIN con la
tabla "Productos").
*/
SELECT 
c.nombre as usuarios,
p.nombre as productos
FROM public.clientes c
LEFT JOIN public.pedidos
ON c.id = public.pedidos.cliente_id
INNER JOIN public.productos p
ON public.pedidos.producto = p.nombre