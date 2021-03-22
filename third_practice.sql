USE sakila; 

/*Practica 3: Group by y métricas.

1) 1ro Presente las películas rentadas con la cantidad de veces que han sido rentadas, la cantidad
de clientes que la han rentado, así como el dinero recaudado por la renta.
*/

SELECT count(inventory.film_id) as 'Cantidad de Rentas', film.title as 'Título', count(rental.customer_id) as 'Clientes que han rentado', sum(payment.amount) as 'Dinero recaudado'
FROM inventory
INNER JOIN film on film.film_id = inventory.film_id
INNER JOIN rental on rental.inventory_id = inventory.inventory_id
INNER JOIN customer on customer.customer_id = rental.customer_id
INNER JOIN payment on payment.rental_id = rental.rental_id
group by (film.title)
limit 0,10;



/*2) 2do Presente los clientes que han rentado películas con el cantidad de veces que han sido
rentadas, la cantidad de películas que la han rentado, así como el dinero invertido por la renta.*/

Select distinct customer.first_name, count(inventory.film_id)  as 'Cantidad de Rentas', sum(payment.amount) as 'Dinero Invertido'
from customer
Inner join rental on rental.customer_id = customer.customer_id
INNER join inventory on inventory.inventory_id = rental.inventory_id
INNER join film on film.film_id = inventory.film_id
inner Join payment on payment.rental_id = rental.rental_id
group by (customer.first_name)
order by 3 desc
limit 0,10;

/*3) Presente las estadísticas de renta por película y por categoría.*/

SELECT category.name, min(inventory.film_id)  as 'Mínimo de Rentas', avg(inventory.film_id)  as 'Promedio de Rentas', max(inventory.film_id)  as 'Máximo de Rentas' ,count(inventory.film_id)  as 'Total de Rentas'
FROM film_category 
INNER JOIN category on category.category_id = film_category.category_id
INNER JOIN film on film.film_id = film_category.film_id
INNER JOIN	inventory on inventory.film_id = film.film_id
INNER JOIN rental on rental.inventory_id = inventory.inventory_id
group by (category.name)
order by 4 desc
limit 0,10; 


/* 4) Presentar la renta por Store (tienda) sujeto a que el dinero pagado (recaudado por la tienda)
sea mayor que 5000.*/

SELECT inventory.store_id, concat('Tienda N.',inventory.store_id) as 'Tiendas', sum(payment.amount) as 'Dinero Recaudado'
FROM film
INNER JOIN	inventory on inventory.film_id = film.film_id
INNER JOIN rental on rental.inventory_id = inventory.inventory_id
INNER JOIN payment on payment.rental_id = rental.rental_id
INNER JOIN staff on staff.staff_id = payment.staff_id
INNER JOIN store on store.store_id = inventory.store_id
group by (inventory.store_id)
limit 0,10;



/*5) Presente la película y su cantidad de elenco, asi como el dinero que estas han acumulado.*/

SELECT film_actor.film_id,film.title as 'Película', count(distinct( film_actor.actor_id)) as 'Nu. de Elenco', sum(payment.amount) as 'Dinero Acumulado'
FROM rental
INNER JOIN inventory on inventory.inventory_id = rental.inventory_id
INNER JOIN film on inventory.film_id = film.film_id
INNER JOIN payment on payment.rental_id = rental.rental_id
INNER JOIN film_actor on film_actor.film_id = film.film_id
INNER JOIN actor on actor.actor_id = film_actor.actor_id
INNER JOIN staff on staff.staff_id = payment.staff_id
INNER JOIN store on store.store_id = inventory.store_id
INNER JOIN customer on customer.customer_id = rental.customer_id
group by film_actor.film_id
limit 0,10;


