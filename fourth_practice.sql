USE sakila;

 /*1) Presente las peliculas con el 1r actor y 2do actor. sujeto a que se hayan
rentado en mayo de 2005 y no se hayan rentado en junio.*/

/*Solución del problema 1, en mí Solución aunque no pude organizarla de 2 en autores

SELECT  film.film_id, actor.first_name as 'Actor', monthname(rental_date) as 'Mes', year(rental_date) as 'Año'
	FROM actor
    
INNER JOIN film_actor on  film_actor.actor_id = actor.actor_id
INNER join film on film.film_id = film_actor.film_id
INNER join inventory on inventory.film_id = film.film_id
INNER join rental on rental.inventory_id = inventory.inventory_id

group by rental_date, film.film_id, actor.first_name
having year(rental_date) in (select  year(rental_date) from rental
WHERE monthname(rental_date) = 'May' and  year(rental_date) = 2005);



SELECT 
    CONCAT(primer_actor.actor_id,
            '-',
            actor.first_name,
            ' ',
            actor.last_name) primer_actor,
    (SELECT 
            MIN(film_actor.actor_id) actor_id
        FROM
            film_actor
        WHERE
            film_actor.actor_id != primer_actor.actor_id
                AND film_actor.film_id = film.film_id) second_actor,
    film.*
FROM
    film
        INNER JOIN
    (SELECT 
        film_id, MIN(actor_id) actor_id
    FROM
        film_actor
    GROUP BY film_id) primer_actor ON primer_actor.film_id = film.film_id
        INNER JOIN
    actor ON actor.actor_id = primer_actor.actor_id
WHERE
    film.film_id != 23
        AND EXISTS( SELECT 
            '1'
        FROM
            rental
                INNER JOIN
            inventory ON inventory.inventory_id = rental.inventory_id
        WHERE
            inventory.film_id = film.film_id
                AND YEAR(rental.rental_date) = 2005);
*/


/* 2) Presente el crecimiento de la cantidad de peliculas rentadas por tienda, 
e igual el volumen de dinero reacudado, entre mayo y junio de 2005.

SELECT inventory.store_id, count(inventory.inventory_id) as 'Cantida de Pelicula Rentadas por Tiendas',
sum(payment.amount) as 'Dinero Recaudado' 
from rental
	INNER JOIN inventory on rental.inventory_id = inventory.inventory_id
	INNER JOIN film on inventory.film_id = film.film_id
	INNER JOIN payment on payment.rental_id = rental.rental_id
	INNER JOIN staff on staff.staff_id = payment.staff_id
    INNER JOIN store on store.store_id = inventory.store_id
where rental.rental_id in
		(Select rental.rental_id from rental where rental.rental_date between '2005/04/01' and '2005/05/30')
group by  inventory.store_id;
*/




/*3) Presente todas las peliculas con su categorias rentadas en mayo 2005, 
excluyendo las que se rentaron en junio de este grupo.*/

SELECT  film.title as 'Título', category.name as 'Categoria',  monthname(rental.rental_date) as 'Mes', year(rental.rental_date) as 'Año'
	
    FROM rental
    
			INNER JOIN inventory on rental.inventory_id = inventory.inventory_id
            INNER JOIN film on film.film_id = inventory.film_id 
			INNER JOIN film_category on film.film_id = film_category.film_id
			INNER JOIN category on category.category_id = film_category.category_id
            
WHERE rental.rental_id in
		(Select rental.rental_id from rental 
        where rental.rental_date between '2005/04/01' and '2005/05/30')
GROUP BY  rental.rental_date, film.title, category.name;
