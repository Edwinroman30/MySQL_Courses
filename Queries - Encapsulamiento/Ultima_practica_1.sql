USE sakila;

/*1) Cree toda la data de las peliculas, inventarios y actores en un vista (view)*/
CREATE VIEW DATA_FIA AS(
SELECT inventory.store_id, inventory.inventory_id, film.title, film.description, film.release_year, film.language_id,
    film.original_language_id,film.rental_duration, film.rental_rate, film.length, film.replacement_cost, film.rating, film.special_features, 
	film.film_id, actor.actor_id, actor.first_name, actor.last_name
	from film_actor
	INNER JOIN film on film_actor.film_id = film.film_id
	INNER JOIN inventory on inventory.film_id = film.film_id
	INNER JOIN actor on actor.actor_id = film_actor.actor_id
    
    group by film.film_id,
    inventory.inventory_id, inventory.store_id, actor.actor_id
);

SELECT *
FROM DATA_FIA;
