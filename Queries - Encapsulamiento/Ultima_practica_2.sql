USE sakila;

/*2) Cree un procedure que actualice el promedio de renta (rental_rate) en la tabla film, basado 
en promedio de renta mensual de dicha pelicula. Recibe como parametro el filmid y un rango de fecha.*/


CREATE PROCEDURE `sp_Actualizar_rental` (in v_film_id smallint(5), in v_date date)
BEGIN
    UPDATE film
    SET film.rental_rate = 2.00
    where film.film_id = v_film_id and exists(
		select '1'
        FROM rental
		WHERE month(rental.rental_date) = month(v_date))
END;    

/*PARA EJECUTAR*/
call sp_Actualizar_rental(1, '2005/07/30');

/* PARA CONSULTAR QUE TODO FUE BIEN*/
SELECT *
from film
where film.film_id = 1;

SELECT *
FROM rental
INNER JOIN inventory on inventory.inventory_id = rental.inventory_id
where month(rental_date) = 7 and day(rental_date) = 30;
