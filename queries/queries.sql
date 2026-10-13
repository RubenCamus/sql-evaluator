SELECT nombre FROM producto;
SELECT nombre, precio FROM producto;
SELECT * FROM producto;
SELECT nombre, precio"precio_eur", precio"precio_usd" FROM producto;
SELECT nombre "nom del producte", precio"euros", ROUND(precio*1.1, 2)"dòlars" FROM producto;
SELECT upper(nombre) as nombre, precio FROM producto;
SELECT lower(nombre) as nombre, precio FROM producto;
SELECT nombre, upper(substring(nombre, 1, 2)) "iniciales" FROM fabricante; 
SELECT nombre, ROUND(precio) as precio FROM producto;
SELECT nombre, truncate(precio, 0) as "precio truncado" FROM producto;
SELECT codigo_fabricante FROM producto;
SELECT DISTINCT codigo_fabricante FROM producto;
SELECT nombre FROM fabricante ORDER BY nombre ASC;
SELECT nombre FROM fabricante ORDER BY nombre DESC;
SELECT nombre, precio FROM producto ORDER BY nombre ASC, precio DESC;
SELECT * FROM fabricante LIMIT 5;
SELECT * FROM fabricante LIMIT 2 OFFSET 3;
SELECT nombre, precio FROM producto ORDER BY precio ASC LIMIT 1;
SELECT nombre, precio FROM producto ORDER BY precio DESC LIMIT 1;
SELECT nombre FROM producto WHERE codigo_fabricante = 2;
SELECT producto.nombre, producto.precio, fabricante.nombre AS "nombre del fabricante" FROM producto INNER JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo;
SELECT producto.nombre, producto.precio, fabricante.nombre AS "nombre del fabricante" FROM producto INNER JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo ORDER BY fabricante.nombre ASC;
SELECT producto.codigo, producto.nombre, fabricante.codigo AS "codigo fabricante" , fabricante.nombre AS "nombre fabricante" FROM producto INNER JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo;	
SELECT producto.nombre, producto.precio, fabricante.nombre as fabricant FROM producto INNER JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo ORDER BY precio ASC LIMIT 1;
SELECT producto.nombre, producto.precio, fabricante.nombre as fabricante FROM producto INNER JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo ORDER BY precio DESC LIMIT 1;
SELECT producto.nombre, producto.precio FROM producto INNER JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo WHERE fabricante.nombre="Lenovo";
SELECT producto.nombre, producto.precio FROM producto INNER JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo WHERE fabricante.nombre="Crucial" AND producto.precio>200;
SELECT producto.nombre, producto.precio, fabricante.nombre AS "fabricante" FROM producto INNER JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo WHERE fabricante.nombre = "Asus" OR fabricante.nombre = "Hewlett-Packard" OR fabricante.nombre = "Seagate";
SELECT producto.nombre, producto.precio, fabricante.nombre AS "fabricante" FROM producto INNER JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo WHERE fabricante.nombre IN ("Asus", "Hewlett-Packard","Seagate");
SELECT producto.nombre, producto.precio, fabricante.nombre AS "fabricante" FROM producto INNER JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo WHERE substring(fabricante.nombre, -1, 1)="e";
SELECT producto.nombre, producto.precio, fabricante.nombre AS "fabricante" FROM producto INNER JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo WHERE fabricante.nombre LIKE "%w%";
SELECT producto.nombre, producto.precio, fabricante.nombre AS "fabricante" FROM producto INNER JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo WHERE producto.precio >= 180 ORDER BY producto.precio DESC, producto.nombre ASC;
SELECT DISTINCT fabricante.codigo, fabricante.nombre as fabricante FROM fabricante INNER JOIN producto ON producto.codigo_fabricante = fabricante.codigo WHERE producto.codigo_fabricante IS NOT NULL;
SELECT fabricante.nombre as fabricante, producto.nombre as producto FROM fabricante LEFT JOIN producto ON fabricante.codigo = producto.codigo_fabricante;
-- 35. Retorna un llistat on només apareguin els noms dels fabricants (fabricante) que no tenen cap producte associat.


-- 36. Retorna tots els productes del fabricant Lenovo. (Sense utilitzar INNER JOIN).


-- 37. Retorna totes les dades dels productes que tenen el mateix preu que el producte més car del fabricant Lenovo. (Sense usar INNER JOIN).


-- 38. Llista el nom del producte més car del fabricant Lenovo.


-- 39. Llista el nom del producte més barat del fabricant Hewlett-Packard.


-- 40. Retorna tots els productes de la base de dades que tenen un preu major o igual al producte més car del fabricant Lenovo.


-- 41. Llista tots els productes del fabricant Asus que tenen un preu superior al preu mitjà de tots els seus productes.

